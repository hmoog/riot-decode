<?php
namespace riotDecode\txt;

class TxtFile {
    protected $file;

	public function __construct($file) {
		$this->file = $file;

		echo $file->getPath() . "<br />";
		echo $file->getRiotArchiveFile()->getVersion() . "<br />";
	}

	public function __tostring() {
		return (($this->file instanceof \riotDecode\raf\RiotArchiveFileEntry) ? $this->file->getContent() : @file_get_contents($this->file));
	}
}
?>