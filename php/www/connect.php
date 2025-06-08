<?php

    // MySQL connection parameters
    $host = getenv('MYSQL_HOST') ?: 'mysql-service';
    $username = getenv('MYSQL_USER') ?: 'root';
    $password = getenv('MYSQL_PASSWORD') ?: 'root';
    $db = getenv('MYSQL_DATABASE') ?: 'gestion_produits';

    // Connexion avec pdo mysql
    $db = new PDO("pgsql:host=$host;dbname=$db", $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    // Préparer une connexion postgresSQL
    
?>