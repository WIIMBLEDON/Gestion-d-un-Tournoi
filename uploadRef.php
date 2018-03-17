<?php

if (!isset($_FILES['fic'])){
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Essai faramarene 1</title>
    </head>
    <body>
    <form action="" method="post" enctype="multipart/form-data">
        <p><input type="file" name="fic"></p>
        <p><input type="submit" value="Importer"></p>
    </form>
    </body>
    </html>
    <?php
}
else {
    include "db.php";
    rename($_FILES['fic']['tmp_name'], "fichiers\\" . $_FILES['fic']['name']);
    $fichier = "fichiers/" . $_FILES['fic']['name'];
    require_once "Classes/PHPExcel.php";

    //chargement du fichier excel en utilisant PHPExcel's IOFactory
    $excel = PHPExcel_IOFactory::load($fichier);

    //activer la premiere feuille
    $excel->setActiveSheetIndex(0);
    $i = 3;
    while($excel->getActiveSheet()->getCell('A'.$i)->getValue() != "") {
        $prenom = $excel->getActiveSheet()->getCell('A' . $i)->getValue();
        $nom = $excel->getActiveSheet()->getCell('B' . $i)->getValue();
        $nationalite = $excel->getActiveSheet()->getCell('C' . $i)->getValue();
        $age = $excel->getActiveSheet()->getCell('D' . $i)->getValue();

        $req = $bdd->prepare('INSERT INTO arbitre(prenom, nom, nationalite, age) VALUES (:prenom, :nom, :nationalite, :age)');
        $req->execute(array(
            'prenom' => $prenom,
            'nom' => $nom,
            'nationalite' => $nationalite,
            'age' => $age
        ));
        $i++;
    }
}
