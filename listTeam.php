<?php

include "db.php";

echo "<table>";
$resp =$bdd->query('SELECT * FROM equipe');
while($donnees = $resp->fetch()){
    echo "<tr>
                <td><a href=listPlayers.php?team=".urlencode($donnees['nom_equipe']).">$donnees[nom_equipe]</a></td>
                <td>$donnees[stade]</td>
            </tr>    
            ";
}

echo "</table>";
