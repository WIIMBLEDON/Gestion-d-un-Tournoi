<?php
include "db.php";

$team = urldecode($_GET['team']);
echo "<table>";
$req = $bdd->prepare('SELECT * FROM joueur WHERE nom_equipe = ?');
$req->execute(array($team));
while($donnees = $req->fetch()){
    echo "<tr>
                <td><a href=infoPlayer.php?player=".urlencode($donnees['nom']).">$donnees[prenom] $donnees[nom]</a></td>
                <td>$donnees[nationalite]</td>
                <td>$donnees[age]</td>
                <td>$donnees[taille]</td>
            </tr>    
            ";
}

echo "</table>";
