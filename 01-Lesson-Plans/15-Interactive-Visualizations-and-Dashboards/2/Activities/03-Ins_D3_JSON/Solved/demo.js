const url = "https://api.spacexdata.com/v2/launchpads";

// // Fetch the JSON data and console log it
// d3.json(url).then(function(data) {
//   console.log(data);
// });


// var dataPromise =  d3.json(url).then(function(data){
//   return data
// });
// console.log(dataPromise);
var arrays = [];
var datasets;
var blah;
d3.json(url).then(function(data)
    {
      datasets=data;
    });

    
    var blackout = setTimeout(function()
    {
     return datasets
    },
    3000)

    console.log(blackout);