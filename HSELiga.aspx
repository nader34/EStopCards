<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HSELiga.aspx.cs" Inherits="CroscoStopCard.HSELiga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HSE Liga</title>
    <link rel="shortcut icon" type="image/ico" href="Resources/Logo.png" />
    
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>
    
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/searchpanes/1.0.1/css/searchPanes.dataTables.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.1/css/select.dataTables.min.css"/>


    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

    
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.3.1/js/dataTables.select.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                HSE Liga
            </h1>
            <asp:Panel ID="HSELigapan" runat="server" Width="100%" HorizontalAlign="Center">
                <table id="HSELigaLokal" class="display mydatatable" style="width:100%">
                    <thead>
                        <tr>
                        <th>
                            Kriterij
                        </th>
                        <th>
                            Ograničenje
                        </th>
                        <th>
                            Bodovanje
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
                                01. Near Miss  prijava
                            </th>
                            <th>
                                Nema limita
                            </th>
                            <th>
                                20/NM
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
                                02. Broj kartica po osobi mjesečno
                            </th>
                            <th>
                                Nema limita
                            </th>
                            <th>
                                5*prosjek
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
                               03. Najbolja STOP kartica I mjesto
                            </th>
                            <th>
                               1
                            </th>
                            <th>
                               50
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
                                04. Najbolja STOP kartica II mjesto
                            </th>
                            <th>
                                2
                            </th>
                            <th>
                                30
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
                                05. Najbolja STOP kartica III mjesto
                            </th>
                            <th>
                                2
                            </th>
                            <th>
                                20
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
                                06. Broj alkotestiranja
                            </th>
                            <th>
                                Max broj bodova 100
                            </th>
                            <th>
                                br. testiranja/ br zaposlenika *20
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
                                07. Broj zaustavljanja radova
                            </th>
                            <th>
                                Nema limita 
                            </th>
                            <th>
                                100/SWA 
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
                                08. Mjesečno izvještavanje
                            </th>
                            <th>
                                Max 10 bodova
                            </th>
                            <th>
                                izvještaj na vrijeme 5 bodova, točnost ekstra 5 bodova
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
                                09. LTI
                            </th>
                            <th>
                                Nema limita
                            </th>
                            <th>
                                -300
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
                                10. RWC i MTO
                            </th>
                            <th>
                                Nema limita
                            </th>
                            <th>
                                -150
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
                                11. Kršenje temeljnih prvila sigurnosti
                            </th>
                            <th>
                                Nema limita
                            </th>
                            <th>
                                -100 
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
                                12. OSTALI INCIDENTI (LOPC, RTA, RTI, FAC, FIRE)
                            </th>
                            <th>
                                Nema limita
                            </th>
                            <th>
                                -20
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
                                13. bodovi
                            </th>
                            <th>
                                
                            </th>
                            <th>
                                
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
                        
                    </tbody>
                </table>
            </asp:Panel>
            <script>
                $(document).ready(function () {
                    
                    $('.mydatatable').DataTable({
                        select: true,
                        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                        
                        "dom": '<"toolbar">lBfrtip',
                        
                        "buttons": [
                                {
                                    extend:    'copyHtml5',
                                    text:      '<i class="fa fa-files-o"></i>',
                                    titleAttr: 'Copy'
                                },
                                {
                                    extend:    'excelHtml5',
                                    text:      '<i class="fa fa-file-excel-o"></i>',
                                    titleAttr: 'Excel'
                                },
                                {
                                    extend:    'csvHtml5',
                                    text:      '<i class="fa fa-file-text-o"></i>',
                                    titleAttr: 'CSV'
                                },
                                {
                                    extend:    'pdfHtml5',
                                    text:      '<i class="fa fa-file-pdf-o"></i>',
                                    titleAttr: 'PDF'
                                },
                                
                                {
                                    extend: 'colvis',
                                    text: 'Pokaži',

                                }
                        ]

                    });
                    
                   
                });
            </script>
        </div>
    </form>
</body>
</html>
