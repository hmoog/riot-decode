<?php
namespace riotDecode;

class GameFolder {
    protected $path;

	protected $riotArchiveFiles;

	public function __construct($path) {
		$this->path = preg_replace("![\\\\//]+$!", "", $path);
	}

	public function getRiotArchiveFiles() {
		if($this->riotArchiveFiles === null) {
			$this->riotArchiveFiles = [];

			foreach(scandir($this->path . '\\RADS\\projects\\lol_game_client\\filearchives\\') as $versionFolder) {
				if(preg_match("/([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)/", $versionFolder, $matches)) {
					foreach(scandir($this->path . '\\RADS\\projects\\lol_game_client\\filearchives\\' . $matches[1] . '\\') as $potentialRiotArchiveFile) {
						if(preg_match("/\\.raf$/", $potentialRiotArchiveFile)) {
							$this->riotArchiveFiles[$matches[1]] = new \riotDecode\raf\RiotArchiveFile($this->path . '\\RADS\\projects\\lol_game_client\\filearchives\\' . $matches[1] . '\\' . $potentialRiotArchiveFile);
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
}
?>