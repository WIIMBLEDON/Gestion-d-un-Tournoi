$(".drawOptionButtons, .fixtureList").hide();
var championsLeague = {
  potentialTeams: [],
  // callback(result){
  //   this.potentialTeams = JSON.parse(result);
  // }
  getAllTeams(){
    return $.ajax({
        url: 'functions.php?selectAllUEFAClubs',
        type: 'GET'
    });
  }
};
var groupStageTeams = [];
function prepareTeamsForDraw(){
  $(".potentialTeams").remove();
  championsLeague.getAllTeams().done(function(result){
    championsLeague.potentialTeams = JSON.parse(result);
    $(".drawOptionButtons").show();
    groupStageTeams = [];
    // choose groupStageTeams out of all potentialTeams until groupStageTeams is filled with 32 teams
    (function (){
      // choose any 32 teams from potentialTeams
      if (groupStageTeams.length === 0 ) {
        (function fillPotsWith32teams(maxNumberOfTeams){
          while (groupStageTeams.length < maxNumberOfTeams) {
            let randomizer = 0;
            for (let i = 0; i < championsLeague.potentialTeams.length; i++) {
              let randomNumber = ((Math.random()*10 + randomizer*10) / 10).toFixed(2);
              if ( randomNumber <= 0.80 ) {
                let teamSuccessfullySelected = championsLeague.potentialTeams[i];
                let country = teamSuccessfullySelected.club_country;
                let clubsFromSameCountry = groupStageTeams.filter(x => x.club_country == country);
                if (clubsFromSameCountry.length <= 3) {
                  groupStageTeams.push(teamSuccessfullySelected);
                  championsLeague.potentialTeams.splice(championsLeague.potentialTeams.indexOf(teamSuccessfullySelected), 1);
                }
                // adjust randomizer
                Math.random() >= 0.5 ? randomizer += 0.05 : randomizer-=0.08;
                if (groupStageTeams.length === maxNumberOfTeams) {
                  return;
                }
              }
            }
          }
        })(32);
      }
      // sort the chosen clubs by ranking
      groupStageTeams.sort((a,b) => a.club_ranking - b.club_ranking);
      // fill pots from 1 to 4, each consisting of 8 teams
      (function fillPots(){
        for (var i = 0; i < groupStageTeams.length; i++) {
          var club = groupStageTeams[i];
          var image = document.createElement("IMG");
          image.src=`${club.club_logo_url}`;
          $("li.team")[i].prepend(image);
          $("li.team")[i].append( document.createTextNode( club.club_name ) );
        }
      })();
    })();
  });
}

var groupA = {group_name: 'Group A', group_nations: []};
var groupB = {group_name: 'Group B', group_nations: []};
var groupC = {group_name: 'Group C', group_nations: []};
var groupD = {group_name: 'Group D', group_nations: []};
var groupE = {group_name: 'Group E', group_nations: []};
var groupF = {group_name: 'Group F', group_nations: []};
var groupG = {group_name: 'Group G', group_nations: []};
var groupH = {group_name: 'Group H', group_nations: []};
var allGroups = [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH];
// draw each next team until pots are empty
var potArray = [];
$(".drawNext").click(function drawNext(){
  if($(".potsArea li.team").length > 0){
    // get the pot of the next team to be drawn
    var currentPot = $(".potsArea li.team:first").parent().siblings(".pot").text();
    var currentPotNumber = Number(currentPot.match(/\d/));
    // number of teams remaining in this pot
    var numberOfteamsInPot = $(`.pot:contains(${currentPot})`)
    .siblings(".teamsInPot").find("li.team").length;
    if (numberOfteamsInPot == 8) {
      // find the teams with the least possible groups available
      $(`.pot:contains(${currentPot})`)
      .siblings(".teamsInPot").find("li.team").each(function(){
        potArray.push(groupStageTeams.find(x => x.club_name == this.textContent));
        // on every added team we look to how many groups it can potentially go
        potArray[potArray.length-1].potentialGroups = (function(){
          // compare the club's nation with nation arrays of each group
          let groupsAvailableForThisClub = [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH];
          for (let i = 0; i<allGroups.length; i++){
            for (let a = 0; a<allGroups[i].group_nations.length; a++) {
              // if the club's country matches a country in this current group that we're looping through, don't count this group as a possibility
              if (potArray[potArray.length-1].club_country == allGroups[i].group_nations[a]) {
                groupsAvailableForThisClub.splice(groupsAvailableForThisClub.indexOf(allGroups[i]), 1);
                break;
              }
            }
          }
          return groupsAvailableForThisClub.length;
        })();
      });
      // sort clubs so that the clubs with the least possible groups available will be drawn first
      potArray.sort( (a, b) => a.potentialGroups - b.potentialGroups );
    } else {

    }
    // function describing how to distribute a team in groups to avoid nation conflicts
    function findAvailableGroups(clubCountry) {
      // compare the club's nation with nation arrays of each group
      let groupsAvailableForThisClub = [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH];
      // loop through ALL groups to scan each of them for the same nations as the one of the currently selected club
      for (let i = 0; i<allGroups.length; i++){
        // inside each particular possible group, scan for the same nation's presence
        // if there are 4 teams in this group, don't count this group as a possibility
        if (allGroups[i].group_nations.length >= currentPotNumber) {
          groupsAvailableForThisClub.splice(groupsAvailableForThisClub.indexOf(allGroups[i]), 1);
          continue;
        }
        for (let a = 0; a<allGroups[i].group_nations.length; a++) {
          // if the club's country matches a country in this current group that we're looping through, don't count this group as a possibility
          if (clubCountry == allGroups[i].group_nations[a]) {
            groupsAvailableForThisClub.splice(groupsAvailableForThisClub.indexOf(allGroups[i]), 1);
            break;
          }
        }
      }
      return groupsAvailableForThisClub;
    }
    function findFinalGroupForThisClub(groupsAvailableForThisClub, clubCountry) {
      if (groupsAvailableForThisClub.length > 0) {
        var finalGroupForThisClub = groupsAvailableForThisClub[Math.round(Math.random()*(groupsAvailableForThisClub.length-1))].group_name;
        // push finalGroupForThisClub into the relevant group's nations array
        for (var c = 0; c < allGroups.length; c++){
          // loop through all groups and find match with finalGroupForThisClub
          if (allGroups[c].group_name == finalGroupForThisClub){
            allGroups[c].group_nations.push(clubCountry);
            break;
          }
        }
        return finalGroupForThisClub;
      } else {
        console.log('nation conflict. Resolved...');
        groupsAvailableForThisClub = [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH];
        for (let g = 0; g < allGroups.length; g++) {
          if (allGroups[g].group_nations.length < currentPotNumber) {
            var groupForForcedDraw = allGroups[g].group_name;
            break;
          }
        }
        // push club's nation to the list of nations in the forced group
        for (let p = 0; p < allGroups.length; p++){
          // loop through all groups and find match with finalGroupForThisClub
          if (allGroups[p].group_name == groupForForcedDraw) {
            allGroups[p].group_nations.push(clubCountry);
            break;
          }
        }
        return groupForForcedDraw;
      }
    }
    // get a random team from the current pot or if there are 2 teams, test both of them
    // if (numberOfteamsInPot == 2) {
    //   var drawnTeam = $(`.pot:contains(${currentPot})`)
    //   .siblings(".teamsInPot").find("li.team")
    //   .get(1);
    //   var nextTeam = $(`.pot:contains(${currentPot})`)
    //   .siblings(".teamsInPot").find("li.team")
    //   .get(0);
    //   // get club name and country name for both of the two last groups in the pot
    //   var firstClubName = drawnTeam.textContent;
    //   var firstClubCountry = groupStageTeams.filter(x => x.club_name == firstClubName)[0].club_country;
    //   var nextClubName = nextTeam.textContent;
    //   var nextClubCountry = groupStageTeams.filter(x => x.club_name == nextClubName)[0].club_country;
    //   // returns finalGroupForThisClub
    //   var groupsAvailableForTeam1 = findAvailableGroups(firstClubCountry);
    //   var groupsAvailableForTeam2 = findAvailableGroups(nextClubCountry);
    //   if (groupsAvailableForTeam1.length > groupsAvailableForTeam2.length) {
    //     /* Draw the team with the least number of groups available first thing */
    //     var finalGroupForTeam2 = findFinalGroupForThisClub(groupsAvailableForTeam2, nextClubCountry);
    //     // find a cell inside finalGroupForThisClub to move the drawnTeam to
    //     var possibleCells = $(`.groupName:contains(${finalGroupForTeam2})`)
    //     .siblings("table").find("td");
    //     for (let c = 0; c < possibleCells.length; c++) {
    //       if (possibleCells[c].innerHTML == "") {
    //         possibleCells[c].append(nextTeam);
    //         break;
    //       }
    //     }
    //   } else {
    //     var finalGroupForTeam1 = findFinalGroupForThisClub(groupsAvailableForTeam1, firstClubCountry);
    //     // find a cell inside finalGroupForThisClub to move the drawnTeam to
    //     var possibleCells = $(`.groupName:contains(${finalGroupForTeam1})`)
    //     .siblings("table").find("td");
    //     for (let c = 0; c < possibleCells.length; c++) {
    //       if (possibleCells[c].innerHTML == "") {
    //         possibleCells[c].append(drawnTeam);
    //         break;
    //       }
    //     }
    //   }
    // } else {
      // if number of teams remaining in the pot is not 2
    // var drawnTeam = $(`.pot:contains(${currentPot})`)
    // .siblings(".teamsInPot").find("li.team")
    // .get(Math.round(Math.random()*(numberOfteamsInPot-1)));
    var drawnTeam = $(`li.team:contains(${potArray[0].club_name})`).get(0);
    // find out the club's country
    var clubName = potArray[0].club_name;
    var clubCountry = potArray[0].club_country;
    // returns finalGroupForThisClub
    var groupsAvailable = findAvailableGroups(clubCountry);
    var finalGroup = findFinalGroupForThisClub(groupsAvailable, clubCountry);
    // find a cell inside finalGroupForThisClub to move the drawnTeam to
    var possibleCells = $(`.groupName:contains(${finalGroup})`)
    .siblings("table").find("td");
    var emptyCells = [];
    for (let c = 0; c < possibleCells.length; c++) {
      if (possibleCells[c].innerHTML == "") {
        emptyCells.push(possibleCells[c]);
      }
    }
    let luckyCell = emptyCells[Math.round(Math.random()*(emptyCells.length-1))];
    luckyCell.append(drawnTeam);
    $(`td:contains(${potArray[0].club_name})`).addClass("justAdded");
    potArray.splice(0,1);
    // }
    // check if any teams still remain in pots
    if ($(".potsArea li.team").length == 0) {
      $(".drawOptionButtons, .potsArea, .buttons").remove();
      $(".groupsArea").after(`<button class="btn btn-primary replayDraw">Replay</button>`);
      $(".fixtureList").show();
      (function createFixturesCalendar(){
        for(let g = 0; g < allGroups.length; g++){
          // create arrays of team names from each of the groups
          let groupName = allGroups[g].group_name;
          var thisGroupTeams = [];
          let numberOfTeamsInGroup = $(`.groupName:contains(${groupName})`).siblings("table").find(".team").length;
          // create HTML structure of the fixtureList
          $("ul.nav.nav-tabs").append(`<li role="presentation" ${g==0 ? 'class="active"' : ''}><a href="#${allGroups[g].group_name.replace(/\s/g, '').toLowerCase()}" aria-controls="${allGroups[g].group_name.replace(/\s/g, '').toLowerCase()}" role="tab" data-toggle="tab">${groupName}</a></li>`);
          $("div.tab-content").append(`<div role="tabpanel" class="tab-pane ${g==0 ? 'active' : ''}" id="${allGroups[g].group_name.replace(/\s/g, '').toLowerCase()}"></div>`);
          for (let t = 0; t < numberOfTeamsInGroup; t++) {
            let groupTeam = $(`.groupName:contains(${groupName})`).siblings("table").find(".team")[t].textContent;
            thisGroupTeams.push(groupTeam);
          }
          // create fixtures according to UEFA rules (appending each to a div inside our group's tab)
          $("div.tab-pane").eq(g).append(
            `<table class="table  table-condensed fixturesTable">
              <tbody>
                <tr class="matchday"><td colspan="3">Matchday 1</td></tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[1]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[1]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[2]).club_logo_url}">${thisGroupTeams[2]}</td>
                </tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[3]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[3]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[0]).club_logo_url}">${thisGroupTeams[0]}</td>
                </tr>
                <tr class="matchday"><td colspan="3">Matchday 2</td></tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[0]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[0]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[1]).club_logo_url}">${thisGroupTeams[1]}</td>
                </tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[2]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[2]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[3]).club_logo_url}">${thisGroupTeams[3]}</td>
                </tr>
                <tr class="matchday"><td colspan="3">Matchday 3</td></tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[1]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[1]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[3]).club_logo_url}">${thisGroupTeams[3]}</td>
                </tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[2]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[2]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[0]).club_logo_url}">${thisGroupTeams[0]}</td>
                </tr>
                <tr class="matchday"><td colspan="3">Matchday 4</td></tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[0]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[0]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[2]).club_logo_url}">${thisGroupTeams[2]}</td>
                </tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[3]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[3]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[1]).club_logo_url}">${thisGroupTeams[1]}</td>
                </tr>
                <tr class="matchday"><td colspan="3">Matchday 5</td></tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[0]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[0]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[3]).club_logo_url}">${thisGroupTeams[3]}</td>
                </tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[2]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[2]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[1]).club_logo_url}">${thisGroupTeams[1]}</td>
                </tr>
                <tr class="matchday"><td colspan="3">Matchday 6</td></tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[1]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[1]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[0]).club_logo_url}">${thisGroupTeams[0]}</td>
                </tr>
                <tr class="match">
                  <td class="home">${thisGroupTeams[3]}<img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[3]).club_logo_url}"></td><td class="vs">v</td><td class="away"><img src="${groupStageTeams.find(x=>x.club_name == thisGroupTeams[2]).club_logo_url}">${thisGroupTeams[2]}</td>
                </tr>
              </tbody>
            </table>`
          );
        }
      })();
    }
  }
});
$("body").on("click", ".replayDraw", function(){
  console.log('reloading...');
  location.reload();
});
