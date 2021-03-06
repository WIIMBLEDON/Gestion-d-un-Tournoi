<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="css/main.css">
  <title>Champions League draw</title>
</head>
<body>

	<?php

    
	?>

  <div class="container">
    <div class="row groupsArea">
      <button class="btn btn-primary potentialTeams" onclick="prepareTeamsForDraw()">Fill pots</button>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group A</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group B</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group C</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group D</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group E</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group F</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group G</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="group col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <span class="groupName">Group H</span>
        <table class="table table-striped table-bordered table-condensed">
          <tbody>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
            <tr class="teamName">
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="clearfix"></div>
    <div class="row buttons">
      <div class="drawOptionButtons">
        <button class="btn btn-success drawNext">Draw Next Team</button>
      </div>
    </div>
    <div class="clearfix"></div>
    <div class="row potsArea">
      <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <h3 class="pot pot1">Pot 1</h3>
        <ul class="teamsInPot">
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
        </ul>
      </div>
      <div class=" col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <h3 class="pot pot2">Pot 2</h3>
        <ul class="teamsInPot">
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
        </ul>
      </div>
      <div class=" col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <h3 class="pot pot3">Pot 3</h3>
        <ul class="teamsInPot">
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
        </ul>
      </div>
      <div class=" col-xs-6 col-sm-3 col-md-3 col-lg-3">
        <h3 class="pot pot4">Pot 4</h3>
        <ul class="teamsInPot">
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
          <li class="team"></li>
        </ul>
      </div>
    </div>
    <!-- Fixture List goes here -->
    <div class="fixtureList">
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">

      </ul>
      <!-- Tab panes -->
      <div class="tab-content">

      </div>
    </div>
  </div>
  <nav class="portfolio-link navbar navbar-default navbar-fixed-bottom">
    <div class="container">
      <a href="https://github.com/ikushlianski/football-draw-simulator"><img src="./img/github.png" alt="This app on GitHub"></a>
      <div class="author"><a href="http://ilya.online" target="_blank">Ilya Kushlianski</a></div>
    </div>
  </nav>
  <script
    src="./js/jquery-3.2.1.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="./js/cldraw.js" charset="utf-8"></script>
</body>
</html>
