<?php
namespace riotDecode\luaobj;

class LuaobjFile {
    protected $file;

	public function __construct($file) {
		$this->file = $file;

		$tmpFile = fopen(getcwd() . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, explode('\\', __NAMESPACE__)) . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'tmp.luaobj', "w+");
		fwrite($tmpFile, $file->getContent());
		fclose($tmpFile);

		$command = getcwd() . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, explode('\\', __NAMESPACE__)) . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'luadec.exe "' . getcwd() . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, explode('\\', __NAMESPACE__)) . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'tmp.luaobj' . '"';
		$result = `$command`;

		echo $result . "<hr />";

		$command = getcwd() . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, explode('\\', __NAMESPACE__)) . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'luadec.exe -dg -dis "' . getcwd() . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, explode('\\', __NAMESPACE__)) . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'tmp.luaobj' . '"';
		$result = `$command`;

		echo $result . "<hr />";

		unlink(getcwd() . DIRECTORY_SEPARATOR . implode(DIRECTORY_SEPARATOR, explode('\\', __NAMESPACE__)) . DIRECTORY_SEPARATOR . '_private' . DIRECTORY_SEPARATOR . 'tmp.luaobj');
	}

	function getValues() {
		$this->decodeFile();

		return $this->values;
	}

	public function __tostring() {
		return '';
	}
}
?>