d3.csv("front_end.csv").then(function (data){
    // this variable is the CSV
    var fifa=data;
   
    // button variable 
    var button=d3.select("#button");
    // form variable 
    var form=d3.select("#form");
    // cicks 
    button.on("click",runEnter);
    form.on("submit",runEnter);

    // Define Function 
    function runEnter(){
        // select tbody from html and clear the results 
        d3.select("tbody").html("")
        // prevent the page from reloading 
        d3.event.preventDefault();
        // define user input 
        var inputValue=d3.select("#user-input").property("value");
        // filter based on input value 
        var filteredPlayers=fifa.filter(fifa =>fifa.Name.includes(inputValue));
        // populate table 
        for (var i=0; i<filteredPlayers.length; i++){
            d3.select("tbody").insert("tr").html(
                "<td>"+(filteredPlayers[i]['player_name'])+"</td>"+
                "<td>"+(filteredPlayers[i]['value_euro'])+"</td>"+
                "<td>"+(filteredPlayers[i]['predicted_value_euro'])+"</td>"+
                "<td>"+(filteredPlayers[i]['age'])+"</td>"+
                "<td>"+(filteredPlayers[i]['sliding_tackle'])+"</td>"+
                "<td>"+(filteredPlayers[i]['agility'])+"</td>"+
                "<td>"+(filteredPlayers[i]['short_passing'])+"</td>"+
                "<td>"+(filteredPlayers[i]['interceptions'])+"</td>"+
                "<td>"+(filteredPlayers[i]['jumping'])+"</td>"+
                "<td>"+(filteredPlayers[i]['positioning'])+"</td>"+
                "<td>"+(filteredPlayers[i]['curve'])+"</td>"+
                "<td>"+(filteredPlayers[i]['crossing'])+"</td>"+
                "<td>"+(filteredPlayers[i]['freekick_accuracy'])+"</td>"
            )
        }

    };

});