<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>statistiques</title>
    <link rel="stylesheet" href="../Css/statistiques.css">
  </head>
  <body>
    <?php
    require_once "../Classes/PHPExcel.php";

    // Ouvrir un fichier Excel en lecture
    #$objReader = PHPExcel_IOFactory::createReader('Excel2007');
    $fichier="../Fichiers/statistiques.xlsx";
    $objReader = PHPExcel_IOFactory::createReaderForFile($fichier);
    $objPHPExcel = $objReader->load($fichier);
    $sheet = $objPHPExcel->getActiveSheet() ;
    $lastRow=$sheet->getHighestRow();
    //Controle du nombre d'option dans le select
    $index=$lastRow/2;

     ?>
  <form class="" action="" method="post" align="center">
    <select class="" name="choix">
      <?php
      for ($i=2; $i <=(int)($index)+1; $i++) {
        ?>
        <option value="<?php echo $i-1?>">MATCH<?php echo $i-1; ?></option>
        <?php
      }
      ?>
      <!-- <option value="1">MATCH1</option>
      <option value="2">MATCH2</option>
      <option value="3">MATCH3</option> -->
    </select>
    <input type="submit" name="" value="Afficher">
  </form><br>
    <?php
    // $row=2;
    // while ($row <=$lastRow) {
    $row=$_REQUEST["choix"];
    // $row=parseInt($donnees);
    $row*=2;
    // echo "$row";

      $k=1;
      $k+=$row;
      $NomEquipe1=$sheet->getCell('A'.$row);
      $NomEquipe2=$sheet->getCell('A'.$k);
        $idRenc=$sheet->getCell('B'.$row);
        $Possession1=$sheet->getCell('C'.$row);
        $Possession2=$sheet->getCell('C'.$k);
        $Attaques1=$sheet->getCell('D'.$row);
        $Attaques2=$sheet->getCell('D'.$k);
        $CoupsFranc1=$sheet->getCell('E'.$row);
        $CoupsFranc2=$sheet->getCell('E'.$k);
        $Buts1=$sheet->getCell('F'.$row);
        $Buts2=$sheet->getCell('F'.$k);
        $TirsCadres1=$sheet->getCell('G'.$row);
        $TirsCadres2=$sheet->getCell('G'.$k);
        $TirsNonCadres1=$sheet->getCell('H'.$row);
        $TirsNonCadres2=$sheet->getCell('H'.$k);
        $TirsArretes1=$sheet->getCell('I'.$row);
        $TirsArretes2=$sheet->getCell('I'.$k);
        $Touches1=$sheet->getCell('J'.$row);
        $Touches2=$sheet->getCell('J'.$k);
        $Corners1=$sheet->getCell('K'.$row);
        $Corners2=$sheet->getCell('K'.$k);
        $HorsJeu1=$sheet->getCell('L'.$row);
        $HorsJeu2=$sheet->getCell('L'.$k);
        $Fautes1=$sheet->getCell('M'.$row);
        $Fautes2=$sheet->getCell('M'.$k);
        $CartonJaune1=$sheet->getCell('N'.$row);
        $CartonJaune2=$sheet->getCell('N'.$k);
        $CartonRouge1=$sheet->getCell('O'.$row);
        $CartonRouge2=$sheet->getCell('O'.$k);
        $Remplacement1=$sheet->getCell('P'.$row);
        $Remplacement2=$sheet->getCell('P'.$k);
        $images1=$sheet->getCell('Q'.$row);
        $images2=$sheet->getCell('Q'.$k);

        ?>
  <div class="container">
      <table align="center" cellspacing="18">
          <tr>
            <td><img src="<?php echo $images1 ?>" alt=""></td>
            <td>
              <div class="barre">
                  <h3 ><?php echo "MATCH".($row/2); ?></h3>
              </div>
            </td>
            <td><img src="<?php echo $images2 ?>" alt=""></td>
          </tr>
          <tr>
            <td style="color:red;"><?php echo $NomEquipe1; ?></td>
            <td>Equipe</td>
            <td style="color:red;"><?php echo $NomEquipe2 ?></td>
          </tr>
          <tr>
            <td><?php echo $Possession1."%"; ?></td>
            <td>Possession</td>
            <td><?php echo $Possession2."%" ?></td>
          </tr>
          <tr>
            <td><?php echo $Attaques1; ?></td>
            <td>Attaques</td>
            <td><?php echo $Attaques2 ?></td>
          </tr>
          <tr>
            <td><?php echo $CoupsFranc1; ?></td>
            <td>Coups Francs</td>
            <td><?php echo $CoupsFranc2 ?></td>
          </tr>
          <tr>
            <td><?php echo $Buts1; ?></td>
            <td>Buts</td>
            <td><?php echo $Buts2 ?></td>
          </tr>
          <tr>
            <td><?php echo $TirsCadres1; ?></td>
            <td>Tirs cadrés</td>
            <td><?php echo $TirsCadres2 ?></td>
          </tr>
          <tr>
            <td><?php echo $TirsNonCadres1; ?></td>
            <td>Tirs non cadrés</td>
            <td><?php echo $TirsNonCadres2 ?></td>
          </tr>
          <tr>
            <td><?php echo $TirsArretes1; ?></td>
            <td>Tirs arrêtés</td>
            <td><?php echo $TirsArretes2 ?></td>
          </tr>
          <tr>
            <td><?php echo $Touches1; ?></td>
            <td>Touches</td>
            <td><?php echo $Touches2 ?></td>
          </tr>
          <tr>
            <td><?php echo $Corners1; ?></td>
            <td>Corners</td>
            <td><?php echo $Corners2 ?></td>
          </tr>
          <tr>
            <td><?php echo $HorsJeu1; ?></td>
            <td>Hors jeu</td>
            <td><?php echo $HorsJeu2 ?></td>
          </tr>
          <tr>
            <td><?php echo $Fautes1; ?></td>
            <td>Fautes</td>
            <td><?php echo $Fautes2 ?></td>
          </tr>
          <tr>
            <td><?php echo $CartonJaune1; ?></td>
            <td>Carton jaune</td>
            <td><?php echo $CartonJaune2 ?></td>
          </tr>
          <tr>
            <td><?php echo $CartonRouge1; ?></td>
            <td>Carton rouge</td>
            <td><?php echo $CartonRouge2 ?></td>
          </tr>
          <tr>
            <td><?php echo $Remplacement1; ?></td>
            <td>Remplacement</td>
            <td><?php echo $Remplacement2 ?></td>
          </tr>
      </table>
    </div><br><br>
    <?php
    // $row+=2;
    // }
    ?>


  </body>
</html>
