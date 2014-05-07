<pre>
<?php
if(!array_key_exists('file', $_GET)) die();

// setup php environment
set_time_limit(0);
spl_autoload_register();

// create game folder object
$gameFolder = new \riotDecode\GameFolder('C:\\Riot Games\\League of Legends\\');

if(($gameFile = $gameFolder->getGameFile(str_replace('\\', '/', substr($_GET['file'], 1)))) !== null) {
    echo $gameFile->decode();
}
?>
</pre>