<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="countries.aspx.cs" Inherits="Cuvid_19.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Countries wise Details</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/countriesStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg-info p-2">
            <div class="row">
                <div class="col-lg-12 p-3">
                    <asp:HyperLink ID="goHome" runat="server" NavigateUrl="~/index.aspx" CssClass="text-light text-decoration-none font-weight-bold" Text="Go Back : Covid-19"></asp:HyperLink>
                </div>
            </div>

        </div>
        <div class="container-fluid bg-info p-5">
            <div class="row" id="countryData"></div>
            
        </div>



    </form>
    <script src="js/chart.js"></script>
    <script src="js/jquery-3.5.0.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
