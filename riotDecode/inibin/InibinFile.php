<?php
namespace riotDecode\inibin;

class InibinFile implements \ArrayAccess {
	protected static $availableMappers;

	protected $keyMapping;

    protected $file;

	protected $values;

	protected $identifiedValues;

	protected $streamPointer = 0;

	public function __construct($file) {
		if(self::$availableMappers === null) {
			self::$availableMappers = [];

			foreach(scandir(getcwd() . DIRECTORY_SEPARATOR . 'riotDecode' . DIRECTORY_SEPARATOR . 'inibin' . DIRECTORY_SEPARATOR . 'mapper') as $entry) {
				if($entry[0] != '.') {
					$entry = '\\riotDecode\\inibin\\mapper\\' . str_replace('.php', '', $entry);

					self::$availableMappers[] = new $entry();
				}
			}
		}

		$this->file = $file;
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
		$result = '<table border="0" cellspacing="0" cellpadding="3" style="font-size:11px;font-family:arial;sans-serif;width:100%">'
		        .   '<thead>'
		        .     '<tr>'
		        .       '<td colspan="2" style="background-color:#d1ecff;font-weight:bold;-moz-border-radius: 6px 6px 0 0;-webkit-border-radius: 6px 6px 0 0;border-radius: 6px 6px 0 0;border-bottom:1px solid #ffffff;text-align:center">' . $this->file->getPath() . '</td>'
		        .     '</tr>'
		        .   '</thead>'
		        .   '<tbody>';

		foreach($this->getValues() as $key => $value) {
			$result .= '<tr><td style="background-color:#edf6fd;border-bottom:1px solid #ffffff;padding-right:40px">' . $key . '</td><td style="background-color:#f7f7f7;border-bottom:1px solid #ffffff;font-style:italic">' . json_encode($value) . '</td></tr>';
		}

		$result .= '</table>';

		return $result;
	}

	protected function decodeFile() {
		if($this->values === null) {
			$content        = ($this->file instanceof \riotDecode\raf\RiotArchiveFileEntry) ? $this->file->getContent() : (@file_get_contents($this->file) or die('COULD NOT FIND INIBIN FILE: ' . $this->file));

			$version        = $this->readFromStream($content, 'C');
			$oldLength      = $this->readFromStream($content, 'S');
			$dataFormat     = $this->readFromStream($content, 'S');
			$oldstyleOffset = strlen($content) - $oldLength;

			$this->values = $this->decodeSegments($content, [
				// decode u32
				0x0001 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = $this->readFromStream($content, 'L');
				},

				// decode float
				0x0002 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = round($this->readFromStream($content, 'f'), 5);
				},

				// decode u8/10
				0x0004 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = $this->readFromStream($content, 'C') * 0.1;
				},

				// decode u16
				0x0008 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = $this->readFromStream($content, 'S');
				},

				// decode u8
				0x0010 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = 0xff & $this->readFromStream($content, 'C');
				},

				// decode boolean
				0x0020 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					static $byte;

					$values[$key] = (0x1 & ($byte = ($index % 8 == 0) ? $this->readFromStream($content, 'C') : ($byte >> 1)));
				},

				// 3 byte values ??????????????????????????????????????????????????????????????????
				0x0040 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = [$this->readFromStream($content, 'C'), $this->readFromStream($content, 'C'), $this->readFromStream($content, 'C')];
				},

				// 12 byte values ?????????????????????????????????????????????????????????????????
				0x0080 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = [$this->readFromStream($content, 'L'), $this->readFromStream($content, 'L'), $this->readFromStream($content, 'L')];
				},

				// 2 byte values ??????????????????????????????????????????????????????????????????
				0x0100 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = $this->readFromStream($content, 'S');
				},

				// 8 byte values ??????????????????????????????????????????????????????????????????
				0x0200 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = [$this->readFromStream($content, 'S'), $this->readFromStream($content, 'S'), $this->readFromStream($content, 'S'), $this->readFromStream($content, 'S')];
				},

				// 4-byte color values ????????????????????????????????????????????????????????????
				0x0400 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = $this->readFromStream($content, 'L');
				},

				// 16 bytes values ????????????????????????????????????????????????????????????????
				0x0800 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$values[$key] = [$this->readFromStream($content, 'L'), $this->readFromStream($content, 'L'), $this->readFromStream($content, 'L'), $this->readFromStream($content, 'L')];
				},

				// string values
				0x1000 => function($index, $key, &$values) use (&$content, &$oldstyleOffset) {
					$offset = $oldstyleOffset + $this->readFromStream($content, 'S');

					$values[$key] = substr($content, $offset, strpos($content, "\x00", $offset) - $offset);
				}
			], $dataFormat);

 			krsort($this->values, SORT_NATURAL);
		}
	}

	protected function decodeSegments(&$content, $decoder, $dataFormat) {
		$values = [];

		foreach($decoder as $bitMask => $decodeFunction) {
			if(($dataFormat & $bitMask) != 0) {
				$keyCount = $this->readFromStream($content, 'S');

				$keys = [];
				for($i = 0; $i < $keyCount; $i++) {
					$keys[] = sprintf('%u', $this->readFromStream($content, 'L'));
				}

				foreach($keys as $index => $key) {
					$decodeFunction($index, $key, $values);
				}
			}
		}

		return $values;
	}

	protected function readFromStream(&$content, $formatString) {
		static $formatLengths = ['C' => 1, 'S' => 2, 'L' => 4, 'f' => 4];

		return unpack($formatString, substr($content, ($this->streamPointer = $this->streamPointer + $formatLengths[$formatString]) - $formatLengths[$formatString], $formatLengths[$formatString]))[1];
	}
}
?>