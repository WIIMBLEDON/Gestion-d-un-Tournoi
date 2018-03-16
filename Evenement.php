<?php

	try {
		$bdd = new PDO('mysql:host=localhost;dbname=Gestion_de_Tournoi;charset=utf8', 'root', '');
	}
	catch (Exception $e) {
	        die('Erreur : ' . $e->getMessage());
	}

	require('spreadsheet-reader-master/SpreadsheetReader.php');

	$Reader = new SpreadsheetReader('evenement.ods');
	$i = 0;
	foreach ($Reader as $Row) {
		$type = $Row[0];
		$heure = $Row[1];
		$id_renc = $Row[2];
		$id_joueur = $Row[3];
		$Nom_equipe = $Row[4];
		$requete = $bdd->prepare('INSERT INTO evenement (Type_even, Heure, id_renc, id_joueur, Nom_equipe) VALUES (?, ?, ?, ?, ?)');
		$requete->execute(array($type, $heure, $id_renc, $id_joueur, $Nom_equipe));
	}
	
	echo "Insertion réussie";

?>