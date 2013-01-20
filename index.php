<?php
    // setup php environment
	set_time_limit(0);
	spl_autoload_register();

	// create game folder object
	$gameFolder = new \riotDecode\GameFolder('C:\\Riot Games\\League of Legends\\');

	// availableChampions
	if(file_exists('cache.php')) {
		include('cache.php');
	} else {
		$availableChampions = [];
		foreach($gameFolder->getGameFiles("*.inibin") as $path => $riotArchiveFileEntry) {
			if(($decodedFile = $riotArchiveFileEntry->decode()) instanceof \riotDecode\inibin\InibinFile && $decodedFile['INIBIN_TYPE'] == 'CHAMPION') {
				$availableChampions[pathinfo($path)['filename']] = $path;
			}
		}
		$file = fopen('cache.php', 'w+');
		fwrite($file, '<?php $availableChampions = unserialize("' . str_replace('"', '\\"', serialize($availableChampions)) . '"); ?>');
		fclose($file);
	}

	// list champions
	echo '<form action="index.php" method="GET" style="display:inline"><select name="INIBIN_FILE" onChange="this.form.submit()">';
	foreach($availableChampions as $champion => $path) {
		echo '<option value="' . $path . '"' . (key_exists('INIBIN_FILE', $_GET) ? ($path == $_GET['INIBIN_FILE'] ? ' selected' : '') : '') . '>Champion: ' . $champion . '</option>';
	}
	echo '</select> &raquo;</form><hr />';

	// decode champion data
	if(key_exists('INIBIN_FILE', $_GET)) {
		if(($gameFile = $gameFolder->getGameFile($_GET['INIBIN_FILE'])) !== null && ($decodedFile = $gameFile->decode()) instanceof \riotDecode\inibin\InibinFile) {
			echo $decodedFile;
		}
	}
?>