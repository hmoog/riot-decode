<?php
    // setup php environment
	set_time_limit(0);
	error_reporting(E_ALL);
	spl_autoload_register();

	// create game folder
	$gameFolder = new \riotDecode\GameFolder('C:\\Riot Games\\League of Legends\\');

	// decode champion data for DrMundo
	foreach($gameFolder->getRiotArchiveFiles() as $version => $riotArchiveFile) {
		foreach($riotArchiveFile->getFiles("DATA/Characters/DrMundo/DrMundo.inibin") as $path => $riotArchiveFileEntry) {
			echo $path . " [" . $version . "]<hr />";
			echo "CHAMPION_NAME = " . $riotArchiveFileEntry->decode()->getValues()[82690155] . "<br />";
			echo "CHAMPION_SPELL_NAME_1 = " . $riotArchiveFileEntry->decode()->getValues()[404599689] . "<br />";
			echo "CHAMPION_SPELL_NAME_2 = " . $riotArchiveFileEntry->decode()->getValues()[404599690] . "<br />";
			echo "CHAMPION_SPELL_NAME_3 = " . $riotArchiveFileEntry->decode()->getValues()[404599691] . "<br />";
			echo "CHAMPION_SPELL_NAME_4 = " . $riotArchiveFileEntry->decode()->getValues()[404599692] . "<br />";
			echo "<br /><br />";
		}
	}
?>