<?php

include "db.php";

echo "<table>";
$resp =$bdd->query('SELECT * FROM equipe');
while($donnees = $resp->fetch()){
    echo "<tr>
                <td><a href=listPlayers.php?team=".urlencode($donnees['Nom_equipe']).">$donnees[Nom_equipe]</a></td>
                <td></td>
            </tr>    
            ";
}

echo "</table>";
