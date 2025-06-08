<?php

    $host = getenv('PG_HOST');
    $port = getenv('PG_PORT');
    $username = getenv('PG_USER');
    $password = getenv('PG_PASSWORD');
    $db = getenv('PG_DATABASE');


    $db = new PDO("pgsql:host=$host;port=$port;dbname=$db", $username, $password);

    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    // Préparer une connexion postgresSQL
    
?>