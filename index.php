<?php

$xml = new DOMDocument();

$xml->load('data.xml');

if ($xml->validate()) {
    echo "It is a valid XML document.";
} else {
    echo "It is not a valid XML document.";
}

?>