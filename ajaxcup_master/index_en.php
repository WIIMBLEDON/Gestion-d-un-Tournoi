<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <link rel="icon" type="image/png" href="../images/ajax_small.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Accueil</title>
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

<body style="background-image: url('img/ch.jpg');">

  <?php   session_start(); ?>

    <header>

      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-dark blue-grey darken-3">
          <div class="container">

              <!-- Navbar brand -->
              <logo>
                  <a class="navbar-brand" href="#">
                      <img src="img/2.jpg" height="30" alt="">
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
                      <!-- <li class="nav-item">
                        <button type="submit" class="btn btn-outline-info btn-rounded waves-effect" mdbRippleRadius name="button">Equipes</button>
                      </li> -->

                      <li>
                        <button class="btn btn-outline-info btn-rounded waves-effect" type="button" position data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                      connexion
                      </button>
                      </li>
                      <!-- Dropdown -->


                  </ul>
                  <!-- Links -->

              </div>
              <!-- Collapsible content -->

          </div>
      </nav>
      <!--/.Navbar-->

      <!-- <div class="<position-static>">
        <div >

        </div>
      </div> -->

  </header>

  <div class="collapse" id="collapseExample">
  <div class="mt-3">
    <section class="form-dark">

        <!--Form without header-->
    <form class="" action="../Backend/authentif.php" method="post">

        <div id="move" class="card card-image" style="background-image: url('img/2.jpg'); width: 28em;display: block; margin-left: auto; margin-right: auto ; ">

            <div class="text-white rgba-stylish-strong py-5 px-5 z-depth-4">

                <!--Header-->
                <div class="text-center">
                    <h3 class="white-text mb-5 mt-4 font-weight-bold"><strong>connectez</strong> <a class="green-text font-weight-bold"><strong>VOUS</strong></a></h3>
                </div>

                <!--Body-->
                <div class="md-form" id="Email">

                    <label for="Form-email5">Email</label>
                    <input type="text" id="Form-email5" name="user" class="form-control white-text">

                </div>

                <div class="md-form pb-3" id="password">
                      <label for="Form-pass5">Mot de passe</label>
                    <input type="password" name="passwd" id="Form-pass5" class="form-control white-text">
                </div>

                <!--Grid row-->
                <div class="row d-flex align-items-center mb-4">

                    <!--Grid column-->
                    <div class="text-center mb-3 col-md-12" id="Sign">
                        <button type="submit" class="btn btn-success btn-block btn-rounded z-depth-1">se connecter</button>
                    </div>
                    <?php
                    if (isset($_SESSION['msg'])) {
                      ?>
                      <h3 class="white-text mb-5 mt-4 font-weight-bold"><a class="red-text font-weight-bold"><?php echo $_SESSION['msg'] ;unset($_SESSION['msg']);?></a></h3>
                      <?php

                    }

                     ?>
                    <!--Grid column-->
                </div>
            </div>
        </div>
  </form>
        <!--/Form without header-->

    </section>
  </div>
  </div>

<!--Section: Testimonials v.1-->
<section class="section pb-3 text-center">
    <!--Section heading-->
    <h1 class="section-heading h1 pt-4 info-text" style="color: #33b5e5;"> BIENVENUE SUR VOTRE SITE OFFICIEL DE L"UEFA CHAMPIONS LEAGUE</h1>
    <!--Section description-->
    <p class="section-description"></p>

    <div class="row">

        <!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-4 view zoom">

            <!--Card-->
            <div class="card testimonial-card">

                <!--Background color-->
                <!-- <div class="card-up teal lighten-2">
                </div> -->

                <!--Avatar-->
                <div class="avatar mx-auto white"><img src="img/lew.jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                </div>

                <div class="card-body">
                    <!--Name-->
                    <h4 class="card-title mt-1">LEWANDOWSKI</h4>
                    <hr>
                    <!--Quotation-->
                    <p><i class="fa fa-quote-left"></i> son coup-franc a la 77' sauve son equipe </p>
                </div>

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-4 view zoom">

            <!--Card-->
            <div class="card testimonial-card">

                <!--Background color-->
                <div class="card-up blue lighten-2">
                </div>

                <!--Avatar-->
                <div class="avatar mx-auto white"><img src="img/messi.jpg" alt="avatar mx-auto white"  class="rounded-circle img-fluid">
                </div>

                <div class="card-body">
                    <!--Name-->
                    <h4 class="card-title mt-1">L. MESSI</h4>
                    <hr>
                    <!--Quotation-->
                    <p><i class="fa fa-quote-left"></i> En tete du classement de meilleurs buteurs et passeurs</p>
                </div>

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-4 view zoom">

            <!--Card-->
            <div class="card testimonial-card">

                <!--Background color-->
                <div class="card-up deep-purple lighten-2"></div>

                <!--Avatar-->
                <div class="avatar mx-auto white"><img src="img/cr7.jpg" alt="avatar mx-auto white"  class="rounded-circle img-fluid">
                </div>

                <div class="card-body">
                    <!--Name-->
                    <h4 class="card-title mt-1">C.RONALDO</h4>
                    <hr>
                    <!--Quotation-->
                    <p><i class="fa fa-quote-left"></i> Sa reprise de volee fait la difference</p>
                </div>

            </div>
            <!--Card-->

        </div>
        <!--Grid column-->

    </div>

</section>
<!--Section: Testimonials v.1-->
<p > <h1 class="danger-text" style=" color: #33b5e5;">Neymar forfait contre le Real : trois questions sur la blessure de la star du PSG</h1></p>


<!-- Grid row -->
<div class="row">

    <!-- Grid column -->
    <div class="col-md-12 mb-3">

        <img src="img/ney.jpg" class="img-fluid z-depth-1" alt="Responsive image">

    </div>
    <!-- Grid column -->

</div>

<!-- Grid row -->

<!-- Grid row -->
<h1 class="info-text" style="color: #33b5e5;"> <p></p>Ben Yedder : "Pas les mots"</p> </h1>
<h3 class="info-text" style="color: #33b5e5;"><p>Wissam Ben Yedder était un homme heureux et ému, mardi soir, après avoir inscrit ses 7e et 8e buts cette saison en Champions League.</p></h3>
<!-- Grid row -->



      <script type="text/javascript" src="../MDBFree/js/jquery-3.2.1.min.js"></script>
      <!-- Bootstrap tooltips -->
      <script type="text/javascript" src="../MDBFree/js/popper.min.js"></script>
      <!-- Bootstrap core JavaScript -->
      <script type="text/javascript" src="../MDBFree/js/bootstrap.min.js"></script>
      <!-- MDB core JavaScript -->
      <script type="text/javascript" src="../MDBFree/js/mdb.min.js"></script>
      <style media="screen">
=======
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Ajax cup 2017, jalkapallon vuonna 2004 syntyneiden poikien kutsuturnaus">
    <meta name="author" content="Jouko Kylmäoja">

    <title>Ajax cup 2017</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/creative.css" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Ajax cup 2016</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#Yleisinfo">Introduction</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#pelijarjestelma">Infos sur le tournoi</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#joukkueet">Equipes</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact info</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="aikataulu.html">Calendrier et resultats</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1>Ajax cup 2017</h1>
                <hr>
                <p>Invitational tournament for boys born 2004</p>
                <h3>17.-18.6. 2017 Kempele, Finland</h3>
            </div>
        </div>
    </header>


    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.fittext.js"></script>
    <script src="js/wow.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/creative.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC3CThga37-towedtjtk5OJhvzXoAKuS5Q"></script>
    <script>
        function initialize() {
            var mapCanvas = document.getElementById('map');
            var mapOptions = {
                center: new google.maps.LatLng(64.9108232,25.4809703),
                zoom: 10,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(mapCanvas, mapOptions)
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(64.9177301,25.4738249),
                icon: "img/ajax_smaller.png",
                map: map
            });

        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

>>>>>>> 7cf00ffd3924edd941e650d9d62889fe23d5c1e1
</body>

</html>
