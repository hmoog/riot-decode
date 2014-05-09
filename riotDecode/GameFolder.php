<?php
namespace riotDecode;

class GameFolder {
    protected $path;

	protected $riotArchiveFiles;

	public function __construct($path) {
		$this->path = preg_replace("![\\\\//]+$!", "", $path);
	}

	public function getChampions() {
		@include(getcwd() . DIRECTORY_SEPARATOR . 'riotDecode' . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'cache.php');

		if(!isset($availableChampions)) {
			$availableChampions = [];

			foreach($this->getGameFiles("*.inibin") as $path => $riotArchiveFileEntry) {
			    if(preg_match('!DATA/Characters/[^/]+/[^/\\.]+\\.inibin!', $path)) $availableChampions[pathinfo($path)['filename']] = $path;
			}

			$file = fopen(getcwd() . DIRECTORY_SEPARATOR . 'riotDecode' . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'cache.php', 'w+');
			fwrite($file, '<?php $availableChampions = unserialize("' . str_replace('"', '\\"', serialize($availableChampions)) . '"); ?>');
			fclose($file);
		}

		return $availableChampions;
	}

	public function getRiotArchiveFiles() {
		if($this->riotArchiveFiles === null) {
			$this->riotArchiveFiles = [];

			foreach(scandir($this->path . '\\RADS\\projects\\lol_game_client\\filearchives\\') as $versionFolder) {
				if(preg_match("/([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)/", $versionFolder, $matches)) {
					foreach(scandir($this->path . '\\RADS\\projects\\lol_game_client\\filearchives\\' . $matches[1] . '\\') as $potentialRiotArchiveFile) {
						if(preg_match("/^(.*)\\.raf$/", $potentialRiotArchiveFile, $matches1)) {
							$this->riotArchiveFiles[$matches[1] . '\\' . $matches1[1]] = new \riotDecode\raf\RiotArchiveFile($this->path . '\\RADS\\projects\\lol_game_client\\filearchives\\' . $matches[1] . '\\' . $potentialRiotArchiveFile);
						}
					}
				}
			}

			krsort($this->riotArchiveFiles, SORT_NATURAL);
		}

		return $this->riotArchiveFiles;
	}

	public function getGameFiles($regex = null) {
		$riotArchiveFileEntries = [];

		foreach($this->getRiotArchiveFiles() as $version => $riotArchiveFile) {
			foreach($riotArchiveFile->getFiles($regex) as $path => $riotArchiveFileEntry) {
				if(!key_exists($path, $riotArchiveFileEntries)) {
					$riotArchiveFileEntries[$path] = $riotArchiveFileEntry;
				}
			}
		}

		return $riotArchiveFileEntries;
	}

	public function getGameFile($regex = null) {
		foreach($this->getRiotArchiveFiles() as $version => $riotArchiveFile) {
			foreach($riotArchiveFile->getFiles($regex) as $path => $riotArchiveFileEntry) {
				return $riotArchiveFileEntry;
			}
		}

		return null;
	}
}
?>