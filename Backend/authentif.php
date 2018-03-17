<?php
session_start();
  $user=$_REQUEST["user"];
  $password=$_REQUEST["passwd"];
  if (!empty($user)) {
    if (!empty($password)) {
      switch ($password) {
        case 'arbitre':
          header("Location:../ajaxcup_master/refreeHome.php");
          break;
        case 'officielle':
          header("Location:../ajaxcup_master/officeHome.php");
          break;
        case 'coach':
          header("Location:../ajaxcup_master/coachHome.php");
          break;

        default:
         $_SESSION['msg']="Le mot de passe entrer n'existe pas";
         header("Location:../ajaxcup_master/index_en.php");
         // echo $password."<br><br>";
          break;
      }
    }else {
      $_SESSION['msg']="Veuiller entrer un mot de passe";
      header("Location:../ajaxcup_master/index_en.php");
      // echo $password."<br><br>";
    }
  }else {
    $_SESSION['msg']="Veuiller entrer l'identifiant";
    header("Location:../ajaxcup_master/index_en.php");
    // echo $password."<br><br>";
  }

 ?>
