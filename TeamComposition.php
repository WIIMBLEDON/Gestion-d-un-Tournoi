<?php

	$selected = $_POST['joueur'];

	echo "Voici la composition d'équipe : </br> </br> ";

	foreach ($selected as $joueur) {
		echo($joueur);
	}

?>