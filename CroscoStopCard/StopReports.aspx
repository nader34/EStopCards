<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StopReports.aspx.cs" Inherits="CroscoStopCard.StopReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports</title>
    
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
    <%--<script src="Scripts/jquery-3.2.1.slim.min.js"></script>--%>
   <%-- <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    --%>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>
   <%-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/searchpanes/1.0.1/css/searchPanes.dataTables.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.1/css/select.dataTables.min.css"/>--%>


    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

    
    <%--<script src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.3.1/js/dataTables.select.min.js"></script>--%>
    <link href="css/Reports.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                STOP Analiza
            </h1>
            <asp:Panel ID="StopAnaliza" runat="server" Width="100%" HorizontalAlign="Center">
                <table id="SAtb1" class="display mydatatable" style="width:100%">
                    <thead>
                        <tr>
                        <th>
                            Podaci
                        </th>
                         <th>
                            Siječanj
                        </th>
                         <th>
                            Veljača
                        </th>
                         <th>
                            Ožujak
                        </th>
                         <th>
                            Q1
                        </th>
                        <th>
                            Travanj
                        </th>
                         <th>
                            Svibanj
                        </th>
                         <th>
                            Lipanj
                        </th>
                         <th>
                            Q2
                        </th>
                        <th>
                            H1
                        </th>
                        <th>
                            Srpanj
                        </th>
                         <th>
                            Kolovoz
                        </th>
                         <th>
                             Rujan
                        </th>
                         <th>
                            Q3
                        </th>
                        <th>
                            Listopad
                        </th>
                         <th>
                            Studeni
                        </th>
                         <th>
                            Prosinac
                        </th>
                         <th>
                            Q4
                        </th>
                        <th>
                            H2
                        </th>
                        <th>
                            Godina
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>
                                01. Dani rada
                            </th>
                            <td>
                                <span id="Dani1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani2" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani3" runat="server"></span>
                            </td>
                            <td>
                                <span id="DaniQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani4" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani5" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani6" runat="server"></span>
                            </td>
                            <td>
                                <span id="DaniQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="DaniH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani7" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani8" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani9" runat="server"></span>
                            </td>
                            <td>
                                <span id="DaniQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani10" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani11" runat="server"></span>
                            </td>
                            <td>
                                <span id="Dani12" runat="server"></span>
                            </td>
                            <td>
                                <span id="DaniQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="DaniH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="DaniY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                02. Broj kartica
                            </th>
                            <td>
                                <span id="K1" runat="server"></span>
                            </td>
                            <td>
                                <span id="K2" runat="server"></span>
                            </td>
                            <td>
                                <span id="K3"></span>
                            </td>
                            <td>
                                <span id="KQ1"></span>
                            </td>
                            <td>
                                <span id="K4" runat="server"></span>
                            </td>
                            <td>
                                <span id="K5" runat="server"></span>
                            </td>
                            <td>
                                <span id="K6" runat="server"></span>
                            </td>
                            <td>
                                <span id="KQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="KH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="K7" runat="server"></span>
                            </td>
                            <td>
                                <span id="K8" runat="server"></span>
                            </td>
                            <td>
                                <span id="K9" runat="server"></span>
                            </td>
                            <td>
                                <span id="KQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="K10" runat="server"></span>
                            </td>
                            <td>
                                <span id="K11" runat="server"></span>
                            </td>
                            <td>
                                <span id="K12" runat="server"></span>
                            </td>
                            <td>
                                <span id="KQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="KH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="KY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                               03. Pozitivne kartice
                            </th>
                            <td>
                                <span id="positive1" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive2" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive3" runat="server"></span>
                            </td>
                            <td>
                                <span id="positiveQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive4" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive5" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive6" runat="server"></span>
                            </td>
                            <td>
                                <span id="positiveQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="positiveH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive7" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive8" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive9" runat="server"></span>
                            </td>
                            <td>
                                <span id="positiveQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive10" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive11" runat="server"></span>
                            </td>
                            <td>
                                <span id="positive12" runat="server"></span>
                            </td>
                            <td>
                                <span id="positiveQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="positiveH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="positiveY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                04. Negativne kartice
                            </th>
                            <td>
                                <span id="negative1" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative2" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative3" runat="server"></span>
                            </td>
                            <td>
                                <span id="negativeQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative4" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative5" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative6" runat="server"></span>
                            </td>
                            <td>
                                <span id="negativeQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="negativeH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative7" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative8" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative9" runat="server"></span>
                            </td>
                            <td>
                                <span id="negativeQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative10" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative11" runat="server"></span>
                            </td>
                            <td>
                                <span id="negative12" runat="server"></span>
                            </td>
                            <td>
                                <span id="negativeQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="negativeH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="negativeY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                05. Nesigurne radnje
                            </th>
                            <td>
                                <span id="UA1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA5" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA6" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA7" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA8" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA9" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA10" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA11" runat="server"></span>
                            </td>
                            <td>
                                <span id="UA12" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                06. Nesigurne uvjete
                            </th>
                            <td>
                                <span id="UC1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC5" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC6" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC7" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC8" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC9" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC10" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC11" runat="server"></span>
                            </td>
                            <td>
                                <span id="UC12" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                07. Otvorene kartice
                            </th>
                            <td>
                                <span id="open1" runat="server"></span>
                            </td>
                            <td>
                                <span id="open2" runat="server"></span>
                            </td>
                            <td>
                                <span id="open3" runat="server"></span>
                            </td>
                            <td>
                                <span id="openQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="open4" runat="server"></span>
                            </td>
                            <td>
                                <span id="open5" runat="server"></span>
                            </td>
                            <td>
                                <span id="open6" runat="server"></span>
                            </td>
                            <td>
                                <span id="openQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="openH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="open7" runat="server"></span>
                            </td>
                            <td>
                                <span id="open8" runat="server"></span>
                            </td>
                            <td>
                                <span id="open9" runat="server"></span>
                            </td>
                            <td>
                                <span id="openQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="open10" runat="server"></span>
                            </td>
                            <td>
                                <span id="open11" runat="server"></span>
                            </td>
                            <td>
                                <span id="open12" runat="server"></span>
                            </td>
                            <td>
                                <span id="openQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="openH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="openY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                08. Kartice u postupku
                            </th>
                            <td>
                                <span id="ongoing1" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing2" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing3" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoingQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing4" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing5" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing6" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoingQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoingH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing7" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing8" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing9" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoingQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing10" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing11" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoing12" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoingQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoingH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="ongoingY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                09. Zatvorene kartice
                            </th>
                            <td>
                                <span id="close1" runat="server"></span>
                            </td>
                            <td>
                                <span id="close2" runat="server"></span>
                            </td>
                            <td>
                                <span id="close3" runat="server"></span>
                            </td>
                            <td>
                                <span id="closeQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="close4" runat="server"></span>
                            </td>
                            <td>
                                <span id="close5" runat="server"></span>
                            </td>
                            <td>
                                <span id="close6" runat="server"></span>
                            </td>
                            <td>
                                <span id="closeQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="closeH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="close7" runat="server"></span>
                            </td>
                            <td>
                                <span id="close8" runat="server"></span>
                            </td>
                            <td>
                                <span id="close9" runat="server"></span>
                            </td>
                            <td>
                                <span id="closeQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="close10" runat="server"></span>
                            </td>
                            <td>
                                <span id="close11" runat="server"></span>
                            </td>
                            <td>
                                <span id="close12" runat="server"></span>
                            </td>
                            <td>
                                <span id="closeQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="closeH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="closeY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                10. Zatvorene negativne kartice
                            </th>
                            <td>
                                <span id="NegativeClosed1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosedQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed5" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed6" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosedQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosedH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed7" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed8" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed9" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosedQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed10" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed11" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosed12" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosedQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosedH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NegativeClosedY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                11. Zatvorene nesigurne radnje
                            </th>
                            <td>
                                <span id="UAClosed1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosedQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed5" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed6" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosedQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosedH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed7" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed8" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed9" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosedQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed10" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed11" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosed12" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosedQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosedH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UAClosedY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                12. Zatvoreni nesigurni uvjeti
                            </th>
                            <td>
                                <span id="UCClosed1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosedQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed5" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed6" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosedQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosedH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed7" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed8" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed9" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosedQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed10" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed11" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosed12" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosedQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosedH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="UCClosedY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                13. Broj radnika
                            </th>
                            <td>
                                <span id="NoWorkers1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkersQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers5" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers6" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkersQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkersH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers7" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers8" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers9" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkersQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers10" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers11" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkers12" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkersQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkersH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NoWorkersY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                14. Kartice po osobi
                            </th>
                            <td>
                                <span id="K1POsobi"></span>
                            </td>
                            <td>
                                <span id="K2POsobi"></span>
                            </td>
                            <td>
                                <span id="K3POsobi"></span>
                            </td>
                            <td>
                                <span id="KQ1POsobi"></span>
                            </td>
                            <td>
                                <span id="K4POsobi"></span>
                            </td>
                            <td>
                                <span id="K5POsobi"></span>
                            </td>
                            <td>
                                <span id="K6POsobi"></span>
                            </td>
                            <td>
                                <span id="KQ2POsobi"></span>
                            </td>
                            <td>
                                <span id="KH1POsobi"></span>
                            </td>
                            <td>
                                <span id="K7POsobi"></span>
                            </td>
                            <td>
                                <span id="K8POsobi"></span>
                            </td>
                            <td>
                                <span id="K9POsobi"></span>
                            </td>
                            <td>
                                <span id="KQ3POsobi"></span>
                            </td>
                            <td>
                                <span id="K10POsobi"></span>
                            </td>
                            <td>
                                <span id="K11POsobi"></span>
                            </td>
                            <td>
                                <span id="K12POsobi"></span>
                            </td>
                            <td>
                                <span id="KQ4POsobi"></span>
                            </td>
                            <td>
                                <span id="KH2POsobi"></span>
                            </td>
                            <td>
                                <span id="KYPOsobi"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                15. Kartice po osobi po dani rada
                            </th>
                            <td>
                                <span id="MjesPOsobi1"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi2"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi3"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobiQ1"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi4"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi5"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi6"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobiQ2"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobiH1"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi7"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi8"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi9"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobiQ3"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi10"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi11"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobi12"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobiQ4"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobiH2"></span>
                            </td>
                            <td>
                                <span id="MjesPOsobiY"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                16. Negativne kartice po osobi
                            </th>
                            <td>
                                <span id="BrojNegKarPoOsobi1"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi2"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi3"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobiQ1"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi4"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi5"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi6"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobiQ2"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobiH1"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi7"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi8"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi9"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobiQ3"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi10"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi11"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobi12"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobiQ4"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobiH2"></span>
                            </td>
                            <td>
                                <span id="BrojNegKarPoOsobiY"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                17. Negativne kartice po osobi po dani rada
                            </th>
                            <td>
                                <span id="MjesNegKarPoOsobi1"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi2"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi3"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobiQ1"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi4"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi5"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi6"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobiQ2"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobiH1"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi7"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi8"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi9"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobiQ3"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi10"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi11"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobi12"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobiQ4"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobiH2"></span>
                            </td>
                            <td>
                                <span id="MjesNegKarPoOsobiY"></span>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </asp:Panel>
            <h1>
                Elementi promatranja
            </h1>
            <asp:Panel ID="ElmentiTable" runat="server" Width="100%" HorizontalAlign="Center">
                <table id="ElmentiTable1" class="display mydatatable" style="width:100%">
                    <thead>
                        <tr>
                        <th>
                            Podaci
                        </th>
                         <th>
                            Siječanj
                        </th>
                         <th>
                            Veljača
                        </th>
                         <th>
                            Ožujak
                        </th>
                         <th>
                            Q1
                        </th>
                        <th>
                            Travanj
                        </th>
                         <th>
                            Svibanj
                        </th>
                         <th>
                            Lipanj
                        </th>
                         <th>
                            Q2
                        </th>
                        <th>
                            H1
                        </th>
                        <th>
                            Srpanj
                        </th>
                         <th>
                            Kolovoz
                        </th>
                         <th>
                             Rujan
                        </th>
                         <th>
                            Q3
                        </th>
                        <th>
                            Listopad
                        </th>
                         <th>
                            Studeni
                        </th>
                         <th>
                            Prosinac
                        </th>
                         <th>
                            Q4
                        </th>
                        <th>
                            H2
                        </th>
                        <th>
                            Godina
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>
                                1. Reakcija ljudi
                            </th>
                            <td>
                                <span id="P1Reak" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                1.1 Podešavanje osobne zaštitne opreme
                            </th>
                            <td>
                                <span id="P1Reak1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                1.2 Promjena položaja
                            </th>
                            <td>
                                <span id="P1Reak2" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                1.3 Obavljanje posla na drugi način
                            </th>
                            <td>
                                <span id="P1Reak3" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                1.4 Prekidanje s poslom
                            </th>
                            <td>
                                <span id="P1Reak4" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                1.5 Uzemljivanje
                            </th>
                            <td>
                                <span id="P1Reak5" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                1.6 Isključivanje strojeva
                            </th>
                            <td>
                                <span id="P1Reak6" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                2. OSOBNA ZAŠTITNA OPREMA
                            </th>
                            <td>
                                <span id="P1ozo" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                2.1 Glava
                            </th>
                            <td>
                                <span id="P1ozo1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                 2.2 Oči i lice
                            </th>
                            <td>
                                <span id="P1ozo2" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                2.3 Uši
                            </th>
                            <td>
                                <span id="P1ozo3" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                2.4 Respiratorni sustav
                            </th>
                            <td>
                                <span id="P1ozo4" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                2.5 Ruke i šake
                            </th>
                            <td>
                                <span id="P1ozo5" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                2.6 Torzo
                            </th>
                            <td>
                                <span id="P1ozo6" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                2.7 Noge i stopala
                            </th>
                            <td>
                                <span id="P1ozo7" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3. POLOŽAJ LJUDI (uzroci ozljeda)
                            </th>
                            <td>
                                <span id="P1polo" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.1 Udaranje u neki predmet
                            </th>
                            <td>
                                <span id="P1polo1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.2 Udar nekog predmeta
                            </th>
                            <td>
                                <span id="P1polo2" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.3 Nači se u, na liniji nekog predmeta
                            </th>
                            <td>
                                <span id="P1polo3" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.4 Pad na istoj/različitoj razini
                            </th>
                            <td>
                                <span id="P1polo4" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.5 Doticaj s ekstremnim temperaturama
                            </th>
                            <td>
                                <span id="P1polo5" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.6 Doticaj s električnom strujom
                            </th>
                            <td>
                                <span id="P1polo6" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.7 Doticaj s visokim tlakovima
                            </th>
                            <td>
                                <span id="P1polo7" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.8 Udisanje opasnih tvari
                            </th>
                            <td>
                                <span id="P1polo8" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.9 Apsorbiranje opasnih tvari
                            </th>
                            <td>
                                <span id="P1polo9" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.10 Preveliko naprezanje
                            </th>
                            <td>
                                <span id="P1polo10" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.11 Ponavljanje pokreta
                            </th>
                            <td>
                                <span id="P1polo11" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                3.12 Nespretni položaj /Statično držanje
                            </th>
                            <td>
                                <span id="P1polo12" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                4. ALATI I OPREMA
                            </th>
                            <td>
                                <span id="P1alat" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                4.1 Pogrešni za dotični posao
                            </th>
                            <td>
                                <span id="P1alat1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                4.2 Nepravilno korišteni
                            </th>
                            <td>
                                <span id="P1alat2" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                4.3 Neispravni alati i oprema
                            </th>
                            <td>
                                <span id="P1alat3" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                6. PROCEDURE POSTUPCI I UREDNOST
                            </th>
                            <td>
                                <span id="P1proce" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                6.1 Neodgovarajuće procedure
                            </th>
                            <td>
                                <span id="P1proce1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                6.2 Neznanje/Nerazumjevanje procedura
                            </th>
                            <td>
                                <span id="P1proce2" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                6.3 Nepridržavanje procedura
                            </th>
                            <td>
                                <span id="P1proce3" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                6.4 Norme urednosti neodgovarajuće
                            </th>
                            <td>
                                <span id="P1proce4" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                6.5 Neznanja /Nerazumjevanja normi urednosti
                            </th>
                            <td>
                                <span id="P1proce5" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                6.6 Nepridržavanje normi i urednosti
                            </th>
                            <td>
                                <span id="P1proce6" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>

                    </tbody>
                </table>
            </asp:Panel>

            <h1>
                Podaci o incidentima
            </h1>
            <asp:Panel ID="HStable" runat="server" Width="100%" HorizontalAlign="Center">
                <table id="HStable1" class="display mydatatable">
                    <thead>
                        <tr>
                        <th>
                            Podaci
                        </th>
                         <th>
                            Siječanj
                        </th>
                         <th>
                            Veljača
                        </th>
                         <th>
                            Ožujak
                        </th>
                         <th>
                            Q1
                        </th>
                        <th>
                            Travanj
                        </th>
                         <th>
                            Svibanj
                        </th>
                         <th>
                            Lipanj
                        </th>
                         <th>
                            Q2
                        </th>
                        <th>
                            H1
                        </th>
                        <th>
                            Srpanj
                        </th>
                         <th>
                            Kolovoz
                        </th>
                         <th>
                             Rujan
                        </th>
                         <th>
                            Q3
                        </th>
                        <th>
                            Listopad
                        </th>
                         <th>
                            Studeni
                        </th>
                         <th>
                            Prosinac
                        </th>
                         <th>
                            Q4
                        </th>
                        <th>
                            H2
                        </th>
                        <th>
                            Godina
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>
                                01. Sati rada
                            </th>
                            <td>
                                <span id="Sati1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                02. TRI
                            </th>
                            <td>
                                <span id="TRI1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                03. FTL
                            </th>
                            <td>
                                <span id="FTL1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                04. LTI
                            </th>
                            <td>
                                <span id="LTI1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                05. RWC
                            </th>
                            <td>
                                <span id="RWC1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                06. MTC
                            </th>
                            <td>
                                <span id="MTC1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                07. FAC
                            </th>
                            <td>
                                <span id="FAC1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                08. NM
                            </th>
                            <td>
                                <span id="NM1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                09. FIRE</th>
                            <td>
                                <span id="Fire1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                10. SPILL</th>
                            <td>
                                <span id="Spill1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                11. LOPC
                            </th>
                            <td>
                                <span id="LOPC1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                12. RTA
                            </th>
                            <td>
                                <span id="RTA1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                13. RTI
                            </th>
                            <td>
                                <span id="RTI1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                14. NII
                            </th>
                            <td>
                                <span id="NII1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                15. SWA
                            </th>
                            <td>
                                <span id="SWA1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                16. TPS
                            </th>
                            <td>
                                <span id="TPS1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                17. Broj Alkotestiranja
                            </th>
                            <td>
                                <span id="Alco1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                18. LTIF
                            </th>
                            <td>
                                <span id="LTIF1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                19. LTI rate
                            </th>
                            <td>
                                <span id="LTIR1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                20. TRIF
                            </th>
                            <td>
                                <span id="TRIF1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                21. TRI rate
                            </th>
                            <td>
                                <span id="TRIR1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                22. NMF
                            </th>
                            <td>
                                <span id="NMF1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                        <tr>
                            <th>
                                23. NM rate
                            </th>
                            <td>
                                <span id="NMR1" runat="server"></span>
                            </td>
                            <td>
                                29
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q1
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q2
                            </td>
                            <td>
                                H1
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                Q3
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                30
                            </td>
                            <td>
                                31
                            </td>
                            <td>
                                Q4
                            </td>
                            <td>
                                H2
                            </td>
                            <td>
                                Year
                            </td>
                        </tr>
                    </tbody>
                </table>
            </asp:Panel>
            <p><span id="poruka" runat="server"></span></p>
            <script>
                $(document).ready(function () {
                    SA();
                    $('.mydatatable').DataTable();
                    
                    //$('#SAtb1').DataTable();
                    //$('#ElmentiTable1').DataTable();
                    //$('#HStable1').DataTable();
                });
            </script>
            <script>
                function SA() {
                    var BrojKartica= document.getElementById('K1').innerText;
                    var BrojRadnika = document.getElementById('NoWorkers1').innerText;
                    var BrojDana = document.getElementById('Dani1').innerText;
                    var BrojNegKartica = document.getElementById('negative1').innerText;
                    var KpoOsobi = parseInt(BrojKartica) / parseInt(BrojRadnika);
                    var MjesPoOsobi = KpoOsobi * parseInt(BrojDana);
                    var BrojNegPoOsobi = parseInt(BrojNegKartica) / parseInt(BrojRadnika);
                    var MejsNegPoOsobi = BrojNegPoOsobi * parseInt(BrojDana);
                    document.getElementById('K1POsobi').innerText = KpoOsobi.toFixed(4);
                    document.getElementById('MjesPOsobi1').innerText = MjesPoOsobi.toFixed(4);
                    document.getElementById('BrojNegKarPoOsobi1').innerText = BrojNegPoOsobi.toFixed(4);
                    document.getElementById('MjesNegKarPoOsobi1').innerText = MejsNegPoOsobi.toFixed(4);

                    
                }

            </script>
        </div>
    </form>
</body>
</html>
