<?php

    // Postgres connexion
    $host = 'localhost';
    $port = '5432';
    $username = 'postgres';
    $password = 'postgres';
    $db = 'gestion_produits';

    $db = new PDO("pgsql:host=$host;port=$port;dbname=$db", $username, $password);

    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    // Préparer une connexion postgresSQL
    
?>