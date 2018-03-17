<?php

	// session_start();

	try {
		$bdd = new PDO('mysql:host=localhost;dbname=Gestion_de_Tournoi;charset=utf8', 'root', '');
	}

	catch (Exception $e) {
	        die('Erreur : ' . $e->getMessage());
	}

	$requeteEquipe = $bdd->query("SELECT Nom_equipe FROM equipe");

	$i = 1;

	?>

	<form id="<?php echo $form ?>" action="TeamComposition.php" method="POST">

	<?php

	$requeteJoueur = $bdd->query("SELECT Prenom, Nom FROM joueur WHERE Nom_equipe = 'Paris_Saint_Germain'");

	while ($donnes = $requeteEquipe->fetch()) {

		?>

		<?php
	}
	?>

	<p>

	<?php

	while ($donnees = $requeteJoueur->fetch()) {
		$nameId = 'player' . $i;
		?>
		<input type="checkbox" name="joueur[]" id="joueur" value="<?php echo $donnees['Prenom'] . ' ' . $donnees['Nom'] . '</br>'; ?>" /> <label> <?php echo $donnees['Prenom'] . ' ' . $donnees['Nom'] . '</br>'; ?> </label> <br>
		
		<?php
		$i++;
	}

	$j = 0;

?>

</p>

<div class="bouton">
	<input type="submit" onclick="compositionOk();" value="Valider">
</div>

</form>

<script type="text/javascript">

	function compositionOk() {

		var inputs = document.getElementsByTagName('input');
		var PlayersSelected = 0;
		var longueur = inputs.length;
		var i;
		var j;

		for (i = 0; i < longueur ; i++) {
		    if (inputs[i].checked == true) {
		    	PlayersSelected +=1;
		    	// console.log(PlayersSelected);
		    }
		    if (PlayersSelected === 11) {
		    	for (j = 0 ; j < longueur; j++) {
			    	if (inputs[j].checked == false) {
			    		inputs[j].disabled = true;
			    	} 
		   		}
		    }
		}
		if (PlayersSelected != 11) alert("Veuillez vous assurer que vous avez choisi 11 joueurs");

		else alert("Ok");

	}
			  
</script>