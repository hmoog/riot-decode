<?php
    // setup php environment
    set_time_limit(0);
    spl_autoload_register();

    // create game folder object
    $gameFolder = new \riotDecode\GameFolder('C:\\Riot Games\\League of Legends\\');

    // retrieve available champions
    $availableChampions = $gameFolder->getChampions();
/*
    foreach($gameFolder->getGameFiles('inibin|troybin') as $path => $file) {
        foreach($file->decode()->getValues() as $group => $values) {
            foreach($values as $key => $value) {
                if($value == '1.6') {
                    echo $path . " => " . $group . " ][ " . $key . "<br />";
                }
            }
        }
    }
    */
/*
    $smallestValue = 1;
    $highestValue = -1;
    $closestDistValue = 1;
    foreach($availableChampions as $champion => $path) {
        $gameFile = $gameFolder->getGameFile($path)->decode();
        $value = $gameFile['Data']['AttackDelayCastOffsetPercent'];
        echo $champion . ' = ' . $value . '<br />';
        $closestDistValue = min(abs($value-0), $closestDistValue);
        $smallestValue = min($value, $smallestValue);
        $highestValue = max($value, $highestValue);
    }

    echo '<hr />';
    echo $closestDistValue . '<br />';
    echo $smallestValue . '<br />';
    echo $highestValue . '<br />';

    die();
*/
    $inibinFile = null;

    // list champions
    echo '<form action="index.php" method="GET" style="display:inline">';

    if(!key_exists('SPELL', $_GET)) {
        echo '<select name="CHAMPION" onChange="this.form.submit()">';
        foreach($availableChampions as $champion => $path) {
            echo '<option value="' . $path . '"';
            if(key_exists('CHAMPION', $_GET) && $path == $_GET['CHAMPION']) {
                echo ' selected';

                $inibinFile = $path;
            }
            echo '>' . $champion . '</option>';
        }
        echo '</select>';
    } else {
        echo '<input type="hidden" name="CHAMPION" value="' . (key_exists('CHAMPION', $_GET) ? $_GET['CHAMPION'] : '') . '" /><a href="index.php?CHAMPION=' . (key_exists('CHAMPION', $_GET) ? $_GET['CHAMPION'] : '') . '">';

        foreach($availableChampions as $champion => $path) {
            if(key_exists('CHAMPION', $_GET) && $path == $_GET['CHAMPION']) {
                echo '' . $champion;

                $inibinFile = $path;
            }
        }

        echo '</a>';
    }

    // decode champion data
    if($inibinFile !== null && ($gameFile = $gameFolder->getGameFile($inibinFile)) !== null && ($decodedFile = $gameFile->decode()) instanceof \riotDecode\inibin\InibinFile) {
        if(key_exists('SPELL', $_GET)) {
            $availableSpells = [
                $decodedFile['Data']['Spell1'] => $decodedFile['Data']['Spell1'] . '.inibin',
                $decodedFile['Data']['Spell2'] => $decodedFile['Data']['Spell2'] . '.inibin',
                $decodedFile['Data']['Spell3'] => $decodedFile['Data']['Spell3'] . '.inibin',
                $decodedFile['Data']['Spell4'] => $decodedFile['Data']['Spell4'] . '.inibin'
            ];

            echo ' &raquo; ';

            echo '<select name="SPELL" onChange="this.form.submit()">';
            foreach($availableSpells as $spell => $path) {
                echo '<option value="' . $path . '"';
                if(key_exists('SPELL', $_GET) && $path == $_GET['SPELL']) {
                    echo ' selected';

                    $inibinFile = $path;
                }
                echo '>Spell: ' . $spell . '</option>';
            }
            echo '</select>';

            $inibinFile = $_GET['SPELL'];
        }

        echo '</form><hr />';
    }

    if($inibinFile !== null && ($gameFile = $gameFolder->getGameFile($inibinFile)) !== null && ($decodedFile = $gameFile->decode()) instanceof \riotDecode\inibin\InibinFile) {
        if(!key_exists('SPELL', $_GET)) {
            echo  '<table border="0" cellspacing="0" cellpadding="3" style="font-size:11px;font-family:arial;sans-serif;width:100%">';
            echo    '<thead>';
            echo      '<tr>';
            echo        '<td colspan="2" style="background-color:#c7e1f3;font-weight:bold;-moz-border-radius: 6px 6px 0 0;-webkit-border-radius: 6px 6px 0 0;border-radius: 6px 6px 0 0;border-bottom:1px solid #ffffff;text-align:center">Subfiles</td>';
            echo      '</tr>';
            echo    '</thead>';
            echo   '<tbody>';
            echo     '<tr><td style="background-color:#edf6fd;border-bottom:1px solid #ffffff;white-space:nowrap;padding-right:40px">Spells</td><td style="background-color:#f7f7f7;border-bottom:1px solid #ffffff;font-style:italic;width:100%"><a href="index.php?CHAMPION=' . (key_exists('CHAMPION', $_GET) ? $_GET['CHAMPION'] : '') . '&SPELL=' . urlencode($decodedFile['Data']['Spell1'] . '.inibin') . '">' . $decodedFile['Data']['Spell1'] . '</a> <a href="index.php?CHAMPION=' . (key_exists('CHAMPION', $_GET) ? $_GET['CHAMPION'] : '') . '&SPELL=' . urlencode($decodedFile['Data']['Spell2'] . '.inibin') . '">' . $decodedFile['Data']['Spell2'] . '</a> <a href="index.php?CHAMPION=' . (key_exists('CHAMPION', $_GET) ? $_GET['CHAMPION'] : '') . '&SPELL=' . urlencode($decodedFile['Data']['Spell3'] . '.inibin') . '">' . $decodedFile['Data']['Spell3'] . '</a> <a href="index.php?CHAMPION=' . (key_exists('CHAMPION', $_GET) ? $_GET['CHAMPION'] : '') . '&SPELL=' . urlencode($decodedFile['Data']['Spell4'] . '.inibin') . '">' . $decodedFile['Data']['Spell4'] . '</a></td></tr>';
            echo   '</tbody>';
            echo '</table>';
            echo '<br />';
        }

        echo $decodedFile;
    } else {
        #echo '</form><hr />';
    }
?>