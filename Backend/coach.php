<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Coach</title>
    <link rel="icon" type="image/png" href="../images/ajax_small.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <!--link rel="stylesheet" href="../testMenu.css"!-->

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../MDBFree/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../MDBFree/css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="../MDBFree/css/style.css" rel="stylesheet">
  </head>
  <body background="../ajaxcup_master/img/2.jpg">

    <header>

      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-dark blue-grey darken-3">
          <div class="container">

              <!-- Navbar brand -->
              <logo>
                  <a class="navbar-brand" href="#">
                      <img src="../ajaxcup_master/img/2.jpg" height="30" alt="">
                  </a>
              </logo>
              <a class="navbar-brand" href="#">UEFA</a>

              <!-- Collapse button -->
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
                  aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>

              <!-- Collapsible content -->
              <div class="collapse navbar-collapse" id="basicExampleNav">

                  <!-- Links -->
                  <ul class="navbar-nav mr-auto">

                      <li class="nav-item">
                        <button type="submit" class="btn btn-outline-info btn-rounded waves-effect" mdbRippleRadius name="button">Liste des équipes
                          <a class="nav-link" href="../listTeam.php"></a>
                        </button>
                      </li>
                      <li class="nav-item">
                        <button type="submit" class="btn btn-outline-info btn-rounded waves-effect" mdbRippleRadius name="button"> Calendriers et Statistiques des rencontres</button>
                      </li>
                      <li>
                        <button class="btn btn-outline-info btn-rounded waves-effect" type="button" position data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                      connexion
                      </button>
                      </li>
                  </ul>
              </div>
          </div>
      </nav>
  </header>



<section class="section pb-3 text-center" style="position:relative;">

    <div class="row">

        <!--Grid column-->
        <?php

          include '../db.php';

          $sql="SELECT * FROM coach";
          $resultat=$bdd->query($sql);
              while ($donnees=$resultat->fetch()) {
         ?>

        <div class="col-lg-4 col-md-12 mb-4 view zoom">
            <div class="card testimonial-card">

                <div class="avatar mx-auto white"><img src="../ajaxcup_master/img/uefa.jpeg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                </div>

                <div class="card-body">
                    <!--Name-->
                    <h4 class="card-title mt-1"><?php echo "Prénom: ".$donnees['prenom'] ;?></h4>
                    <h4 class="card-title mt-1"><?php echo "Nom: ".$donnees['nom'] ;?></h4>
                    <h4 class="card-title mt-1"><?php echo "Nationalite :".$donnees['nationalite'] ;?></h4>
                    <h4 class="card-title mt-1"><?php echo "Age :".$donnees['age'] ;?></h4>
                    <hr>
                    <!--Quotation-->
                </div>

            </div>
        </div>
        <?php
              }
         ?>

    </div>
</section>

    <script type="text/javascript" src="../MDBFree/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../MDBFree/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="../MDBFree/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../MDBFree/js/mdb.min.js"></script>
    <style media="screen">

  </body>
</html>
