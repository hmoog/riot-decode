<?php
namespace riotDecode\raf;

class RiotArchiveFileEntry {
    protected $riotArchiveFile;

    protected $path;

    protected $dataSize;

    protected $dataOffset;

    protected $pathHash;

    public function __construct($riotArchiveFile, $path, $dataSize, $dataOffset, $pathHash) {
        $this->riotArchiveFile = $riotArchiveFile;
        $this->path            = $path;
        $this->dataSize        = $dataSize;
        $this->dataOffset      = $dataOffset;
        $this->pathHash        = $pathHash;
    }

    public function getRiotArchiveFile() {
        return $this->riotArchiveFile;
    }

    public function getPath() {
        return $this->path;
    }

    public function getDataSize() {
        return $this->dataSize;
    }

    public function getDataOffset() {
        return $this->dataOffset;
    }

    public function getPathHash() {
        return $this->pathHash;
    }

    public function getContent() {
        fseek($this->riotArchiveFile->dataFileHandle, $this->dataOffset);

        return (($uncompressedContent = @zlib_decode($content = fread($this->riotArchiveFile->dataFileHandle, $this->dataSize))) !== false) ? $uncompressedContent : $content;
    }

    public function decode() {
        $pathInfo = \pathinfo($this->path);

        if($pathInfo['extension'] == '') {
            throw new \Exception('can not auto decode files without file extensions');
        } else {
            $decoderClassName = '\\riotDecode\\' . $pathInfo['extension'] . '\\' . strtoupper($pathInfo['extension'][0]) . substr($pathInfo['extension'], 1) . 'File';

            try {
                if(class_exists($decoderClassName, true)) {
                    return new $decoderClassName($this);
                } else {
                    echo $this->getContent();
                }
            } catch(\Exception $exception) {
                echo $this->getContent();
            }
        }
    }
}
?>