<?php
include "db.php";

$team = urldecode($_GET['team']);
echo "<table>";
$req = $bdd->prepare('SELECT * FROM joueur WHERE Nom_equipe = ?');
$req->execute(array($team));
while($donnees = $req->fetch()){
    echo "<tr align="center">;
                <td><a href=infoPlayer.php?player=".urlencode($donnees['Nom']).">$donnees[Prenom] $donnees[Nom]</a></td>
                <td>$donnees[Nationalite]</td>
                <td>$donnees[Age]</td>
            </tr>    
            ";
}

echo "</table>";
