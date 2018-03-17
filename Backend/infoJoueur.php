<?php

    require_once "../Classes/PHPExcel.php";

    // Ouvrir un fichier Excel en lecture
    #$objReader = PHPExcel_IOFactory::createReader('Excel2007');
    $fichier="../Fichiers/InfoJoueur.xlsx";
    $objReader = PHPExcel_IOFactory::createReaderForFile($fichier);
    $objPHPExcel = $objReader->load($fichier);

    try {
      //Connection à la base de données wimbledon
      $connexion= new PDO("mysql:host=localhost;dbname=wimbledon","root","serignesaliou");
      $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      for ($i=0; $i <=16 ; $i++) {
      $sheet = $objPHPExcel->getSheet($i) ;
      $lastRow=$sheet->getHighestRow();

          for ($row=2; $row <=$lastRow ; $row++) {

                $Prenom = $sheet->getCell('A'.$row);
                $Nom= $sheet->getCell('B'.$row);
                $Nationalite= $sheet->getCell('C'.$row);
                $Age= $sheet->getCell('D'.$row);
                $Poste= $sheet->getCell('E'.$row);
                $NomEquipe= $sheet->getCell('F'.$row);

              //Insertion des données
              echo $NomEquipe."<br>";
              $bool=false;
              $resultat=$connexion->query("SELECT Nom_equipe FROM equipe");
              $donnees=$resultat->fetchAll(PDO::FETCH_ASSOC);
              foreach ($donnees as $ligne ) {
                if ($NomEquipe==$ligne['Nom_equipe']){
                   $bool=true;
                   break;
                }
              }
              // while ($donnees=$resultat->fetch() && $bool==false) {
              //   if ($NomEquipe==$donnees)
              //     $bool=true;
              // }
              if (!$bool) {
                $requete="INSERT INTO equipe (`Nom_equipe`) VALUES ('$NomEquipe')";
                $connexion->query($requete);
              }else {
                echo "boolean= ".$bool."<br>";
              }

              $sql="INSERT INTO joueur (`Prenom`,`Nom`,`Nationalite`,`Age`,`Nom_equipe`,`Poste`) VALUES
                          ('$Prenom','$Nom','$Nationalite','$Age','$NomEquipe','$Poste')";
              $connexion->query($sql);

              echo "Inserttion réussie ligne:".$row."<br><br>";

          }
      }

    } catch (PDOException $e) {
      die("Erreur:".$e->getMessage());
    }
?>
