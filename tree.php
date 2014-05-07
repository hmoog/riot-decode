<html>
    <head>
        <title>INDEX</title>

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

        <style type="text/css">
            .file {
                background-image:url('file.png');
                background-repeat:no-repeat;
                background-position:left center;
                padding-left:20px;
            }

            .folder {
                background-image:url('closed.png');
                background-repeat:no-repeat;
                background-position:left center;
                padding-left:20px;
            }

            .folder.opened {
                background-image:url('open.png');
            }
        </style>
    </head>

    <body>
<?php
// setup php environment
set_time_limit(0);
spl_autoload_register();

// end output buffer
ob_end_flush();

// create game folder object
$gameFolder = new \riotDecode\GameFolder('C:\\Riot Games\\League of Legends\\');

// build file tree
$fileTree = [];
foreach($gameFolder->getRiotArchiveFiles() as $rafFile) {
    foreach($rafFile->getFiles() as $file) {
        $currentArray = &$fileTree;

        $pathBits = explode('/', $file->getPath());
        for($i = 0; $i < sizeof($pathBits) - 1; $i++) {
            if(!array_key_exists($pathBits[$i], $currentArray)) {
                $currentArray[$pathBits[$i]] = [];
            }

            $currentArray = &$currentArray[$pathBits[$i]];
        }
        if(!array_key_exists($pathBits[$i], $currentArray)) {
            $currentArray[$pathBits[$i]] = $pathBits[$i];
        }
    }
}

function sortTree($tree) {
    ksort($tree);

    $folders = [];
    $files = [];
    foreach($tree as $key => $value) {
        if(is_string($value)) {
            $files[$key] = $value;
        } else {
            $folders[$key] = sortTree($value);
        }
    }

    $result = [];
    foreach($folders as $key => $value) $result[$key] = $value;
    foreach($files as $key => $value) $result[$key] = $value;

    return $result;
}

function outputTree($tree, $level = 0, $relativePath = '') {
    static $element = 0;

    foreach($tree as $key => $value) {
        if(is_string($value)) {
            echo '<a href="content.php?file=' . urlencode($relativePath . DIRECTORY_SEPARATOR . $value) . '" class="file" style="display:inline-block;" id="element' . $element . '" target="content">' . $value . '</a><br />';
        } else {
            echo '<div class="folder" style="cursor:pointer;display:inline-block;" onclick="$(this).toggleClass(\'opened\');$(\'#element' . ++$element . '\').toggle()">' . $key . '</div><br />';
            echo '<div style="padding-left:16px;display:none;" id="element' . $element . '">';
            outputTree($value, $level + 1, $relativePath . DIRECTORY_SEPARATOR . $key);
            echo '</div>';
        }
    }
}

outputTree(sortTree($fileTree));
?>
    </body>
</html>