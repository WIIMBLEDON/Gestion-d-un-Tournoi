<?php
$connection = mysqli_connect('127.0.0.1', 'root', '', 'uefa_teams');
// Check connection
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}
if (isset($_GET['selectAllUEFAClubs'])) {
  $selectAllUEFAClubs = $connection->query("SELECT * FROM clubs");
    if ($selectAllUEFAClubs -> num_rows > 0) {
      while($row = $selectAllUEFAClubs->fetch_assoc()) {
        $team = ["club_name" => $row['club_name'], "club_country" => $row['club_country'], "club_ranking" => $row['club_ranking'], "club_logo_url" => $row['club_logo'], "league_place" => $row['league_place']];
        $allTeamsFetched[] = $team;
      }
      echo json_encode($allTeamsFetched);
    }
}
if (isset($_GET['selectAllUEFANations'])) {
  $selectAllUEFANations = $connection->query("SELECT nation_name FROM member_associations");
    if ($selectAllUEFANations -> num_rows > 0) {
      while($row = $selectAllUEFANations->fetch_assoc()) {
        $team = ["nation_name" => $row['nation_name']];
        $allNationsFetched[] = $team;
      }
      echo json_encode($allNationsFetched);
    }
}
?>
