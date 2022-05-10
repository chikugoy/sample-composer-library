<?php

namespace chikugoy;

/**
 * composer libraryのさんぷる
 *
 * @author chikugoy
 */
class SampleLibrary
{
    private $name;
    private $description;

    function __construct($name, $description)
    {
        $this->name = $name;
        $this->description = $description;
    }

    public function getName()
    {
        return $this->name;
    }

    public function getDescription()
    {
        return $this->description;
    }
}