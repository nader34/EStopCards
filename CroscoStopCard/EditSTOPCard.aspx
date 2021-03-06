﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSTOPCard.aspx.cs" Inherits="CroscoStopCard.EditSTOPCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit</title>
    <link rel="shortcut icon" type="image/ico" href="Resources/Logo.png" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="css/GridCss.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="StopKartica">
            <tr>
                <td style="width: 30%">
                    <table id="tb1">
                        <tr>
                            <td class="myStopCard">
                                <img src="Resources/Instruction_hr.png" draggable="false" id="StopCycl" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="SPUP">
                                    <label class="Radiocontainer">Unsafe practice
                                        <input type="radio" id="UnSafe" runat="server" name="SafeUnsafePractice" value="UnsafePractice" onclick="UnsafeClick()" />
                                        <span class="Radiocheckmark"></span>
                                    </label>
                                    <label class="Radiocontainer">Safe practice
                                        <input type="radio" id="Safe" runat="server" name="SafeUnsafePractice" value="SafePractice" onclick="SafeClick()" />
                                        <span class="Radiocheckmark"></span>
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="UAUC">
                                <div class="custom-select" style="width: 200px">
                                    <select id="UCUAIzbbornik" runat="server">
                                        <option value="UnSafeAct">Un Safe Act</option>
                                        <option value="UnSafeCondition">Un Safe Condition</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table id="listaPromatranje">
                                    <tr>
                                        <td class="auto-style1">
                                            <label for="ReakcijaLjudiId">Reakcija Ljudi</label>
                                            <input type="checkbox" id="ReakcijaLjudiId" runat="server" name="ReakcijaLjudi" value="ReakcijaLjudi" onclick="reakcija()" />
                                            <table id="el1">
                                                <tr>
                                                    <td class="RLjp podElement containercheckboxes">
                                                        <label for="RLj1">
                                                            Podešavanje osobne zaštitne opreme
                                                    <input type="checkbox" id="RLj1" runat="server" name="ReakcijaLjudip1" value="PodReak1" />
                                                            <span class="checkmarkNew"></span>
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="RLjp podElement containercheckboxes">
                                                        <label for="RLj2">
                                                            Promjena položaja
                                                    <input type="checkbox" id="RLj2" runat="server" name="ReakcijaLjudip2" value="PodReak2" />
                                                            <span class="checkmarkNew"></span>
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="RLjp podElement containercheckboxes">
                                                        <label for="RLj3">
                                                            <input type="checkbox" id="RLj3" runat="server" name="ReakcijaLjudip3" value="PodReak3" />
                                                            <span class="checkmarkNew"></span>
                                                            Obavljanje posla na drugi način</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="RLjp podElement containercheckboxes">
                                                        <label for="RLj4">
                                                            <input type="checkbox" id="RLj4" runat="server" name="ReakcijaLjudip4" value="PodReak4" />
                                                            <span class="checkmarkNew"></span>
                                                            Prekidanje s poslom</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="RLjp podElement containercheckboxes">
                                                        <label for="RLj5">
                                                            <input type="checkbox" id="RLj5" runat="server" name="ReakcijaLjudip5" value="PodReak5" />
                                                            <span class="checkmarkNew"></span>
                                                            Uzemljivanje</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="RLjp podElement containercheckboxes">
                                                        <label for="RLj6">
                                                            <input type="checkbox" id="RLj6" runat="server" name="ReakcijaLjudip6" value="PodReak6" />
                                                            <span class="checkmarkNew"></span>
                                                            Isključivanje strojeva</label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <label for="ozoElmnt">Osobna zaštitna oprema</label>
                                            <input type="checkbox" id="ozoElmnt" runat="server" name="OsobnaZastitnaOprema" value="Ozo" onclick="ozoe()" />
                                            <table id="el2">
                                                <tr>
                                                    <td class="ozopod podElement containercheckboxes">
                                                        <label for="ozo1">
                                                            <input type="checkbox" id="ozo1" runat="server" name="Glava" value="PodOzo1" />
                                                            <span class="checkmarkNew"></span>
                                                            Glava</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="ozopod podElement containercheckboxes">
                                                        <label for="ozo2">
                                                            <input type="checkbox" id="ozo2" runat="server" name="ociiLice" value="PodOzo2" />
                                                            <span class="checkmarkNew"></span>
                                                            Oči i lice</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="ozopod podElement containercheckboxes">
                                                        <label for="ozo3">
                                                            <input type="checkbox" id="ozo3" runat="server" name="usi" value="PodOzo3" />
                                                            <span class="checkmarkNew"></span>
                                                            Uši</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="ozopod podElement containercheckboxes">
                                                        <label for="ozo4">
                                                            <input type="checkbox" id="ozo4" runat="server" name="respiratornisustav" value="PodOzo4" />
                                                            <span class="checkmarkNew"></span>
                                                            Respiratorni sustav</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="ozopod podElement containercheckboxes">
                                                        <label for="ozo5">
                                                            <input type="checkbox" id="ozo5" runat="server" name="Rukeisake" value="PodOzo5" />
                                                            <span class="checkmarkNew"></span>
                                                            Ruke i šake</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="ozopod podElement containercheckboxes">
                                                        <label for="ozo6">
                                                            <input type="checkbox" id="ozo6" runat="server" name="Torzo" value="PodOzo6" />
                                                            <span class="checkmarkNew"></span>
                                                            Torzo</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes ozopod">
                                                        <label for="ozo7">
                                                            <input type="checkbox" id="ozo7" runat="server" name="Nogeistopala" value="PodOzo7" />
                                                            <span class="checkmarkNew"></span>
                                                            Noge i stopala</label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label for="polo">Položaj ljudi (uzroci ozljeda)</label>
                                            <input type="checkbox" id="polo" runat="server" name="polozajljudi" value="polozajLjudi" onclick="polozaj()" />
                                            <table id="el3">
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo1">
                                                            <input type="checkbox" id="polo1" runat="server" name="UdaranjeuNekiPredmet" value="PodPolo1" />
                                                            <span class="checkmarkNew"></span>
                                                            Udaranje u neki predmet</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo2">
                                                            <input type="checkbox" id="polo2" runat="server" name="UdarNekogPredmeta" value="PodPolo2" />
                                                            <span class="checkmarkNew"></span>
                                                            Udar nekog predmeta</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo3">
                                                            <input type="checkbox" id="polo3" runat="server" name="NaciseuNaIliIzmeđuPredmeta" value="PodPolo3" />
                                                            <span class="checkmarkNew"></span>
                                                            Naći se u, na ili između predmeta</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo4">
                                                            <input type="checkbox" id="polo4" runat="server" name="PadNaIstojRazličitojRazini" value="PodPolo4" />
                                                            <span class="checkmarkNew"></span>
                                                            Pad na istoj/različitoj razini</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo5">
                                                            <input type="checkbox" id="polo5" runat="server" name="DoticajsEkstremnimTemperaturama" value="PodPolo5" />
                                                            <span class="checkmarkNew"></span>
                                                            Doticaj s ekstremnim temperaturama</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo6">
                                                            <input type="checkbox" id="polo6" runat="server" name="DoticajsElektričnomStrujom" value="PodPolo6" />
                                                            <span class="checkmarkNew"></span>
                                                            Doticaj s električnom strujom</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo7">
                                                            <input type="checkbox" id="polo7" runat="server" name="DoticajsVisokimTlakovima" value="PodPolo7" />
                                                            <span class="checkmarkNew"></span>
                                                            Doticaj s visokim tlakovima</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo8">
                                                            <input type="checkbox" id="polo8" runat="server" name="UdisanjeOpasnihTvari" value="PodPolo8" />
                                                            <span class="checkmarkNew"></span>
                                                            Udisanje opasnih tvari</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo9">
                                                            <input type="checkbox" id="polo9" runat="server" name="ApsorbiranjeOpasnihTvari" value="PodPolo9" />
                                                            <span class="checkmarkNew"></span>
                                                            Apsorbiranje opasnih tvari</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo10">
                                                            <input type="checkbox" id="polo10" runat="server" name="PrevelikoNaprezanje" value="PodPolo10" />
                                                            <span class="checkmarkNew"></span>
                                                            Preveliko naprezanje</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo11">
                                                            <input type="checkbox" id="polo11" runat="server" name="PonavljanjePokreta" value="PodPolo11" />
                                                            <span class="checkmarkNew"></span>
                                                            Ponavljanje pokreta</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes polopod">
                                                        <label for="polo12">
                                                            <input type="checkbox" id="polo12" runat="server" name="NespretniPolozajStaticnoDrzanje" value="PodPolo12" />
                                                            <span class="checkmarkNew"></span>
                                                            Nespretni položaj/Statično držanje</label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label for="alati">Alati i oprema</label>
                                            <input type="checkbox" id="alati" runat="server" name="alatiioprema" value="alatioOprema" onclick="alatiClick()" />
                                            <table id="el4">
                                                <tr>
                                                    <td class="podElement containercheckboxes alatipod">
                                                        <label for="alati1">
                                                            <input type="checkbox" id="alati1" runat="server" name="PogresniZaDoticniPosao" value="PodAlati1" />
                                                            <span class="checkmarkNew"></span>
                                                            Pogrešni za dotični posao</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes alatipod">
                                                        <label for="alati2">
                                                            <input type="checkbox" id="alati2" runat="server" name="NepravilnoKoristeni" value="PodAlati2" />
                                                            <span class="checkmarkNew"></span>
                                                            Nepravilno korišteni</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes alatipod">
                                                        <label for="alati3">
                                                            <input type="checkbox" id="alati3" runat="server" name="NeispravniAlatiIOprema" value="PodAlati3" />
                                                            <span class="checkmarkNew"></span>
                                                            Neispravni alati i oprema</label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <label for="proc">Procedure i urednosti</label>
                                            <input type="checkbox" id="proc" runat="server" name="ProcedureIUrednosti" value="ProcedureiUrednosti" onclick="procedureClick()" />
                                            <table id="el5">
                                                <tr>
                                                    <td class="podElement containercheckboxes procpod">
                                                        <label for="proc1">
                                                            <input type="checkbox" id="proc1" runat="server" name="NeodgovarajuceProcedure" value="PodProce1" />
                                                            <span class="checkmarkNew"></span>
                                                            Neodgovarajuće procedure</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes procpod">
                                                        <label for="proc2">
                                                            <input type="checkbox" id="proc2" runat="server" name="NeznanjeNerazumijevanjeProcedura" value="PodProce2" />
                                                            <span class="checkmarkNew"></span>
                                                            Neznanje/Nerazumijevanje procedura</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes procpod">
                                                        <label for="proc3">
                                                            <input type="checkbox" id="proc3" runat="server" name="NepridrzavanjeProcedura" value="PodProce3" />
                                                            <span class="checkmarkNew"></span>
                                                            Nepridržavanje procedura</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes procpod">
                                                        <label for="proc4">
                                                            <input type="checkbox" id="proc4" runat="server" name="NormeUrednostiNeodgovarajuce" value="PodProce4" />
                                                            <span class="checkmarkNew"></span>
                                                            Norme urednosti neodgovarajuće</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes procpod">
                                                        <label for="proc5">
                                                            <input type="checkbox" id="proc5" runat="server" name="NeznanjeNerazumijevanjeNormiUrednosti" value="PodProce5" />
                                                            <span class="checkmarkNew"></span>
                                                            Neznanje/Nerazumijevanje normi urednosti</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="podElement containercheckboxes procpod">
                                                        <label for="proc6">
                                                            <input type="checkbox" id="proc6" runat="server" name="NepridrzavanjeNormiUrednosti" value="PodProce6" />
                                                            <span class="checkmarkNew"></span>
                                                            Nepridržavanje normi urednosti</label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 30%">
                    <table id="tb2" class="mojunos">
                        <tr>
                            <td>
                                <img src="Resources/ReportList.png" draggable="false" id="ReportList" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Datum otvaranja:</label><br />
                                <input type="date" id="DatumOt" runat="server" name="datumo" style="width: 80%" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Opis nesukladnosti: *</label><br />
                                <textarea id="opiskartice" runat="server" rows="10" cols="60"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Korektivna radnja: *</label><br />
                                <textarea id="korekcija" runat="server" rows="10" cols="60"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Analiza uzroka:</label><br />
                                <textarea id="analizaUzroka" runat="server" rows="5" cols="60"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Odgovorna osoba:</label><br />
                                <textarea id="odgovornaOsoba" runat="server" rows="2" cols="60" onfocus="this.value=''">Upištite ime, funkcija ili firma</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Rok za rješavanje:</label><br />
                                <input id="rokZaRijesavanja" runat="server" type="date" name="RokZaRijesavanja" style="width: 80%" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Komentar:</label><br />
                                <textarea id="komentar" runat="server" rows="5" cols="60" onfocus="this.value=''">Komentar</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Status:</label><br />
                                <select id="status" runat="server">
                                    <option value="closed">Closed</option>
                                    <option value="ongoing">Ongoing</option>
                                    <option value="open">Open</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Datum zatvaranja:</label><br />
                                <input id="datumZatvaranja" runat="server" type="date" name="datumz" style="width: 80%" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Ime i prezime</label><br />
                                <input type="text" id="Kreiator" runat="server" name="ImeiPrezime" readonly="readonly" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Datum Kreiranje:</label><br />
                                <input id="DatumKreiranje" runat="server" type="date" name="datumc" style="width: 80%" readonly="readonly" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>STOP id:</label><br />
                                <input type="text" id="STOPid1" runat="server" name="IDSTOP" style="width: 80%" readonly="readonly" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="STOPSubmit">
                                    <label>Podnesi karticu</label><br />
                                    <input type="submit" id="podnesi" runat="server" name="UnosKartice" class="btn btn-success" style="width: 80%" onclick="Provjera()" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <%--<td style="width:40%">
                <asp:Panel ID="tablicaSTOP2" CssClass="container mb-5 mt-3" runat="server">  
                </asp:Panel>
            </td>--%>
            </tr>
    </table>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libspopper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap//4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script>
        //$('#mytb1').DataTable();
        $('.mydatatable').DataTable();
        //window.addEventListener('DOMContentLoaded', function () {
        //    $('#mytb1').DataTable();
        //});
    </script>
    <script>
        $(document).ready(function () {

           //document.querySelector("#DatumOt").value = new Date()
           //let today = new Date().toISOString().substr(0, 10);
           //document.querySelector("#DatumOt").value = today;
           //document.querySelector("#rokZaRijesavanja").value = today;
           //document.querySelector("#datumZatvaranja").value = today;
           
           ////alert('Spremno za Display')
           //display();
           // //$('#mytb1').DataTable();
           //$('.mydatatable').DataTable();
           //var xmlhttp = new XMLHttpRequest();
           //xmlhttp.open('Get', 'InsertPage.aspx?opr=display', false);
           //xmlhttp.send(null);
           //var resultText = xmlhttp.responseText;
           //document.getElementById("ContentPlaceHolder1_tablicaSTOP").innerHTML = resultText;
           //if (xmlhttp.readyState == 4) {
           //    if (xmlhttp.status == 200) {
           //        var resultText = xmlhttp.responseText;
           //         document.getElementById("ContentPlaceHolder1_tablicaSTOP").innerHTML = resultText;
           //    }
           //}
        });
    </script>
    <script>
        //$(document).on('click', 'td .STOPCardbtn', function () {
        //    var html = $(this).text()
        //    var text1 = $(this).closest("tr").find('td:first').text();
        //    alert(text1);
        //    alert(html);
        //    var xmlhttp = new XMLHttpRequest();
        //    xmlhttp.open('Get', 'DoneSTOPCard.aspx?opr=display' + '&STOPID=' + text1, false);
        //    xmlhttp.send(null);
        //    window.open('DoneSTOPCard.aspx');
        //    if (xmlhttp.readyState == 4) {
        //        if (xmlhttp.status == 200) {
        //            var resultText = xmlhttp.responseText;
        //            document.getElementById("mytb2").innerHTML = xmlhttp.responseText;
                   
        //        }
        //    }
        //});
    </script>
    <script>
        function reakcija() {
            var x = document.getElementById("el1");
            if (x.style.display === "none") {
                x.style.display = "table";
            } else {
                x.style.display = "none";
                var ar = x.firstElementChild;
                var i;
                for (i = 0; i < ar.childElementCount; i++) {
                    if (ar.children[i].firstElementChild.firstElementChild.checked) {
                        ar.children[i].firstElementChild.firstElementChild.checked = false;
                    }
                }
            }
            
        }
        function ozoe() {
            var x = document.getElementById("el2");
            if (x.style.display === "none") {
                x.style.display = "table";
            } else {
                x.style.display = "none";
                var ar = x.firstElementChild;
                var i;
                for (i = 0; i < ar.childElementCount; i++) {
                    if (ar.children[i].firstElementChild.firstElementChild.checked) {
                        ar.children[i].firstElementChild.firstElementChild.checked = false;
                    }
                }
            }
        }
        function polozaj() {
            var x = document.getElementById("el3");
            if (x.style.display === "none") {
                x.style.display = "table";
            } else {
                x.style.display = "none";
                var ar = x.firstElementChild;
                var i;
                for (i = 0; i < ar.childElementCount; i++) {
                    if (ar.children[i].firstElementChild.firstElementChild.checked) {
                        ar.children[i].firstElementChild.firstElementChild.checked = false;
                    }
                }
            }
        }
        function alatiClick() {
            var x = document.getElementById("el4");
            if (x.style.display === "none") {
                x.style.display = "table";
            } else {
                x.style.display = "none";
                var ar = x.firstElementChild;
                var i;
                for (i = 0; i < ar.childElementCount; i++) {
                    if (ar.children[i].firstElementChild.firstElementChild.checked) {
                        ar.children[i].firstElementChild.firstElementChild.checked = false;
                    }
                }
            }
        }
        function procedureClick() {
            var x = document.getElementById("el5");
            if (x.style.display === "none") {
                x.style.display = "table";
            } else {
                x.style.display = "none";
                var ar = x.firstElementChild;
                var i;
                for (i = 0; i < ar.childElementCount; i++) {
                    if (ar.children[i].firstElementChild.firstElementChild.checked) {
                        ar.children[i].firstElementChild.firstElementChild.checked = false;
                    }
                }
            }
        }
        function SafeClick() {
            var x = document.getElementById("listaPromatranje");
            if (x.style.display === "none") {
                //x.style.display = "table";
            } else {
                x.style.display = "none";
            }
            var uauc = document.querySelector(".UAUC");
            if (uauc.style.display === "none") {
                //x.style.display = "table";
            } else {
                uauc.style.display = "none";
            }
        }
        function UnsafeClick() {
            var x = document.getElementById("listaPromatranje");
            if (x.style.display === "none") {
                x.style.display = "table";
            }
            var uauc = document.querySelector(".UAUC");
            if (uauc.style.display === "none") {
                uauc.style.display = "table";
            }  
        }
        function display() {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'InsertPage.aspx?opr=display', false);
            xmlhttp.send(null);
            var resultText = xmlhttp.responseText;
            document.getElementById("ContentPlaceHolder1_tablicaSTOP").innerHTML = resultText;
            //$('#ContentPlaceHolder1_tablicaSTOP').DataTable();
            if (xmlhttp.readyState == 4) {
                if (xmlhttp.status == 200) {
                    //resultText = xmlhttp.responseText;
                    //document.getElementById("mytb1").innerHTML = resultText;
                    
                    //if ($.fn.DataTable.isDataTable("#mytb1")) {
                    //    $('#mytb1').DataTable().clear().destroy();
                    //    $('#mytb1').DataTable({
                    //        select: true
                    //    });
                    //}
                }
            }
        }
       

        var STOPform = document.querySelectorAll("#tb1 input");
        function loopForm(STOPform) {
            var cbResults= "";
            var cb= 0;
            var radioResults = 'Radio buttons: ';
            for (var i = 0; i < STOPform.length; i++) {
                if (STOPform[i].type == 'checkbox') {
                    if (STOPform[i].checked == true) {
                        cbResults += STOPform[i].value + ',';
                        cb += 1;

                    }
                }
                if (STOPform[i].type == 'radio') {
                    if (STOPform[i].checked == true) {
                        radioResults += STOPform[i].value + ' ';
                    }
                }
            }
            console.log(cbResults);
            console.log(radioResults);
            return (cbResults + cb);
        }
        var UCUAIzb;
        function Provjera() {
            var UnSafe = document.getElementById("UnSafe");
            var Safe = document.getElementById("Safe");
            var UCUAIzbbornik = document.getElementById("UCUAIzbbornik");
            
            // Lista prommatranja
            var ReakcijaLjudiId = document.getElementById('ReakcijaLjudiId');
            var RLj1 = document.getElementById('RLj1');
            var RLj2 = document.getElementById('RLj2');
            var RLj3 = document.getElementById('RLj3');
            var RLj4 = document.getElementById('RLj4');
            var RLj5 = document.getElementById('RLj5');
            var RLj6 = document.getElementById('RLj6');
            var OzoElmnt = document.getElementById('ozoElmnt');
            var ozo1 = document.getElementById('ozo1');
            var ozo2 = document.getElementById('ozo2');
            var ozo3 = document.getElementById('ozo3');
            var ozo4 = document.getElementById('ozo4');
            var ozo5 = document.getElementById('ozo5');
            var ozo6 = document.getElementById('ozo6');
            var ozo7 = document.getElementById('ozo7');
            var PolozajLjudi = document.getElementById('polo');
            var polo1 = document.getElementById('polo1');
            var polo2 = document.getElementById('polo2');
            var polo3 = document.getElementById('polo3');
            var polo4 = document.getElementById('polo4');
            var polo5 = document.getElementById('polo5');
            var polo6 = document.getElementById('polo6');
            var polo7 = document.getElementById('polo7');
            var polo8 = document.getElementById('polo8');
            var polo9 = document.getElementById('polo9');
            var polo10 = document.getElementById('polo10');
            var polo11 = document.getElementById('polo11');
            var polo12 = document.getElementById('polo12');
            var AlatiOprema = document.getElementById('alati');
            var alati1 = document.getElementById('alati1');
            var alati2 = document.getElementById('alati2');
            var alati3 = document.getElementById('alati3');
            var Status = document.getElementById('status');
            var proc = document.getElementById('proc');
            var proc1 = document.getElementById('proc1');
            var proc2 = document.getElementById('proc2');
            var proc3 = document.getElementById('proc3');
            var proc4 = document.getElementById('proc4');
            var proc5 = document.getElementById('proc5');
            var proc6 = document.getElementById('proc6');
            //Izviještaj o promatranju
            var DatumOtvar = document.getElementById('DatumOt');
            let DatumOtvaranjaid= new Date(DatumOtvar.value);
            let DatumOtvaranjadani = DatumOtvaranjaid.getDate();
            let DatumOtvaranjamje = DatumOtvaranjaid.getMonth();
            let DatumOtvaranjagod = DatumOtvaranjaid.getFullYear();
            let DatumOtvaranja = DatumOtvaranjadani + '/' + (DatumOtvaranjamje+1) + '/' + DatumOtvaranjagod;

            var opis = document.getElementById('opiskartice');
            var korekcija = document.getElementById('korekcija');
            var AnalizaUzroka = document.getElementById('analizaUzroka');
            var OdgovornaOsoba = document.getElementById('odgovornaOsoba');
            var RokZa = document.getElementById('rokZaRijesavanja');
            
            let RokZaRijesavanjaid = new Date(RokZa.value);
            let RokZaRijesavanjadani = RokZaRijesavanjaid.getDate();
            let RokZaRijesavanjamje = RokZaRijesavanjaid.getMonth();
            let RokZaRijesavanjagod = RokZaRijesavanjaid.getFullYear();
            let RokZaRijesavanja = RokZaRijesavanjadani + '/' + (RokZaRijesavanjamje+1) + '/' + RokZaRijesavanjagod;

            var Komentar = document.getElementById('komentar');
            var Status = document.getElementById('status');
            var datezatv = document.getElementById('datumZatvaranja');
            let DatumZatvaranjaid= new Date(datezatv.value);
            let DatumZatvaranjadani = DatumZatvaranjaid.getDate();
            let DatumZatvaranjamje = DatumZatvaranjaid.getMonth();
            let DatumZatvaranjagod = DatumZatvaranjaid.getFullYear();
            let DatumZatvaranja = DatumZatvaranjadani + '/' + (DatumZatvaranjamje + 1) + '/' + DatumZatvaranjagod;

            var STOPid1 = document.getElementById('STOPid1');

            if (opis.value == "" || korekcija.value == "") {
                alert('Potrebno je unositi opis kartice');
                $('#STOPSubmit').bind('click', function (e) {
                    return false;
                    $("#STOPSubmit").unbind('click').click();
                });
            }
            else {
                $("#STOPSubmit").unbind('click').click(); 
                alert(' Unesenoice');
                if (Safe.checked) {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open('Get', 'InsertPage.aspx?UaUc=' + UCUAIzbbornik.selectedIndex + '&STOPCheckBoxes=' + STOPCheckBoxes + '&opis=' + opis.value + '&korekcija=' + korekcija.value + '&DatumOtvaranja=' + DatumOtvaranja + '&AnalizaUzroka=' + AnalizaUzroka.value + '&OdgovornaOsoba=' + OdgovornaOsoba.value + '&RokZaRijesavanja=' + RokZaRijesavanja + '&Komentar=' + Komentar.value + '&Status=' + Status.value + '&DatumZatvaranja=' + DatumZatvaranja + '&STOPid1=' + STOPid1.value + '&opr=update', false);
                    xmlhttp.send(null);
                    //var xmlhttp = new XMLHttpRequest();
                    //xmlhttp.open('Get', 'InsertPage.aspx?opis=' + opis.value + '&korekcija=' + korekcija.value + '&DatumOtvaranja=' + DatumOtvaranja + '&AnalizaUzroka=' + AnalizaUzroka.value + '&OdgovornaOsoba=' + OdgovornaOsoba.value + '&RokZaRijesavanja=' + RokZaRijesavanja + '&Komentar=' + Komentar.value + '&Status=' + Status.value + '&DatumZatvaranja=' + DatumZatvaranja + '&opr=Safe', false);
                    //xmlhttp.send(null);
                    //opis.value = '';
                    //korekcija.value = '';


                    //location.reload(true);
                    //Display();
                    //if (xmlhttp.readyState == 4) {
                    //    if (xmlhttp.status == 200) {
                    //        var resultText = xmlhttp.responseText;
                    //        document.getElementById("mytb1").innerHTML = resultText;

                    //        if ($.fn.DataTable.isDataTable("#mytb1")) {
                    //            $('#mytb1').DataTable().clear().destroy();
                    //            $('#mytb1').DataTable({
                    //                select: true
                    //            });
                    //        }
                    //    }
                    //}
                }
                else {
                    //var forma = document.querySelectorAll("#tb1 input");
                    if (UCUAIzbbornik.selectedIndex == 0) {
                        UCUAIzb = "Unsafe act";
                    }
                    else {
                        UCUAIzb = "Unsafe condition";
                    }
                    var STOPform = document.querySelectorAll("#tb1 input");
                    var STOPCheckBoxes = loopForm(STOPform);
                    alert(STOPCheckBoxes + " uauc " + UCUAIzb);

                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open('Get', 'InsertPage.aspx?UaUc=' + UCUAIzbbornik.selectedIndex + '&STOPCheckBoxes=' + STOPCheckBoxes + '&opis=' + opis.value + '&korekcija=' + korekcija.value + '&DatumOtvaranja=' + DatumOtvaranja + '&AnalizaUzroka=' + AnalizaUzroka.value + '&OdgovornaOsoba=' + OdgovornaOsoba.value + '&RokZaRijesavanja=' + RokZaRijesavanja + '&Komentar=' + Komentar.value + '&Status=' + Status.value + '&DatumZatvaranja=' + DatumZatvaranja + '&STOPid1=' + STOPid1.value + '&opr=update', false);
                    xmlhttp.send(null);

                    //location.reload(true);
                    //Display();
                    //if (xmlhttp.readyState == 4) {
                    //    if (xmlhttp.status == 200) {
                    //        xmlhttp.open('Get', 'InsertPage.aspx?opr=display', false);
                    //        xmlhttp.send(null);
                    //        if (xmlhttp.readyState == 4) {
                    //            if (xmlhttp.status == 200) {
                    //                var resultText = xmlhttp.responseText;
                    //                document.getElementById("tablicaSTOP").innerHTML = resultText;
                    //            }
                    //        }
                    //    }
                    //}
                }

            }
        }
    </script>
    <script>
        var x, i, j, selElmnt, a, b, c;
        /* Look for any elements with the class "custom-select": */
        x = document.getElementsByClassName("custom-select");
        for (i = 0; i < x.length; i++) {
            selElmnt = x[i].getElementsByTagName("select")[0];
            /* For each element, create a new DIV that will act as the selected item: */
            a = document.createElement("DIV");
            a.setAttribute("class", "select-selected");
            a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
            x[i].appendChild(a);
            /* For each element, create a new DIV that will contain the option list: */
            b = document.createElement("DIV");
            b.setAttribute("class", "select-items select-hide");
            for (j = 0; j < selElmnt.length; j++) {
                /* For each option in the original select element,
                create a new DIV that will act as an option item: */
                c = document.createElement("DIV");
                c.innerHTML = selElmnt.options[j].innerHTML;
                c.addEventListener("click", function (e) {
                    /* When an item is clicked, update the original select box,
                    and the selected item: */
                    var y, i, k, s, h;
                    s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                    h = this.parentNode.previousSibling;
                    for (i = 0; i < s.length; i++) {
                        if (s.options[i].innerHTML == this.innerHTML) {
                            s.selectedIndex = i;
                            h.innerHTML = this.innerHTML;
                            y = this.parentNode.getElementsByClassName("same-as-selected");
                            for (k = 0; k < y.length; k++) {
                                y[k].removeAttribute("class");
                            }
                            this.setAttribute("class", "same-as-selected");
                            break;
                        }
                    }
                    h.click();
                });
                b.appendChild(c);
            }
            x[i].appendChild(b);
            a.addEventListener("click", function (e) {
                /* When the select box is clicked, close any other select boxes,
                and open/close the current select box: */
                e.stopPropagation();
                closeAllSelect(this);
                this.nextSibling.classList.toggle("select-hide");
                this.classList.toggle("select-arrow-active");
            });
        }

        function closeAllSelect(elmnt) {
            /* A function that will close all select boxes in the document,
            except the current select box: */
            var x, y, i, arrNo = [];
            x = document.getElementsByClassName("select-items");
            y = document.getElementsByClassName("select-selected");
            for (i = 0; i < y.length; i++) {
                if (elmnt == y[i]) {
                    arrNo.push(i)
                } else {
                    y[i].classList.remove("select-arrow-active");
                }
            }
            for (i = 0; i < x.length; i++) {
                if (arrNo.indexOf(i)) {
                    x[i].classList.add("select-hide");
                }
            }
        }

        /* If the user clicks anywhere outside the select box,
        then close all select boxes: */
        document.addEventListener("click", closeAllSelect);
    </script>
    
    </div>
    </form>
</body>
</html>
