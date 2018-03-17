<?php

$user = 'root';
$password = 'serignesaliou';
$hostname = 'localhost';

try{
    $bdd = new PDO('mysql:host='.$hostname.';dbname=wimbledon;charset=utf8', $user, $password, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}

