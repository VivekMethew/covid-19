
function fetchData() {
    //console.log('Here is Api Data');
    url = 'https://corona.lmao.ninja/v2/all';
    fetch(url).then((res) => {
        return res.json();
    }).then((data) => {
        document.getElementById('cases').innerHTML = data.cases;
        document.getElementById('todayCases').innerHTML = data.todayCases;
        document.getElementById('active').innerHTML = data.active;
        document.getElementById('recovered').innerHTML = data.recovered;
        document.getElementById('critical').innerHTML = data.critical;
        document.getElementById('deaths').innerHTML = data.deaths;
        document.getElementById('todayDeaths').innerHTML = data.todayDeaths;
        document.getElementById('affectedCountries').innerHTML = data.affectedCountries;

        
        Highcharts.chart('container', {

            chart: {
                styledMode: true
            },

            title: {
                text: 'World Wide Data'
            },


            series: [{
                type: 'pie',
                allowPointSelect: true,
                keys: ['name', 'y', 'selected', 'sliced'],
                data: [
                    ['Total Cases', data.cases, false],
                    ['Recovered', data.recovered, false],
                    ['Deaths', data.deaths, false],
                    ['Active', data.active, false]
                    
                ],
                showInLegend: true
            }]
        });


        
    });
}
fetchData();
fetData1();

function fetData1() {
    url = 'https://api.covid19india.org/data.json';
    fetch(url).then((res) => {
        return res.json();
    }).then((data) => {
        //console.log(data.statewise.length);
        let statesCases = [];
        let statesNames = [];
        
        for (let i = 1; i <=10;i++) {
            statesCases.push(parseInt(data.statewise[i].confirmed));
            statesNames.push(data.statewise[i].state);
            //console.log(parseInt(data.statewise[i].confirmed))
        }
        

        var chart = Highcharts.chart('container1', {
        chart: {
            inverted: true,
            polar: false
        },
        title: {
            text: 'Top 10 States Corona Positives'
        },

        subtitle: {
            text: '...'
        },

        xAxis: {
            categories: statesNames
        },

        series: [{
            type: 'column',
            colorByPoint: true,
            data: statesCases,
            showInLegend: false
        }]

    });

    });
   
}

