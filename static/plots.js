
//var firstsample='';

function getCountryOptions() {
  
    var selDataset = document.getElementById('selCountry');
    
    Plotly.d3.json('/countrynames', function(error, sampleNames) {
        console.log(sampleNames.countryname[0]);
        for (var i = 1; i < sampleNames.countryname.length;  i++) {
            
            var currentOption = document.createElement('option');
                currentOption.text = sampleNames.countryname[i];
                currentOption.value = sampleNames.countrycode[i];
                currentOption.id = i;
                
             selDataset.appendChild(currentOption);
       }
    
    })

}

function setTimeSeriesOptions()  {
    var selDataset = document.getElementById('selFrom');
    var selDataset1 = document.getElementById('selTo');
    var year = 2000;

        for (var i = 0; i < 16;  i++) {
            
            var currentOption = document.createElement('option');
                currentOption.text = year.toString();
                currentOption.value = year;
                currentOption.id = i;
                year = year +1;
                
             selDataset.appendChild(currentOption);
        
       }

       year = 2001;
       for (var i = 1; i < 17;  i++) {
            
          var currentOption = document.createElement('option');
            currentOption.text = year.toString();
            currentOption.value = year;
            currentOption.id = i;
            year = year +1;
       
         selDataset1.appendChild(currentOption);
   }
}

function renderLine(newx, newy, country, indicator,startyear, endyear) {
  
    var indicatorstr;

    if (indicator=='GDP')
    {
         indicatorstr='GDP';
    }
    else if (indicator=='Population')
    {
        indicatorstr='Population';
    }
    else if (indicator=='CO2 Emmission')
    {
        indicatorstr='CO2 Emmission (kt)';
    }
    else if (indicator=='Renewable Energy')
    {
        indicatorstr='Renewable Energy (%)';
    }
    else
    {
        indicatorstr='Access to Electricity (% of Population)';
    }

    var trace1 = {
            type: "scatter",
            mode: "lines",
            name: name,
            x: newx,
            y: newy,
            line: {
              color: "#17BECF"
            }
          };
      

          var data = [trace1];
      
          var titlestr = country + " " + indicator + " " + startyear + "-" + endyear;
          var layout = {
            title: titlestr,
            xaxis: {
              range: [startyear, endyear],
              type: "date"
            },
            yaxis: {
              autorange: true,
              type: "linear",
              title: indicatorstr
            },
          //  showlegend: false
          };
      
          Plotly.newPlot("line", data, layout);
      
    }

function selCountryChanged(inputcode){
    var start_year = document.getElementById('selFrom').value;
    var end_year = document.getElementById('selTo').value;
    var countryid = document.getElementById('selCountry');
    var country = countryid.options[countryid.selectedIndex].text;
    var indicator = document.getElementById('selIndicator').value;

    var indicatorstr='/gdpinfo/'; 
    if (indicator=='GDP')
    {
         indicatorstr='/gdpinfo/';
    }
    else if (indicator=='Population')
    {
        indicatorstr='/populationinfo/';
    }
    else if (indicator=='CO2 Emmission')
    {
        indicatorstr='/co2emission/';
    }
    else if (indicator=='"Renewable Energy')
    {
        indicatorstr='/pctrenewable/';
    }
    else
    {
        indicatorstr='/pctaccess/';
    }

    var linkstr = indicatorstr+inputcode + "/" + start_year + "/"+end_year
   
    Plotly.d3.json(linkstr, function(error, countrydata) {
        var y_value = [];
        var x_value = [];
        console.log(countrydata);
        for(var i =0; i<countrydata.length;i++)
        {
            y_value.push(countrydata[i].data);
            x_value.push(countrydata[i].year);
        }
        
       renderLine(x_value,y_value,country, indicator, start_year,end_year);
    })

}

function selIndicatorChanged(inputcode){
    var start_year = document.getElementById('selFrom').value;
    var end_year = document.getElementById('selTo').value;
    var countryid = document.getElementById('selCountry');
    var country = countryid.options[countryid.selectedIndex].text;
    var countrycode = document.getElementById('selCountry').value;

    var indicatorstr; 
    if (inputcode=='GDP')
    {
         indicatorstr='/gdpinfo/';
    }
    else if (inputcode=='Population')
    {
        indicatorstr='/populationinfo/';
    }
    else if (inputcode=='CO2 Emmission')
    {
        indicatorstr='/co2emission/';
    }
    else if (inputcode=='Renewable Energy')
    {
        indicatorstr='/pctrenewable/';
    }
    else
    {
        indicatorstr='/pctaccess/';
    }
    var linkstr = indicatorstr+countrycode + "/" + start_year + "/"+end_year
    Plotly.d3.json(linkstr, function(error, countrydata) {
        var y_value = [];
        var x_value = [];
        console.log(countrydata);
        for(var i =0; i<countrydata.length;i++)
        {
            y_value.push(countrydata[i].data);
            x_value.push(countrydata[i].year);
        }
        
       renderLine(x_value,y_value,country, inputcode, start_year,end_year);
    })
   
}

function selFromYearChanged(inputcode){
    var start_year =inputcode;
    var end_year = document.getElementById('selTo').value;
    var indicator = document.getElementById('selIndicator').value;
    var countryid = document.getElementById('selCountry');
    var country = countryid.options[countryid.selectedIndex].text;
    var countrycode = document.getElementById('selCountry').value;

    var indicatorstr; 
    if (indicator=='GDP')
    {
         indicatorstr='/gdpinfo/';
    }
    else if (indicator=='Population')
    {
        indicatorstr='/populationinfo/';
    }
    else if (indicator=='CO2 Emmission')
    {
        indicatorstr='/co2emission/';
    }
    else if (indicator=='"Renewable Energy')
    {
        indicatorstr='/pctrenewable/';
    }
    else
    {
        indicatorstr='/pctaccess/';
    }
    var linkstr = indicatorstr+countrycode + "/" + start_year + "/"+end_year
  
    Plotly.d3.json(linkstr, function(error, countrydata) {
        var y_value = [];
        var x_value = [];
        for(var i =0; i<countrydata.length;i++)
        {
            y_value.push(countrydata[i].data);
            x_value.push(countrydata[i].year);
        }
        
       renderLine(x_value,y_value,country, indicator, start_year,end_year);
    })
   
}
function selToYearChanged(inputcode){
    var start_year =document.getElementById('selFrom').value;
    var end_year = inputcode;
    var indicator = document.getElementById('selIndicator').value;
    var countryid = document.getElementById('selCountry');
    var country = countryid.options[countryid.selectedIndex].text;
    var countrycode = document.getElementById('selCountry').value;
    console.log(inputcode);

    var indicatorstr; 
    if (indicator=='GDP')
    {
         indicatorstr='/gdpinfo/';
    }
    else if (indicator=='Population')
    {
        indicatorstr='/populationinfo/';
    }
    else if (indicator=='CO2 Emmission')
    {
        indicatorstr='/co2emission/';
    }
    else if (indicator=='"Renewable Energy')
    {
        indicatorstr='/pctrenewable/';
    }
    else
    {
        indicatorstr='/pctaccess/';
    }
    var linkstr = indicatorstr+countrycode + "/" + start_year + "/"+end_year
  
    Plotly.d3.json(linkstr, function(error, countrydata) {
        var y_value = [];
        var x_value = [];
        for(var i =0; i<countrydata.length;i++)
        {
            y_value.push(countrydata[i].data);
            x_value.push(countrydata[i].year);
        }
        
       renderLine(x_value,y_value,country, indicator, start_year,end_year);
    })

   
}

function init() {

    getCountryOptions();
    setTimeSeriesOptions();
   
    var linkstr = "/gdpinfo/WLD/2000/2016"
    Plotly.d3.json(linkstr, function(error, countrydata) {
        var y_value = [];
        var x_value = [];
        console.log(countrydata);
        for(var i =0; i<countrydata.length;i++)
        {
            y_value.push(countrydata[i].data);
            x_value.push(countrydata[i].year);
        }
        
       var trace1 = {
        type: "line",
      //  mode: "lines",
        name: name,
        x: x_value,
        y: y_value,
        line: {
          color: "#17BECF"
        }
      };
  
  
      var data = [trace1];
  
      var titlestr = "World GDP 2000-2016";
      var layout = {
        title: titlestr,
        xaxis: {
          range: x_value,
          type: "date"
        },
        yaxis: {
          autorange: true,
          type: "linear"
        },
      //  showlegend: false
      };
  
      Plotly.newPlot("line", data, layout);
  
    })
   
}


init();

   