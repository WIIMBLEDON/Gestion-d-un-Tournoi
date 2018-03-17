<?php
session_start();
  $user=$_REQUEST["user"];
  $password=$_REQUEST["passwd"];
  if (!empty($user)) {
    if (!empty($passwd)) {
      switch ($passwd) {
        case 'arbitre':
          header("Location:refreeHome.php");
          break;
        case 'officielle':
          header("Location:officeHome.php");
          break;
        case 'coach':
          header("Location:coachHome.php");
          break;

        default:
         $_SESSION['msg']="Le mot de passe entrer n'existe pas";
         header("Location:index_en.html");
          break;
      }
    }else {
      $_SESSION['msg']="Veuiller entrer un mot de passe";
      header("Location:index_en.html");
    }
  }else {
    $_SESSION['msg']="Veuiller entrer l'identifiant";
    header("Location:index_en.html");
  }

 ?>
