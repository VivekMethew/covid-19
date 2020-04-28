<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Cuvid_19.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Covid-19, All information</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/chart.css" />
    <script src="covidData/highcharts.js"></script>
    <script src="covidData/exporting.js"></script>
    <script src="covidData/export-data.js"></script>
    <script src="covidData/accessibility.js"></script>



</head>
<body>
    <form id="form2" runat="server">

        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom p-3">
                <a class="navbar-brand pl-4 text-dark font-weight-bold" href="#"><span><img src="https://corona.lmao.ninja/assets/img/flags/in.png" width="40" height="40" alt="flag" class="mr-3" style="border-radius: 50%;" /></span>Covid-19</a>
                <button class="navbar-toggler bg-info" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse pl-4" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto pr-4">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">States</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="countries.aspx">Contries</a>
                        </li>
                    </ul>
                    
                </div>
            </nav>
        </header>

        <section class="sect0 m-3">
            <div class="container-fluid">
                <div class="sliderBox">
                    <div class="topListed">
                        <div class="row">
                            <div class="col-lg-6 pt-4 float-right">
                                <figure class="highcharts-figure border mt-1 p-1 bg-info">
                                    <div id="container1"></div>
                                </figure>
                            </div>

                            <div class="col-lg-6 mt-4">
                                <h3>Latest News</h3>
                                <iframe style="width: 100%; height: 380px;" src="https://www.youtube.com/embed/WKL_MCtRFl0?start=15" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="sect01 mt-3 p-4">
            <div class="container-fluid">
                <h3 class="mt-3 border-bottom col-lg-5 pb-3">Corona Latest Updates in india</h3>
                <div class="row mt-2">
                    <div class="col-lg-2">
                        <div class="cases border" style="background: #ebe722;">
                            <h3>Total Cases</h3>
                            <p><span id="inTotalCases">0</span></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="cases border" style="background: #ee7d7d;">
                            <h3>New Cases</h3>
                            <p><span id="inNewCases">0</span></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="cases border" style="background: #358fea;">
                            <h3>Active</h3>
                            <p><span id="inActiveCases">0</span></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="cases border" style="background: #5beb22;">
                            <h3>Recovered</h3>
                            <p><span id="inRecoveredCases">0</span></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="cases border" style="background: #b9b9a8;">
                            <h3>Total Deaths</h3>
                            <p><span id="inTotalDeaths">0</span></p>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="cases border" style="background: #1ceddb;">
                            <h3>Tests</h3>
                            <p><span id="inTotalTest">0</span></p>
                        </div>
                    </div>




                </div>
            </div>
        </section>


        <section class="sect02">
            <div class="container bg-light p-4">
                <div class="row">
                <div class="col-lg-12 text-center">
                <img src="https://tpc.googlesyndication.com/simgad/8254730820562119897?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qnQ91rAuq4WYXQAbrUa5Puo0yqvow" width="100%" height="100" />    
                </div>
            </div>
            </div>
        </section>




        <section class="sect1">
            <div class="container-fluid">
                <div class="row mt-5">
                    <div class="col-lg-4">
                        <div class="addBox overflow-hidden text-center p-5" style="height: 500px;">
                            <h3 class="text-light">Adds</h3>
                            <img src="https://s0.2mdn.net/simgad/831188454344678349" height="280" width="336" alt="No Adds" />
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <figure class="highcharts-figure border border-info">
                            <div id="container"></div>
                            <p class="highcharts-description">
                            </p>
                        </figure>
                    </div>

                    <div class="col-lg-4 ">
                        <div class="details border  mr-4 p-3">
                            <h3 class="text-uppercase pt-2">global Stats</h3>
                            <hr class="bg-light" />

                            <ul>
                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Cases</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="cases">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Today Cases</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="todayCases">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Active</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="active">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Recovered</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="recovered">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Critical</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="critical">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Deaths</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="deaths">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />
                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Today Deaths</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="todayDeaths">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;" id="affectedCountries">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />
                            </ul>

                        </div>

                    </div>

                </div>
            </div>
        </section>



        <section class="adds3 mt-4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <img src="https://www.belch.com/blog/wp-content/uploads/2011/04/drive_by_cache.png" width="100%" height="150" alt="ads 3" style="border:1px solid #333;"/>
                    </div>
                </div>
            </div>
        </section>

        <section class="most-affected-states mt-5">
            <div class="container border-top pt-3">
                <div class="row">
                    <div class="col-lg-6 border-bottom pb-2 pt-2">
                        <h3 class="font-weight-bold">Top 10 Affected Countries</h3>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-lg-6 ">
                        <div class="states-list">
                            <ol>
                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />

                                <li>
                                    <div class="cases pl-3 pr-3">
                                        <div class="float-left">
                                            <span class="font-weight-bold">Affected Countries</span>
                                        </div>
                                        <div class="float-right">
                                            <span style="color: #fb7268;">0</span>
                                        </div>
                                    </div>
                                </li>
                                <hr class="bg-light" />


                            </ol>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="HelpLineNumber p-4 border ml-5 mt-3 bg-light">
                            <h3 class="font-weight-bold">Corona Contacts</h3>
                            <ul class="pt-2">
                                <li class="list-unstyled p-2 font-weight-bold">Helpline Number :<span class="text-primary font-italic">+91-11-23978046</span></li>
                                <li class="list-unstyled p-2 font-weight-bold">Toll Free : <span class="text-primary font-italic">1075</span> </li>
                                <li class="list-unstyled p-2 font-weight-bold">Helpline Email ID : <span class="text-primary font-italic">ncov2019@gov.in</span></li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <footer class="footer bg-dark p-5 mt-3 text-light">
            <h1 class="text-center pt-2">Covid-19</h1>
        </footer>
    </form>



    <script src="js/chart.js"></script>
    <script src="covidData/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
