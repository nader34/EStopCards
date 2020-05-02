<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoneSTOPCard.aspx.cs" EnableEventValidation="false" Inherits="CroscoStopCard.DoneSTOPCard" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pregled STOP kartice</title>
    <link rel="shortcut icon" type="image/ico" href="Resources/Logo.png" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:Panel ID="CreatePDF" runat="server">
    
    <table id="StopKartica">
        <tr>
            <td  style="width:25%">
                <table id="tb1">
                    <tr>
                        <td class="myStopCard">
                            <img src="Resources/Instruction_hr.png" width="300" draggable="false" id="StopCycl" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="SPUP">
                                <input type="radio" id="UnSafe" runat="server" name="SafeUnsafePractice" value="UnsafePractice" disabled="disabled"/>
                                <label for="UnSafe">Unsafe practice</label>
                                <input type="radio" id="Safe" runat="server" name="SafeUnsafePractice" value="SafePractice" disabled="disabled" />
                                <label for="Safe">Safe practice</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="UAUC">
                            <div class="custom-select" style="width:200px">
                                <select id="UCUAIzbbornik" runat="server" disabled="disabled">
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
                                    <td class="elementi RLj">
                                        <label for="ReakcijaLjudiId">Reakcija Ljudi</label>
                                        <input type="checkbox" id="ReakcijaLjudiId" runat="server" name="ReakcijaLjudi" value="REAKCIJA LJUDI" disabled="disabled" />                                  
                                        <table id="el1">
                                            <tr>
                                                <td class="podelementi RLjp">
                                                    <input type="checkbox" id="RLj1" runat="server" name="ReakcijaLjudip1" value="Podešavanje osobne zaštitne opreme" disabled="disabled" />
                                                    <label for="RLj1">Podešavanje osobne zaštitne opreme</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi RLjp">
                                                    <input type="checkbox" id="RLj2" runat="server" name="ReakcijaLjudip2" value="Promjena položaja" disabled="disabled" />
                                                    <label for="RLj2">Promjena položaja</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi RLjp">
                                                    <input type="checkbox" id="RLj3" runat="server" name="ReakcijaLjudip3" value="Obavljanje posla na drugi način" disabled="disabled" />
                                                    <label for="RLj3">Obavljanje posla na drugi način</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi RLjp">
                                                    <input type="checkbox" id="RLj4" runat="server" name="ReakcijaLjudip4" value="Prekidanje s poslom" disabled="disabled" />
                                                    <label for="RLj4">Prekidanje s poslom</label>
                                                </td>
                                            </tr>
                                            <t
                                                r>
                                                <td class="podelementi RLjp">
                                                    <input type="checkbox" id="RLj5" runat="server" name="ReakcijaLjudip5" value="Uzemljivanje" disabled="disabled" />
                                                    <label for="RLj5">Uzemljivanje</label>
                                                </td>
                                            </t>
                                            <tr>
                                                <td class="podelementi RLjp">
                                                    <input type="checkbox" id="RLj6" runat="server" name="ReakcijaLjudip6" value="Isključivanje strojeva" disabled="disabled" />
                                                    <label for="RLj6">Isključivanje strojeva</label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="elementi ozoe">
                                        <label for="ozoElmnt">Osobna zaštitna oprema</label>
                                        <input type="checkbox" id="ozoElmnt" runat="server" name="OsobnaZastitnaOprema" value="OsobnaZastitnaOprema" disabled="disabled" />
                                        <table id="el2">
                                            <tr>
                                                <td class="podelementi ozopod">
                                                    <input type="checkbox" id="ozo1" runat="server" name="Glava" value="Glava" disabled="disabled" />
                                                    <label for="ozo1">Glava</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi ozopod">
                                                    <input type="checkbox" id="ozo2" runat="server" name="ociiLice" value="Oči i lice" disabled="disabled" />
                                                    <label for="ozo2">Oči i lice</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi ozopod">
                                                    <input type="checkbox" id="ozo3" runat="server" name="usi" value="usi" disabled="disabled" />
                                                    <label for="ozo3">Uši</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi ozopod">
                                                    <input type="checkbox" id="ozo4" runat="server" name="respiratornisustav" value="RespiratorniSustav" disabled="disabled" />
                                                    <label for="ozo4">Respiratorni sustav</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi ozopod">
                                                    <input type="checkbox" id="ozo5" runat="server" name="Rukeisake" value="RukeiSake" disabled="disabled" />
                                                    <label for="ozo5">Ruke i šake</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi ozopod">
                                                    <input type="checkbox" id="ozo6" runat="server" name="Torzo" value="Torzo" disabled="disabled" />
                                                    <label for="ozo6">Torzo</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi ozopod">
                                                    <input type="checkbox" id="ozo7" runat="server" name="Nogeistopala" value="Nogeistopala" disabled="disabled" />
                                                    <label for="ozo7">Noge i stopala</label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="elementi">
                                        <label for="polo">Položaj ljudi (uzroci ozljeda)</label>
                                        <input type="checkbox" id="polo" runat="server" name="polozajljudi" value="polozajljudi" disabled="disabled" />
                                        <table id="el3">
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo1" runat="server" name="UdaranjeuNekiPredmet" value="UdaranjeuNekiPredmet" disabled="disabled" />
                                                    <label for="polo1">Udaranje u neki predmet</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo2" runat="server" name="UdarNekogPredmeta" value="UdarNekogPredmeta" disabled="disabled" />
                                                    <label for="polo2">Udar nekog predmeta</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo3" runat="server" name="NaciseuNaIliIzmeđuPredmeta" value="NaciseuNaIliIzmeđuPredmeta" disabled="disabled" />
                                                    <label for="polo3">Naći se u, na ili između predmeta</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo4" runat="server" name="PadNaIstojRazličitojRazini" value="PadNaIstojRazličitojRazini" disabled="disabled" />
                                                    <label for="polo4">Pad na istoj/različitoj razini</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo5" runat="server" name="DoticajsEkstremnimTemperaturama" value="DoticajsEkstremnimTemperaturama" disabled="disabled" />
                                                    <label for="polo5">Doticaj s ekstremnim temperaturama</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo6" runat="server" name="DoticajsElektričnomStrujom" value="DoticajsElektričnomStrujom" disabled="disabled" />
                                                    <label for="polo6">Doticaj s električnom strujom</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo7" runat="server" name="DoticajsVisokimTlakovima" value="DoticajsVisokimTlakovima" disabled="disabled" />
                                                    <label for="polo7">Doticaj s visokim tlakovima</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo8" runat="server" name="UdisanjeOpasnihTvari" value="UdisanjeOpasnihTvari" disabled="disabled" />
                                                    <label for="polo8">Udisanje opasnih tvari</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo9" runat="server" name="ApsorbiranjeOpasnihTvari" value="ApsorbiranjeOpasnihTvari" disabled="disabled" />
                                                    <label for="polo9">Apsorbiranje opasnih tvari</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo10" runat="server" name="PrevelikoNaprezanje" value="PrevelikoNaprezanje" disabled="disabled" />
                                                    <label for="polo10">Preveliko naprezanje</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo11" runat="server" name="PonavljanjePokreta" value="PonavljanjePokreta" disabled="disabled" />
                                                    <label for="polo11">Ponavljanje pokreta</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi polopod">
                                                    <input type="checkbox" id="polo12" runat="server" name="NespretniPolozajStaticnoDrzanje" value="NespretniPolozajStaticnoDrzanje" disabled="disabled" />
                                                    <label for="polo12">Nespretni položaj/Statično držanje</label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="elementi">
                                        <label for="alati">Alati i oprema</label>
                                        <input type="checkbox" id="alati" runat="server" name="alatiioprema" value="alatiioprema" disabled="disabled" />
                                        <table id="el4">
                                            <tr>
                                                <td class="podelementi alatipod">
                                                    <input type="checkbox" id="alati1" runat="server" name="PogresniZaDoticniPosao" value="PogresniZaDoticniPosao" disabled="disabled" />
                                                    <label for="alati1">Pogrešni za dotični posao</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi alatipod">
                                                    <input type="checkbox" id="alati2" runat="server" name="NepravilnoKoristeni" value="NepravilnoKoristeni" disabled="disabled" />
                                                    <label for="alati2">Nepravilno korišteni</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi alatipod">
                                                    <input type="checkbox" id="alati3" runat="server" name="NeispravniAlatiIOprema" value="NeispravniAlatiIOprema" disabled="disabled" />
                                                    <label for="alati3">Neispravni alati i oprema</label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="elementi">
                                        <label for="proc">Procedure i urednosti</label>
                                        <input type="checkbox" id="proc" runat="server" name="ProcedureIUrednosti" value="ProcedureiUrednosti" disabled="disabled"  />
                                        <table id="el5">
                                            <tr>
                                                <td class="podelementi procpod">
                                                    <input type="checkbox" id="proc1" runat="server" name="NeodgovarajuceProcedure" value="NeodgovarajuceProcedure" disabled="disabled"  />
                                                    <label for="proc1">Neodgovarajuće procedure</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi procpod">
                                                    <input type="checkbox" id="proc2" runat="server" name="NeznanjeNerazumijevanjeProcedura" value="NeznanjeNerazumijevanjeProcedura" disabled="disabled"  />
                                                    <label for="proc2">Neznanje/Nerazumijevanje procedura</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi procpod">
                                                    <input type="checkbox" id="proc3" runat="server" name="NepridrzavanjeProcedura" value="NepridrzavanjeProcedura" disabled="disabled"  />
                                                    <label for="proc3">Nepridržavanje procedura</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi procpod">
                                                    <input type="checkbox" id="proc4" runat="server" name="NormeUrednostiNeodgovarajuce" value="NormeUrednostiNeodgovarajuce" disabled="disabled"  />
                                                    <label for="proc4">Norme urednosti neodgovarajuće</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi procpod">
                                                    <input type="checkbox" id="proc5" runat="server" name="NeznanjeNerazumijevanjeNormiUrednosti" value="NeznanjeNerazumijevanjeNormiUrednosti" disabled="disabled"  />
                                                    <label for="proc5">Neznanje/Nerazumijevanje normi urednosti</label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="podelementi procpod">
                                                    <input type="checkbox" id="proc6" runat="server" name="NepridrzavanjeNormiUrednosti" value="NepridrzavanjeNormiUrednosti" disabled="disabled"  />
                                                    <label for="proc6">Nepridržavanje normi urednosti</label>
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
            <td style="width:25%">
                <table id="tb2" class="mojunos" style="top:0">
                    <tr>
                        <td>
                            <img src="Resources/ReportList.png" width="400" style="position: absolute;top:0;" draggable="false" id="ReportList" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Datum otvaranja:</label><br />
                            <input type="date" id="DatumOt" runat="server" name="datumo" style="width:80%" readonly="readonly" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Opis nesukladnosti: *</label><br />
                            <textarea id="opiskartice" runat="server" rows="7" cols="60" readonly="readonly"></textarea>
                        </td>
                    </tr>            
                    <tr>
                        <td>
                            <label>Korektivna radnja: *</label><br />
                            <textarea id="korekcija" runat="server" rows="7" cols="60" readonly="readonly"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Analiza uzroka:</label><br />
                            <textarea id="analizaUzroka" runat="server" rows="2" cols="60" readonly="readonly"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Odgovorna osoba:</label><br />
                            <textarea id="odgovornaOsoba" runat="server" rows="2" cols="60" readonly="readonly"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Rok za riješavanja:</label><br />
                            <input id="rokZaRijesavanja" runat="server" type="date" name="RokZaRijesavanja" style="width:80%" readonly="readonly" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Komentar:</label><br />
                            <textarea id="komentar" runat="server" rows="2" cols="60" readonly="readonly"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Status:</label><br />
                            <select id="status" runat="server" disabled="disabled" >
                                <option value="closed">Closed</option>
                                <option value="ongoing">Ongoing</option>
                                <option value="open">Open</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Datum zatvaranja:</label><br />
                            <input id="datumZatvaranja" runat="server" type="date" name="datumz" style="width:80%" readonly="readonly" />
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
                            <input id="DatumKreiranje" runat="server" type="date" name="datumc" style="width:80%" readonly="readonly" />
                        </td>
                    </tr>
                    
                </table>
                
            </td>
            <%--<td style="width:25%">
                <asp:Panel ID="tablicaSTOP1" runat="server">
                </asp:Panel>
            </td>--%>
        </tr>
    </table>
     
    </asp:Panel>
        <%--convet samo neke HTML elemente--%>
    <div id='PDFcontent'>   
            <p>Nešto za PDF</p>
            <p>Pdf drugi red</p>
    </div>
        <asp:Button ID="PDFbtn" runat="server" Text="Export PDF" OnClick="PDFbtn_Click" />
        <div id='ignoreContent'>
        </div>
        <button id='gpdf'>Generate PDF</button>
        
        <script>
        var pdfdoc = new jsPDF();
        var specialElementHandlers = {
        "#ignoreContent": function (element, renderer) {
            return true;
        }
        };

        $(document).ready(function(){
            $("#gpdf").click(function(){
                    pdfdoc.fromHTML($('#PDFcontent').html(), 10, 10, {
                    'width': 110,
                    'elementHandlers': specialElementHandlers
                    });
                    pdfdoc.save('First.pdf');
            });
        });
    </script>
    </form>
</body>
</html>
