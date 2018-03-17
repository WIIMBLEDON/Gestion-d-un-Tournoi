<?php
// header("Content-Type: application/json", true);
$connection = mysqli_connect('localhost', 'ikushlia_ilya', 'kalmar12', 'ikushlia_uefa_teams');
// Check connection
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

  
      //$result = mysqli_query($connection, "SELECT * FROM clubs");          //query
      //$array = mysqli_fetch_row($result);                          //fetch result    
      //echo json_encode($array);

  $selectAllUEFAClubs = mysqli_query($connection, "SELECT * FROM clubs");
    //if ($selectAllUEFAClubs) {
      $allTeamsFetched = array();
      $teamsstring = '';
      $teamsstring .= '[';
       while($row = $selectAllUEFAClubs->fetch_assoc() ) {
	       $team = array( 
	        "club_name" => $row["club_name"], 
	        "club_country" => $row['club_country'], 
	        "club_ranking" => $row['club_ranking'], 
	        "club_logo_url" => $row['club_logo'], 
	        "league_place" => $row['league_place'] 
	        );
	        
	        $tempTeamVar = json_encode($team);
	        if ($tempTeamVar == false) {
	        continue;
	        }
	        else {
	        
	        
                $teamsstring .= $tempTeamVar;
                $teamsstring .= ",";
                }
      }
      
      $teamsstring = rtrim($teamsstring,',');
      $teamsstring .= ']';
      echo $teamsstring;
      
      //echo json_encode($allTeamsFetched) or die ('json is not right');
      //echo $res;
      
      //echo json_encode($allTeamsFetched) or die ('json is not right');
      //echo "<pre>"; echo json_encode($allTeamsFetched); echo "</pre>";
      
   // }