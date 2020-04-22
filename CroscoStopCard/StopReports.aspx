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
                                <span id="K3" runat="server"></span>
                            </td>
                            <td>
                                <span id="KQ1" runat="server"></span>
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
                                <span id="P2Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2Reak" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYReak" runat="server"></span>
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
                                <span id="P2Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2Reak1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYReak1" runat="server"></span>
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
                                <span id="P2Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2Reak2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYReak2" runat="server"></span>
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
                                <span id="P2Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2Reak3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYReak3" runat="server"></span>
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
                                <span id="P2Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2Reak4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYReak4" runat="server"></span>
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
                                <span id="P2Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2Reak5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYReak5" runat="server"></span>
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
                                <span id="P2Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2Reak6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYReak6" runat="server"></span>
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
                                <span id="P2ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo" runat="server"></span>
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
                                <span id="P2ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo1" runat="server"></span>
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
                                <span id="P2ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo2" runat="server"></span>
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
                                <span id="P2ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo3" runat="server"></span>
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
                                <span id="P2ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo4" runat="server"></span>
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
                                <span id="P2ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo5" runat="server"></span>
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
                                <span id="P2ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo6" runat="server"></span>
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
                                <span id="P2ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2ozo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYozo7" runat="server"></span>
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
                                <span id="P2polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo" runat="server"></span>
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
                                <span id="P2polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo1" runat="server"></span>
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
                                <span id="P2polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo2" runat="server"></span>
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
                                <span id="P2polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo3" runat="server"></span>
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
                                <span id="P2polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo4" runat="server"></span>
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
                                <span id="P2polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo5" runat="server"></span>
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
                                <span id="P2polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo6" runat="server"></span>
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
                                <span id="P2polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo7" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo7" runat="server"></span>
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
                                <span id="P2polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo8" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo8" runat="server"></span>
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
                                <span id="P2polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo9" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo9" runat="server"></span>
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
                                <span id="P2polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo10" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo10" runat="server"></span>
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
                                <span id="P2polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo11" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo11" runat="server"></span>
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
                                <span id="P2polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2polo12" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYpolo12" runat="server"></span>
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
                                <span id="P2alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2alat" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYalat" runat="server"></span>
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
                                <span id="P2alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2alat1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYalat1" runat="server"></span>
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
                                <span id="P2alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="Q4alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2alat2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYalat2" runat="server"></span>
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
                                <span id="P2alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2alat3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYalat3" runat="server"></span>
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
                                <span id="P2proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2proce" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYproce" runat="server"></span>
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
                                <span id="P2proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2proce1" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYproce1" runat="server"></span>
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
                                <span id="P2proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2proce2" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYproce2" runat="server"></span>
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
                                <span id="P2proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2proce3" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYproce3" runat="server"></span>
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
                                <span id="P2proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2proce4" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYproce4" runat="server"></span>
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
                                <span id="P2proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2proce5" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYproce5" runat="server"></span>
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
                                <span id="P2proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P3proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ1proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P4proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P5proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P6proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ2proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH1proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P7proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P8proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P9proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ3proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P10proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P11proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="P12proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PQ4proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PH2proce6" runat="server"></span>
                            </td>
                            <td>
                                <span id="PYproce6" runat="server"></span>
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
                                <span id="Sati2" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati3" runat="server"></span>
                            </td>
                            <td>
                                <span id="SatiQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati4" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati5" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati6" runat="server"></span>
                            </td>
                            <td>
                                <span id="SatiQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="SatiH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati7" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati8" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati9" runat="server"></span>
                            </td>
                            <td>
                                <span id="SatiQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati10" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati11" runat="server"></span>
                            </td>
                            <td>
                                <span id="Sati12" runat="server"></span>
                            </td>
                            <td>
                                <span id="SatiQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="SatiH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="SatiY" runat="server"></span>
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
                                <span id="TRI2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI5" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI6" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI7" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI8" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI9" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI10" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI11" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRI12" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIY" runat="server"></span>
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
                                <span id="FTL2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL3" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTLQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL4" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL5" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL6" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTLQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTLH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL7" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL8" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL9" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTLQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL10" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL11" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTL12" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTLQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTLH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FTLY" runat="server"></span>
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
                                <span id="LTI2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI5" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI6" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI7" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI8" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI9" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI10" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI11" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTI12" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIY" runat="server"></span>
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
                                <span id="RWC2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC3" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWCQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC4" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC5" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC6" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWCQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWCH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC7" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC8" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC9" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWCQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC10" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC11" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWC12" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWCQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWCH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RWCY" runat="server"></span>
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
                                <span id="MTC2" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC3" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTCQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC4" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC5" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC6" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTCQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTCH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC7" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC8" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC9" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTCQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC10" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC11" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTC12" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTCQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTCH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="MTCY" runat="server"></span>
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
                                <span id="FAC2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC3" runat="server"></span>
                            </td>
                            <td>
                                <span id="FACQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC4" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC5" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC6" runat="server"></span>
                            </td>
                            <td>
                                <span id="FACQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FACH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC7" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC8" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC9" runat="server"></span>
                            </td>
                            <td>
                                <span id="FACQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC10" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC11" runat="server"></span>
                            </td>
                            <td>
                                <span id="FAC12" runat="server"></span>
                            </td>
                            <td>
                                <span id="FACQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="FACH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FACY" runat="server"></span>
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
                                <span id="NM2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM5" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM6" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM7" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM8" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM9" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM10" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM11" runat="server"></span>
                            </td>
                            <td>
                                <span id="NM12" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                09. FIRE</th>
                            <td>
                                <span id="Fire1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire2" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire3" runat="server"></span>
                            </td>
                            <td>
                                <span id="FireQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire4" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire5" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire6" runat="server"></span>
                            </td>
                            <td>
                                <span id="FireQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FireH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire7" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire8" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire9" runat="server"></span>
                            </td>
                            <td>
                                <span id="FireQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire10" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire11" runat="server"></span>
                            </td>
                            <td>
                                <span id="Fire12" runat="server"></span>
                            </td>
                            <td>
                                <span id="FireQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="FireH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="FireY" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                10. SPILL</th>
                            <td>
                                <span id="Spill1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill2" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill3" runat="server"></span>
                            </td>
                            <td>
                                <span id="SpillQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill4" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill5" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill6" runat="server"></span>
                            </td>
                            <td>
                                <span id="SpillQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="SpillH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill7" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill8" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill9" runat="server"></span>
                            </td>
                            <td>
                                <span id="SpillQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill10" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill11" runat="server"></span>
                            </td>
                            <td>
                                <span id="Spill12" runat="server"></span>
                            </td>
                            <td>
                                <span id="SpillQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="SpillH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="SpillY" runat="server"></span>
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
                                <span id="LOPC2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPCQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC5" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC6" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPCQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPCH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC7" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC8" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC9" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPCQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC10" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC11" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPC12" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPCQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPCH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LOPCY" runat="server"></span>
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
                                <span id="RTA2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA3" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTAQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA4" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA5" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA6" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTAQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTAH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA7" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA8" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA9" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTAQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA10" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA11" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTA12" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTAQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTAH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTAY" runat="server"></span>
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
                                <span id="RTI2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI3" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTIQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI4" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI5" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI6" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTIQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTIH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI7" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI8" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI9" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTIQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI10" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI11" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTI12" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTIQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTIH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="RTIY" runat="server"></span>
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
                                <span id="NII2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NIIQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII5" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII6" runat="server"></span>
                            </td>
                            <td>
                                <span id="NIIQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NIIH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII7" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII8" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII9" runat="server"></span>
                            </td>
                            <td>
                                <span id="NIIQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII10" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII11" runat="server"></span>
                            </td>
                            <td>
                                <span id="NII12" runat="server"></span>
                            </td>
                            <td>
                                <span id="NIIQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NIIH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NIIY" runat="server"></span>
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
                                <span id="SWA2" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA3" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWAQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA4" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA5" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA6" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWAQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWAH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA7" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA8" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA9" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWAQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA10" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA11" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWA12" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWAQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWAH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="SWAY" runat="server"></span>
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
                                <span id="TPS2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPSQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS5" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS6" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPSQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPSH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS7" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS8" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS9" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPSQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS10" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS11" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPS12" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPSQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPSH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TPSY" runat="server"></span>
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
                                <span id="Alco2" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco3" runat="server"></span>
                            </td>
                            <td>
                                <span id="AlcoQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco4" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco5" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco6" runat="server"></span>
                            </td>
                            <td>
                                <span id="AlcoQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="AlcoH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco7" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco8" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco9" runat="server"></span>
                            </td>
                            <td>
                                <span id="AlcoQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco10" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco11" runat="server"></span>
                            </td>
                            <td>
                                <span id="Alco12" runat="server"></span>
                            </td>
                            <td>
                                <span id="AlcoQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="AlcoH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="AlcoY" runat="server"></span>
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
                                <span id="LTIF2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIFQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF5" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF6" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIFQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIFH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF7" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF8" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF9" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIFQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF10" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF11" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIF12" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIFQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIFH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIFY" runat="server"></span>
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
                                <span id="LTIR2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIRQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR5" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR6" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIRQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIRH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR7" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR8" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR9" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIRQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR10" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR11" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIR12" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIRQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIRH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="LTIRY" runat="server"></span>
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
                                <span id="TRIF2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIFQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF5" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF6" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIFQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIFH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF7" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF8" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF9" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIFQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF10" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF11" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIF12" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIFQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIFH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIFY" runat="server"></span>
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
                                <span id="TRIR2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIRQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR5" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR6" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIRQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIRH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR7" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR8" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR9" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIRQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR10" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR11" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIR12" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIRQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIRH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="TRIRY" runat="server"></span>
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
                                <span id="NMF2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMFQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF5" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF6" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMFQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMFH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF7" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF8" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF9" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMFQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF10" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF11" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMF12" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMFQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMFH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMFY" runat="server"></span>
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
                                <span id="NMR2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMRQ1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR5" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR6" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMRQ2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMRH1" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR7" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR8" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR9" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMRQ3" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR10" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR11" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMR12" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMRQ4" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMRH2" runat="server"></span>
                            </td>
                            <td>
                                <span id="NMRY" runat="server"></span>
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

                    //BrojLTI*1000000/Satirada
                    var stai1 = document.getElementById('Sati1').innerText;
                    var FTL1= document.getElementById('FTL1').innerText;
                    var LTI1 = document.getElementById('LTI1').innerText;
                    var TRI1 = document.getElementById('TRI1').innerText;
                    var NM1= document.getElementById('NM1').innerText;
                    var LTIF1 = (parseInt(LTI1) + parseInt(FTL1)) * 1000000 / parseInt(stai1);
                    var TRIF1 = parseInt(TRI1) * 1000000 / parseInt(stai1);
                    var NMF1=parseInt(NM1) * 1000000 / parseInt(stai1);
                    document.getElementById('LTIF1').innerText = LTIF1.toFixed(4);
                    document.getElementById('LTIR1').innerText = (LTIF1 / 5).toFixed(4);
                    document.getElementById('TRIF1').innerText = TRIF1.toFixed(4);
                    document.getElementById('TRIR1').innerText = (TRIF1 / 5).toFixed(4);
                    document.getElementById('NMF1').innerText = NMF1.toFixed(4);
                    document.getElementById('NMR1').innerText = (NMF1/5).toFixed(4);

                    //drugi
                    var BrojKartica2= document.getElementById('K2').innerText;
                    var BrojRadnika2 = document.getElementById('NoWorkers2').innerText;
                    var BrojDana2 = document.getElementById('Dani2').innerText;
                    var BrojNegKartica2 = document.getElementById('negative2').innerText;
                    var KpoOsobi2 = parseInt(BrojKartica2) / parseInt(BrojRadnika2);
                    var MjesPoOsobi2 = KpoOsobi2 * parseInt(BrojDana2);
                    var BrojNegPoOsobi2 = parseInt(BrojNegKartica2) / parseInt(BrojRadnika2);
                    var MejsNegPoOsobi2 = BrojNegPoOsobi2 * parseInt(BrojDana2);
                    document.getElementById('K2POsobi').innerText = KpoOsobi2.toFixed(4);
                    document.getElementById('MjesPOsobi2').innerText = MjesPoOsobi2.toFixed(4);
                    document.getElementById('BrojNegKarPoOsobi2').innerText = BrojNegPoOsobi2.toFixed(4);
                    document.getElementById('MjesNegKarPoOsobi2').innerText = MejsNegPoOsobi2.toFixed(4);

                    var stai2 = document.getElementById('Sati2').innerText;
                    var FTL2= document.getElementById('FTL2').innerText;
                    var LTI2 = document.getElementById('LTI2').innerText;
                    var TRI2 = document.getElementById('TRI2').innerText;
                    var NM2= document.getElementById('NM2').innerText;
                    var LTIF2 = (parseInt(LTI2) + parseInt(FTL2)) * 1000000 / parseInt(stai2);
                    var TRIF2 = parseInt(TRI2) * 1000000 / parseInt(stai2);
                    var NMF2=parseInt(NM2) * 1000000 / parseInt(stai2);
                    document.getElementById('LTIF2').innerText = LTIF2.toFixed(4);
                    document.getElementById('LTIR2').innerText = (LTIF2 / 5).toFixed(4);
                    document.getElementById('TRIF2').innerText = TRIF2.toFixed(4);
                    document.getElementById('TRIR2').innerText = (TRIF2 / 5).toFixed(4);
                    document.getElementById('NMF2').innerText = NMF2.toFixed(4);
                    document.getElementById('NMR2').innerText = (NMF2 / 5).toFixed(4);

                    //treci
                    var BrojKartica3= document.getElementById('K3').innerText;
                    var BrojRadnika3 = document.getElementById('NoWorkers3').innerText;
                    var BrojDana3 = document.getElementById('Dani3').innerText;
                    var BrojNegKartica3 = document.getElementById('negative3').innerText;
                    var KpoOsobi3 = parseInt(BrojKartica3) / parseInt(BrojRadnika3);
                    var MjesPoOsobi3 = KpoOsobi3 * parseInt(BrojDana3);
                    var BrojNegPoOsobi3 = parseInt(BrojNegKartica3) / parseInt(BrojRadnika3);
                    var MejsNegPoOsobi3 = BrojNegPoOsobi3 * parseInt(BrojDana3);
                    document.getElementById('K3POsobi').innerText = KpoOsobi3.toFixed(4);
                    document.getElementById('MjesPOsobi3').innerText = MjesPoOsobi3.toFixed(4);
                    document.getElementById('BrojNegKarPoOsobi3').innerText = BrojNegPoOsobi3.toFixed(4);
                    document.getElementById('MjesNegKarPoOsobi3').innerText = MejsNegPoOsobi3.toFixed(4);

                    var stai3 = document.getElementById('Sati3').innerText;
                    var FTL3= document.getElementById('FTL3').innerText;
                    var LTI3 = document.getElementById('LTI3').innerText;
                    var TRI3 = document.getElementById('TRI3').innerText;
                    var NM3= document.getElementById('NM3').innerText;
                    var LTIF3 = (parseInt(LTI3) + parseInt(FTL3)) * 1000000 / parseInt(stai3);
                    var TRIF3 = parseInt(TRI3) * 1000000 / parseInt(stai3);
                    var NMF3=parseInt(NM3) * 1000000 / parseInt(stai3);
                    document.getElementById('LTIF3').innerText = LTIF3.toFixed(4);
                    document.getElementById('LTIR3').innerText = (LTIF3 / 5).toFixed(4);
                    document.getElementById('TRIF3').innerText = TRIF3.toFixed(4);
                    document.getElementById('TRIR3').innerText = (TRIF3 / 5).toFixed(4);
                    document.getElementById('NMF3').innerText = NMF3.toFixed(4);
                    document.getElementById('NMR3').innerText = (NMF3 / 5).toFixed(4);

                    //Q1
                    var BrojKarticaQ1= document.getElementById('KQ1').innerText;
                    var BrojRadnikaQ1 = document.getElementById('NoWorkersQ1').innerText;
                    var BrojDanaQ1 = document.getElementById('DaniQ1').innerText;
                    var BrojNegKarticaQ1 = document.getElementById('negativeQ1').innerText;
                    var KpoOsobiQ1 = parseInt(BrojKarticaQ1) / parseInt(BrojRadnikaQ1);
                    var MjesPoOsobiQ1 = KpoOsobiQ1 * parseInt(BrojDanaQ1);
                    var BrojNegPoOsobiQ1 = parseInt(BrojNegKarticaQ1) / parseInt(BrojRadnikaQ1);
                    var MejsNegPoOsobiQ1 = BrojNegPoOsobiQ1 * parseInt(BrojDanaQ1);
                    document.getElementById('KQ1POsobi').innerText = KpoOsobiQ1.toFixed(4);
                    document.getElementById('MjesPOsobiQ1').innerText = MjesPoOsobiQ1.toFixed(4);
                    document.getElementById('BrojNegKarPoOsobiQ1').innerText = BrojNegPoOsobiQ1.toFixed(4);
                    document.getElementById('MjesNegKarPoOsobiQ1').innerText = MejsNegPoOsobiQ1.toFixed(4);

                    var staiQ1 = document.getElementById('SatiQ1').innerText;
                    var FTLQ1= document.getElementById('FTLQ1').innerText;
                    var LTIQ1 = document.getElementById('LTIQ1').innerText;
                    var TRIQ1 = document.getElementById('TRIQ1').innerText;
                    var NMQ1= document.getElementById('NMQ1').innerText;
                    var LTIFQ1 = (parseInt(LTIQ1) + parseInt(FTLQ1)) * 1000000 / parseInt(staiQ1);
                    var TRIFQ1 = parseInt(TRIQ1) * 1000000 / parseInt(staiQ1);
                    var NMFQ1=parseInt(NMQ1) * 1000000 / parseInt(staiQ1);
                    document.getElementById('LTIFQ1').innerText = LTIFQ1.toFixed(4);
                    document.getElementById('LTIRQ1').innerText = (LTIFQ1 / 5).toFixed(4);
                    document.getElementById('TRIFQ1').innerText = TRIFQ1.toFixed(4);
                    document.getElementById('TRIRQ1').innerText = (TRIFQ1 / 5).toFixed(4);
                    document.getElementById('NMFQ1').innerText = NMFQ1.toFixed(4);
                    document.getElementById('NMRQ1').innerText = (NMFQ1/5).toFixed(4);
                }

            </script>
        </div>
    </form>
</body>
</html>
