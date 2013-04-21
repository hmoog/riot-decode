<?php
namespace riotDecode\anm;

class AnmFile {
	protected static $availableMappers;

	protected $keyMapping;

    protected $file;

	protected $values;

	protected $identifiedValues;

	protected $streamPointer = 0;

	public function __construct($file) {
		$this->file = $file;

		echo $file->getPath() . "<br />";
		echo $file->getRiotArchiveFile()->getVersion() . "<br />";

		$this->decodeFile();
	}

	public function &getValues($translateKeys = true) {
		$this->decodeFile();

		if($translateKeys) {
			if($this->identifiedValues === null) {
				$matchingMapper = null;
				foreach(self::$availableMappers as $mapper) {
					if($mapper->matchesInibinFile($this)) {
						$matchingMapper = $mapper;
						break;
					}
				}

				if($matchingMapper !== null) {
					$this->identifiedValues = [];

					foreach($this->getValues(false) as $key => $value) {
						if(($mapping = $matchingMapper->mapInibinKey($key)) !== null) {
							$this->identifiedValues[$mapping[0]] = sizeof($mapping) >= 2 ? $mapping[1](key_exists($key, $this->values) ? $this->values[$key] : null) : (key_exists($key, $this->values) ? $this->values[$key] : null);
						} else {
							$this->identifiedValues[$key] = $value;
						}
					}

					$inibinType = explode('\\', get_class($matchingMapper));

					$this->identifiedValues['INIBIN_TYPE'] = strtoupper(array_pop($inibinType));
				} else {
					$this->identifiedValues = $this->values;
					$this->identifiedValues['INIBIN_TYPE'] = 'UNKNOWN';
				}

				krsort($this->identifiedValues, SORT_NATURAL);
			}

			return $this->identifiedValues;
		} else {
			return $this->values;
		}
	}

	public function offsetExists($offset) {
		return key_exists($offset, $this->getValues());
	}

	public function offsetGet($offset) {
		return $this->getValues()[$offset];
	}

	public function offsetSet($offset, $value) {
		$this->getValues()[$offset] = $value;
	}

	public function offsetUnset($offset) {
		unset($this->getValues()[$offset]);
	}

	public function __tostring() {
		return $this->decodeFile();
	}

	protected function decodeFile() {
		if($this->values === null) {
			$content        = ($this->file instanceof \riotDecode\raf\RiotArchiveFileEntry) ? $this->file->getContent() : (@file_get_contents($this->file) or die('COULD NOT FIND INIBIN FILE: ' . $this->file));

			$this->readFromStream($content, 'L');
			$this->readFromStream($content, 'L');

			$version = $this->readFromStream($content, 'L');

			if($version <= 3) {
            	$magic = $this->readFromStream($content, 'L');
		        $numberOfBones = $this->readFromStream($content, 'L');
		        $numberOfFrames = $this->readFromStream($content, 'L');
		        $playbackFPS = $this->readFromStream($content, 'L');
			} else {
				$magic = $this->readFromStream($content, 'L');

                // Not sure what any of these mean.
                $this->readFromStream($content, 'L');
                $this->readFromStream($content, 'L');
                $this->readFromStream($content, 'L');

        		$numberOfBones = $this->readFromStream($content, 'L');
        		$numberOfFrames = $this->readFromStream($content, 'L');
        		$playbackFPS = round(1 / $this->readFromStream($content, 'f'), 2);

        		for($i=1;$i<=3;$i++) {
        			echo $this->readFromStream($content, 'L') . "<br />";
        		}
			}


			echo $version . " - <br />";
			echo $magic . " - <br />";
			echo $numberOfBones . " - <br />";
			echo $numberOfFrames . " - <br />";
			echo $playbackFPS . " - <br />";
		}

		return ' a ';
	}

	protected function readFromStream(&$content, $formatString) {
		static $formatLengths = ['C' => 1, 'S' => 2, 'L' => 4, 'f' => 4];

		return unpack($formatString, substr($content, ($this->streamPointer = $this->streamPointer + $formatLengths[$formatString]) - $formatLengths[$formatString], $formatLengths[$formatString]))[1];
	}
}
?>