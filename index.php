<?php
    // setup php environment
	set_time_limit(0);
	spl_autoload_register();

	// create game folder object
	$gameFolder = new \riotDecode\GameFolder('C:\\Riot Games\\League of Legends\\');

	// decode champion data
	foreach($gameFolder->getGameFiles("*.inibin") as $path => $riotArchiveFileEntry) {
		if(($decodedFile = $riotArchiveFileEntry->decode()) instanceof \riotDecode\inibin\InibinFile && $decodedFile['INIBIN_TYPE'] == 'CHAMPION') {
			echo $decodedFile . "<br />";
		}
	}
?>