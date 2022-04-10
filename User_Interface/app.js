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
                "<td>"+(filteredPlayers[i]['Player_Name'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Value_Euro'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Predicted_Value_Euro'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Age'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Sliding'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Agility'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Short_Passing'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Interceptions'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Jumping'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Positioning'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Curve'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Crossing'])+"</td>"+
                "<td>"+(filteredPlayers[i]['Freekick_Accuracy'])+"</td>"
            )
        }

    };

});