<?php
namespace riotDecode\raf;

class RiotArchiveFile implements \IteratorAggregate, \Countable {
    protected $path;

	protected $magicNumber;

	protected $version;

	protected $managerIndex;

	protected $files = [];

	public function __construct($path) {
		$this->path = $path;
	}

	protected function parseFile() {
		if($this->magicNumber === null) {
			$descriptorHandle = @fopen($this->path, 'r') or die('COULD NOT OPEN RIOT ARCHIVE FILE: ' . $path);

			$this->magicNumber  = unpack('L', fread($descriptorHandle, 4))[1];
			$this->version      = unpack('L', fread($descriptorHandle, 4))[1];
			$this->managerIndex = unpack('L', fread($descriptorHandle, 4))[1];
			$fileListOffset     = unpack('L', fread($descriptorHandle, 4))[1];
			$pathListOffset     = unpack('L', fread($descriptorHandle, 4))[1];

			$pathList = [];
			fseek($descriptorHandle, $pathListOffset);
			$pathListSize  = unpack('L', fread($descriptorHandle, 4))[1];
	        $pathListCount = unpack('L', fread($descriptorHandle, 4))[1];
	        for($i = 0; $i < $pathListCount; $i++) {
	        	fseek($descriptorHandle, $pathListOffset + $i * 8 + 8);
	        	$pathOffset = unpack('L', fread($descriptorHandle, 4))[1];
	        	$pathLength = unpack('L', fread($descriptorHandle, 4))[1] - 1;

				fseek($descriptorHandle, $pathListOffset + $pathOffset);
				$pathString = unpack('A' . $pathLength, fread($descriptorHandle, $pathLength))[1];

	            $pathList[] = $pathString;
	        }

	        fseek($descriptorHandle, $fileListOffset);
			$numberOfEntries = unpack('L', fread($descriptorHandle, 4))[1];
			for($i = 0; $i < $numberOfEntries; $i++) {
				$pathHash      = unpack('L', fread($descriptorHandle, 4))[1];
	        	$dataOffset    = unpack('L', fread($descriptorHandle, 4))[1];
	        	$dataSize      = unpack('L', fread($descriptorHandle, 4))[1];
	        	$pathListIndex = unpack('L', fread($descriptorHandle, 4))[1];

	        	$this->files[$pathList[$pathListIndex]] = new RiotArchiveFileEntry($this, $pathList[$pathListIndex], $dataSize, $dataOffset, $pathHash);
			}

			fclose($descriptorHandle);

			$this->dataFileHandle = @fopen($this->path . '.dat', 'r') or die('COULD NOT OPEN DATA FILE: ' . $this->path . '.dat');
		}
	}

	public function __destruct() {
		if($this->magicNumber !== null) {
			fclose($this->dataFileHandle);
		}
	}

	public function getPath() {
		return $this->path;
	}

	public function getMagicNumber() {
		$this->parseFile();

		return $this->magicNumber;
	}
	
	public function getVersion() {
		$this->parseFile();

		return $this->version;
	}

	public function getManagerIndex() {
		$this->parseFile();

		return $this->managerIndex;
	}

	public function getFiles($regex = null) {
		$this->parseFile();

		if($regex === null) {
			return $this->files;
		} else {
			if($regex[0] != $regex[strlen($regex) - 1]) {
				$regex = '~' . strtr($regex, [
					'.' => '\\.',
					'*' => '.*'
				]) . '~';
			}

			$result = [];
			foreach($this->files as $key => $value) {
				if(preg_matcH($regex, $key)) {
					$result[$key] = $value;
				}
			}

			return $result;
		}
	}

	public function getFile($filePath) {
		$this->parseFile();

		return $this->files[$filePath];
	}

	public function extract($targetDirectory) {
		$this->parseFile();

		$targetDirectory = preg_replace("![\\\\//]+$!", "", $targetDirectory);

		foreach($this as $riotArchiveFileEntry) {
			if(!file_exists($dirName = dirname($targetDirectory . DIRECTORY_SEPARATOR . $riotArchiveFileEntry->getPath()))) {
				mkdir($dirName, 0777, true) or die('COULD NOT CREATE DIRECTORY: ' . $dirName);
			}

			$file = @fopen($targetDirectory . DIRECTORY_SEPARATOR . $riotArchiveFileEntry->getPath(), 'w+') or die('COULD NOT CREATE FILE: ' . $targetDirectory . DIRECTORY_SEPARATOR . $riotArchiveFileEntry->getPath());
			fwrite($file, $riotArchiveFileEntry->getContent());
			fclose($file);
		}
	}

	public function getIterator() {
		$this->parseFile();

		return new \ArrayIterator($this->files);
	}

	public function count() {
		$this->parseFile();

		return sizeof($this->files);
	}
}
?>