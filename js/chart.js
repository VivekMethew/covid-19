

function fetchDatta() {
    url = 'https://corona.lmao.ninja/v2/countries';
    fetch(url).then((res) => {
        return res.json();
    }).then((data) => {
        console.log(data[92].countryInfo.flag);
        document.getElementById('inTotalCases').innerHTML = data[92].cases;
      
        document.getElementById('inNewCases').innerHTML = data[92].todayCases;
        document.getElementById('inActiveCases').innerHTML = data[92].active;
        document.getElementById('inRecoveredCases').innerHTML = data[92].recovered;
        
        document.getElementById('inTotalDeaths').innerHTML = data[92].deaths;
        document.getElementById('inTotalTest').innerHTML = data[92].tests;

    });
}
fetchDatta();
loadData();
function loadData() {
    url = 'https://corona.lmao.ninja/v2/countries';
    fetch(url).then((res) => {
        return res.json();
    }).then((data) => {
        //console.log('Country Data');
        //console.log(data[0].countryInfo.flag);
        //  console.log('my name vivek kumar');


        $(document).ready(function () {
            for (let i = 0; i < 212; i++) {
               
                    $('#countryData').append(`<div class="col-lg-3 p-2">
                    <div class="country_Details border">
                        <div class="activeBox">
                            <div class="imgBox" style="margin-left:20px; width: 150px; height: 100px; overflow:hidden; border: 2px solid #fff; border-radius: 50px;">
                                <img src="${data[i].countryInfo.flag}" style="width: 150px; height: 100px;" alt="country flag" />
                            </div>
                            <h3 class="font-weight-bold pt-2">${data[i].country}</h3>
                            <p>${data[i].cases}</p>
                        </div>
                        <div class="detailsBox">
                            <ul class="list-unstyled">
                                
                                <li class="font-weight-bold">Continent : <span class="text-light pl-1">${data[i].continent}</span></li>
                                <li class="font-weight-bold">Cases : <span class="text-danger pl-1">${data[i].cases}</span></li>
                                <li class="font-weight-bold">Today Cases :<span class="text-danger pl-1">${data[i].todayCases}</span></li>
                                <li class="font-weight-bold">Deaths :<span class="text-danger pl-1">${data[i].deaths}</span></li>
                                <li class="font-weight-bold">Today Deaths :<span class="text-danger pl-1">${data[i].todayDeaths}</span></li>
                                <li class="font-weight-bold">Recovered :<span class="text-danger pl-1">${data[i].recovered}</span></li>
                                <li class="font-weight-bold">Active :<span class="text-danger pl-1">${data[i].active}</span></li>
                                <li class="font-weight-bold">Critical :<span class="text-danger pl-1">${data[i].critical}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>`);
            }
        });


    });

}