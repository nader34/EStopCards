﻿<%@ Page Title="HS page" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="HS.aspx.cs" Inherits="CroscoStopCard.HS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="classH1">HS form</h1>
	<div id="HSForma">
        
        <table id ="WorkersData">
            <thead>
                <tr class="classtr">
                    <th class="classth"><label>Data</label></th>
					<th class="classth"><label># workers</label></th>
					<th class="classth"><label>Manhours</label></th>
					<th class="classth"><label>km</label></th>
                    <th class="classth">
                        <label>SWA</label>
                    </th>
					<th class="classth">
                        <label>LSRV</label>
                    </th>
					<th class="classth">
                        <label>ALCOTESTS</label>
                    </th>
					<th class="classth">
                        <label>NII</label>
                    </th>
                    <th class="classth">
                        <label>RTI</label>
                    </th>
                    <th class="classth">
                        <label>RTA</label>
                    </th>
					<th class="classth">
                        <label>LOPC</label>
                    </th>
                    <th class="classth">
                        <label>SPILL</label>
                    </th>
                    <th class="classth">
                        <label>FIRE</label>
                    </th>
                    <th class="classth">
                        <label>NM</label>
                    </th>
                    <th class="classth">
                        <label>FAC</label>
                    </th>
                    <th class="classth">
                        <label>MTC</label>
                    </th>
                    <th class="classth">
                        <label>RWC</label>
                    </th>
                    <th class="classth">
                        <label>LTI</label>
                    </th>
                    <th class="classth">
                        <label>FTL</label>
                    </th>
                    <th class="classth">
                        <label>TRI</label>
                    </th>
                </tr>
                <tr class="classtr">
                    <th class="classth">
                        <label>CROSCO</label>
                    </th>
                    <td class="classtd">
                        <input id="CroWorkers" class="classinput" type="number" value="0"/>
                    </td>
                    <td class="classtd">
                        <input id="CroManHours" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroKm" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroSWA" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroLSR" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroAlco" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroNII" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroRTI" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroRTA" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroLOPC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroSpill" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroFire" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroNM" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroFAC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroMTC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroRWC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroLTI" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroFTL" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="CroTRI" class="classinput" type="number" value="0"/>
                    </td>
                </tr>
                <tr class="classtr">
                    <th class="classth">
                        <label>Subcontractors</label>
                    </th>
					<td class="classtd">
                        <input id="SubWorkers" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubManHours" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubKm" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubSWA" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubLSR" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubAlco" class="classinput" type="number" value="0"/>
                    </td>
                    <td class="classtd">
                        <input id="SubNII" class="classinput" type="number" value="0"/>
                    </td>
                    <td class="classtd">
                        <input id="SubRTI" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubRTA" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubLOPC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubSpill" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubFire" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubNM" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubFAC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubMTC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubRWC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubLTI" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubFTL" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="SubTRI" class="classinput" type="number" value="0"/>
                    </td>
                </tr>
				<tr class="classtr">
                    <th class="classth">
                        <label>3rd party</label>
                    </th>
					<td class="classtd">
                        <input id="RdWorkers" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdManHours" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdKm" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdSWA" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdLSR" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdAlco" class="classinput" type="number" value="0"/>
                    </td>
                    <td class="classtd">
                        <input id="RdNII" class="classinput" type="number" value="0"/>
                    </td>
                    <td class="classtd">
                        <input id="RdRTI" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdRTA" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdLOPC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdSpill" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdFire" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdNM" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdFAC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdMTC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdRWC" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdLTI" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdFTL" class="classinput" type="number" value="0"/>
                    </td>
					<td class="classtd">
                        <input id="RdTRI" class="classinput" type="number" value="0"/>
                    </td>
                </tr>
				<tr class="classtr">
					<th colspan="1" rowspan="2" class="classth">Drills</th>
					<th colspan="1" class="classth">H2S/CO2 Drill</th>
					<th colspan="1" class="classth">Evacuation Drill</th>
					<th colspan="1" class="classth">BOP Drill (Gas Drill)</th>
					<th colspan="1" class="classth">Fire Drill</th>
					<th colspan="1" class="classth">Rescue Drill</th>
					<th colspan="1" class="classth">Spill Drill</th>
					<th colspan="1" class="classth">Other Drills</th>
					<th colspan="11" class="classth">Other drills - comment</th>
					<th colspan="1" class="classth">Days without LTI</th>
				</tr>
				<tr class="classtr">
					<td colspan="1" class="classtd"><input id="DrillH2S" class="classinput" type="number" value="0"/></td>
					<td colspan="1" class="classtd"><input id="DrillEvac" class="classinput" type="number" value="0"/></td>
					<td colspan="1" class="classtd"><input id="DrillBOP" class="classinput" type="number" value="0"/></td>
					<td colspan="1" class="classtd"><input id="DrillFire" class="classinput" type="number" value="0"/></td>
					<td colspan="1" class="classtd"><input id="DrillRescue" class="classinput" type="number" value="0"/></td>
					<td colspan="1" class="classtd"><input id="DrillSpill" class="classinput" type="number" value="0"/></td>
					<td colspan="1" class="classtd"><input id="DrillOther" class="classinput" type="number" value="0"/></td>
					<td colspan="11" class="classtd"><input id="DrillComent" class="classinput" type="text"/></td>
					<td colspan="1" class="classtd"><input id="DaysWout" class="classinput" type="number"/></td>
				</tr>
                <tr class="classtr">
                    <td colspan="2" class="classlb"><label>Proces: </label></td>
                    <td colspan="4" class="classtd"><select id="ProcesList" class="classinput" style="width:100%"><option></option><option value="Bušenje">Bušenje</option><option value="Remont">Remont</option><option value="Bušotinski servisi">Bušotinski servisi</option><option value="Održavanje">Održavanje</option></select></td>
					<td colspan="2" class="classlb"><label>Servis: </label></td>
                    <td colspan="5" class="classtd"><select id="ServisList" class="classinput" style="width:100%"><option value=""></option></select></td>
                    <td colspan="2" class="classlb"><label>Tim/Postrojenja: </label></td>
                    <td colspan="5" class="classtd"><select id="Timlist" class="classinput" style="width:100%"><option value=""></option></select></td>	
                </tr>
                <tr class="classtr">
					<td colspan="1" class="classtd"><div id="UnosHS"><input id="UnosHSbtn" class="classinput" type="submit" value="Unos!" onclick="ProvjeraHSForm()" /></div></td>
                    <td colspan="1" class="classtd"><input id="ZadnjiRed" class="classinput" type="button" value="Zadnji red" onclick="ZadnjiRedClick()"/></td>
                    <td colspan="1" class="classlb"><label>Datum: </label></td>
					<td colspan="2" class="classtd"><input id="HSdate" class="classinput" type="date"/></td>
                    <td colspan="1" class="classlb"><label>Lokacija: </label></td>
                    <td colspan="4" class="classtd"><input id="HSLocacija" class="classinput" type="text"/></td>
                    <td colspan="1" class="classlb"><label>Operator: </label></td>
                    <td colspan="4" class="classtd"><input id="HSOperator" class="classinput" type="text"/></td>
                    <td colspan="1" class="classlb"><label>Status: </label></td>
                    <td colspan="4" class="classtd"><input id="HSStatus" class="classinput" list="Status" style="width:100%"/><datalist id="Status"><option value="Pod ugovorom"><option value="Nije pod ugovorom"></datalist></td>
					<%--<td colspan="6" class="classtd"></td>--%>
				</tr>
            </thead>
           
        </table>
	</div>
	    
    
  
    <table id="HS" class="table table-striped table-bordered mydatatable" style="width: 100%; left:20px">
        <thead>
            <tr>
                <th colspan="1" rowspan="2" style='cursor: pointer'>HSID</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>No</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>First name</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Last name</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Datum <strong>Date</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Proces</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Servis</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Tim/postrojenja</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Lokacija <strong>Site</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Operator</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Status</th>

                <th colspan="4" style='cursor: pointer'>Broj radnika <strong>Number of Workers</strong></th>
                <th colspan="4" style='cursor: pointer'>Sati rada <strong>Manhours</strong></th>
                <th colspan="4" style='cursor: pointer'>Kilometraža vozila <strong>Mileage (km)</strong></th>
                <th colspan="16" style='cursor: pointer'>CROSCO</th>
                <th colspan="16" style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th>
                <th colspan="16" style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th>

               <%-- <th colspan="1" rowspan="2" style='cursor: pointer'>SWA</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Provjera na prisutnosti alkohola <strong>Alcotests</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Kršenje temeljnih prvila sigurnosti <strong>Life saving rules violation</strong></th>--%>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Vježba postupanje kod pojave opasnih plinova <strong>H2S Drill, CO2 Drill</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Vježba Evakuacija <strong>Evacuation drill</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Vježba zatvaranja bušotine <strong>BOP Drill (Gas Drill)</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Vatrogasna vježba <strong>Fire Drill</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Vježba spašavanja unesrećenih <strong>Rescue Drill</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Vježba izlijevanja u okoliš <strong>Spill in the environment drill</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Ostale vježbe <strong>Other Drills</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Ostale vježbe - komentar <strong>Other drills - comment</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Broj dana bez ozljeda <strong>Days without LTI</strong></th>
            </tr>
            <tr>
                <th style='cursor: pointer'>CROSCO</th>
                <th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th>
                <th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th>
                <th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th>

                <th style='cursor: pointer'>CROSCO</th>
                <th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th>
                <th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th>
                <th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th>

                <th style='cursor: pointer'>CROSCO</th>
                <th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th>
                <th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th>
                <th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th>

                <th style='cursor: pointer'>SWA</th>
                <th style='cursor: pointer'>LSRV</th>
                <th style='cursor: pointer'>Alcotests</th>
                <th style='cursor: pointer'>NII</th>
                <th style='cursor: pointer'>RTI</th>
                <th style='cursor: pointer'>RTA</th>
                <th style='cursor: pointer'>LOPC</th>
                <th style='cursor: pointer'>SPILL</th>
                <th style='cursor: pointer'>FIRE</th>
                <th style='cursor: pointer'>NM</th>
                <th style='cursor: pointer'>FAC</th>
                <th style='cursor: pointer'>MTC</th>
                <th style='cursor: pointer'>RWC</th>
                <th style='cursor: pointer'>LTI</th>
                <th style='cursor: pointer'>FTL</th>
                <th style='cursor: pointer'>TRI</th>

                <th style='cursor: pointer'>SWA</th>
                <th style='cursor: pointer'>LSRV</th>
                <th style='cursor: pointer'>Alcotests</th>
                <th style='cursor: pointer'>NII</th>
                <th style='cursor: pointer'>RTI</th>
                <th style='cursor: pointer'>RTA</th>
                <th style='cursor: pointer'>LOPC</th>
                <th style='cursor: pointer'>SPILL</th>
                <th style='cursor: pointer'>FIRE</th>
                <th style='cursor: pointer'>NM</th>
                <th style='cursor: pointer'>FAC</th>
                <th style='cursor: pointer'>MTC</th>
                <th style='cursor: pointer'>RWC</th>
                <th style='cursor: pointer'>LTI</th>
                <th style='cursor: pointer'>FTL</th>
                <th style='cursor: pointer'>TRI</th>

                <th style='cursor: pointer'>SWA</th>
                <th style='cursor: pointer'>LSRV</th>
                <th style='cursor: pointer'>Alcotests</th>
                <th style='cursor: pointer'>NII</th>
                <th style='cursor: pointer'>RTI</th>
                <th style='cursor: pointer'>RTA</th>
                <th style='cursor: pointer'>LOPC</th>
                <th style='cursor: pointer'>SPILL</th>
                <th style='cursor: pointer'>FIRE</th>
                <th style='cursor: pointer'>NM</th>
                <th style='cursor: pointer'>FAC</th>
                <th style='cursor: pointer'>MTC</th>
                <th style='cursor: pointer'>RWC</th>
                <th style='cursor: pointer'>LTI</th>
                <th style='cursor: pointer'>FTL</th>
                <th style='cursor: pointer'>TRI</th>
            </tr>
        </thead>
        <asp:Panel id="HStbody" CssClass="container mb-3 mt-3" runat="server">  

        </asp:Panel>

    </table>
    
    
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libspopper.js/1.14.7/umd/popper.min.js"></script>--%>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap//4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script>
        function ZadnjiRedClick() {
            var a = $('.mydatatable').DataTable();
            var idxLast = a.rows()[length].length - 1;
            //var b =  a.cells(idxLast,1).data()[0];
            //var c =b.substring(6,b.length-7);
            for (var x = 8; x < 80; x++) {
                var b = a.cells(idxLast, x).data()[0];
                var c = b.substring(6, b.length - 7);
                var HSform = $('#WorkersData tr');
                if (x == 8) {
                    HSform[7].cells[5].firstChild.value = c;
                }
                else if (x == 9) {
                    HSform[7].cells[7].firstChild.value = c;
                }
                else if (x == 10) {
                    HSform[7].cells[9].firstChild.value = c;
                }
                else if (x > 10 && x < 14) {
                    var j = x - 10;
                    HSform[j].cells[1].firstElementChild.valueAsNumber = c;
                }
                else if (x > 14 && x < 18) {
                    j = x - 14;
                    HSform[j].cells[2].firstElementChild.valueAsNumber = c;
                }
                else if (x > 18 && x < 22) {
                    j = x - 18;
                    HSform[j].cells[3].firstElementChild.valueAsNumber = c;
                }
                else if (x > 22 && x < 39) {
                    j = x - 19;
                    HSform[1].cells[j].firstElementChild.valueAsNumber= c;
                }
                else if (x > 38 && x < 55) {
                    j = x - 35;
                    HSform[2].cells[j].firstElementChild.valueAsNumber=c;
                }
                else if (x > 54 && x < 71) {
                    j = x - 51;
                    HSform[3].cells[j].firstElementChild.valueAsNumber= c;
                }
                 else if (x > 70 && x < 78) {
                    j = x - 71;
                    HSform[5].cells[j].firstElementChild.valueAsNumber= c;
                }
                else if (x==78) {                    
                    HSform[5].cells[7].firstElementChild.value= c;
                }
                else if (x==79) {
                    HSform[5].cells[8].firstElementChild.valueAsNumber= parseInt(c) + 1;
                }
            }
        }
        function OrgJedince() {
            var proces = document.getElementById('ProcesList');
            var servis = document.getElementById('ServisList');
            var Tim = document.getElementById('Timlist');
            proces.onchange = function () {
                if (proces.value == "Bušenje") {
                    servis.innerHTML = "<option value=''></option><option value='Bušaće operacije regionalne'>Bušaće operacije regionalne</option>" +
                        "<option value='Bušaće operacije međunarodne'>Bušaće operacije međunarodne</option>";

                } else if (proces.value == "Remont") {
                    servis.innerHTML = "<option value=''></option><option value='Servis izvođenja remontnih radova'>Servis izvođenja remontnih radova</option>" +
                        "<option value='Servis podrške remontnim radovima'>Servis podrške remontnim radovima</option>";

                } else if (proces.value == "Bušotinski servisi") {
                    servis.innerHTML = "<option value=''></option><option value='Servis bušotinskih mjerenja'>Servis bušotinskih mjerenja</option>" +
                        "<option value = 'Servis cementacije i stimulacije'>Servis cementacije i stimulacije</option><option value='Specijalni servisi'>Specijalni servisi</option>" +
                        "<option value='Servis bušotinske opreme i alata'>Servis bušotinske opreme i alata</option>";
                } else if (proces.value == "Održavanje") {
                    servis.innerHTML = "<option value=''></option><option value='Servis procesnih postrijenja'>Servis procesnih postrijenja</option>" +
                        "<option value='Inženjering i sustav preventivnog održavanja'>Inženjering i sustav preventivnog održavanja</option>" +
                        "<option value='Servis za energetiku'>Servis za energetiku</option>";
                } else {
                    servis.innerHTML = "<option value=''></option>";
                }
            };
            servis.onchange = function () {
                if (servis.value == "Bušaće operacije regionalne") {
                    Tim.innerHTML="<option value='Labin'>Labin</option><option value='National 402'>National 402</option>";
                  
                } else if (servis.value == "Bušaće operacije međunarodne") {
                    Tim.innerHTML = "<option value='Skytop 3'>Skytop 3</option><option value='Lyb 3'>Lyb 37</option><option value='Emsco 401'>Emsco 401</option>" +
                        "<option value='Emsco 602'>Emsco 602</option><option value='Emsco 605'>Emsco 605</option><option value='R 69'>R 69</option><option value='Ideco 301'>Ideco 301</option>";
                    
                } else if (servis.value == "Servis izvođenja remontnih radova") {
                    Tim.innerHTML = "<option value='IRI 1'>IRI 1</option><option value='IRI 2'>IRI 2</option><option value='IRI 3'>IRI 3</option><option value='Cardwell 1'>Cardwell 1</option>"+
                        "<option value = 'Cardwell 3'>Cardwell 3</option><option value='Cardwell 4'>Cardwell 4</option><option value='Cardwell 5'>Cardwell 5</option>" +
                        "<option value='Cardwell 7'>Cardwell 7</option><option value='Cardwell 8'>Cardwell 8</option><option value='Kraz 4'>Kraz 4</option><option value='Kraz 5'>Kraz 5</option>" +
                        "<option value='National 3'>National 3</option><option value='RP 501'>RP 501</option>";
                    
                } else if (servis.value == "Servis podrške remontnim radovima") {
                    Tim.innerHTML = "<option value='Pripremna brigada'>Pripremna brigada</option><option value='RIK Žutica'>RIK Žutica</option>";


                } else if (servis.value == "Servis bušotinskih mjerenja") {
                    Tim.innerHTML = "<option value='Elektrokarotaža'>Elektrokarotaža</option><option value='Radovi s žicom'>Radovi s žicom</option><option value='Protočna mjerenja'>Protočna mjerenja</option>";
                    
                } else if (servis.value == "Servis cementacije i stimulacije") {
                    Tim.innerHTML = "<option value='CiS Hrvatska'>CiS Hrvatska</option><option value='CiS Albanija'>CiS Albanija</option><option value='CiS Ukrajina'>CiS Ukrajina</option>";
                    
                } else if (servis.value == "Specijalni servisi") {
                    Tim.innerHTML = "<option value='H2S'>H2S</option><option value='Savitljivi tubing i dušk'>Savitljivi tubing i dušk</option>" +
                        "<option value='Instrumentacije'>Instrumentacije</option><option value='Isplaka'>Isplaka</option>";
                    
                } else if (servis.value == "Servis bušotinske opreme i alata") {
                    Tim.innerHTML = "<option value='Oprema za kontrolu tlaka'>Oprema za kontrolu tlaka</option><option value='Dubinske opreme'>Dubinske opreme</option>" +
                        "<option value='Oprema na podištu tornja'>Oprema na podištu tornja</option><option value='Ugradnja cijevnog alata'>Ugradnja cijevnog alata</option>" +
                        "<option value='Inspekcije i priprema cijevnog alata'>Inspekcije i priprema cijevnog alata</option>";
                    
                } else if (servis.value == "Servis procesnih postrijenja") {
                    Tim.innerHTML = "<option value='Motori'>Motori</option><option value='Tim 2'>Tim 2</option>";


                } else if (servis.value == "Inženjering i sustav preventivnog održavanja") {
                    Tim.innerHTML = "<option value='ISPO'>ISPO</option><option value='IK Ivanić Grad'>IK Ivanić Grad</option><option value='IK Žutica'>IK Žutica</option>" +
                        "<option value='IK Ivanićko Graberije'>Ivanićko Graberije</option><option value='CZO'>CZO</option>";


                } else if (servis.value == "Servis za energetiku") {
                    Tim.innerHTML = "<option value='Motori'>Motori</option><option value='Tim 2'>Tim 2</option>";


                } 
            };
        }
    </script>
    <script>
        function Zbroj() {
            var CroTRI = document.getElementById("CroTRI");
            var CroFTL = document.getElementById("CroFTL");
            var CroLTI = document.getElementById("CroLTI");
            var CroRWC = document.getElementById("CroRWC");
            var CroMTC = document.getElementById("CroMTC");
            CroFTL.valueAsNumber = 0;
            CroLTI.valueAsNumber = 0;
            CroRWC.valueAsNumber = 0;
            CroMTC.valueAsNumber = 0;
            //CroTRI.innerText = CroFTL.innerText + CroLTI.innerText + CroRWC.innerText + CroMTC.innerText;
            CroFTL.onchange = function () { CroTRI.valueAsNumber = CroFTL.valueAsNumber + CroLTI.valueAsNumber + CroRWC.valueAsNumber + CroMTC.valueAsNumber };
            CroLTI.onchange = function () { CroTRI.valueAsNumber = CroFTL.valueAsNumber + CroLTI.valueAsNumber + CroRWC.valueAsNumber + CroMTC.valueAsNumber };
            CroRWC.onchange = function () { CroTRI.valueAsNumber = CroFTL.valueAsNumber + CroLTI.valueAsNumber + CroRWC.valueAsNumber + CroMTC.valueAsNumber };
            CroMTC.onchange = function () { CroTRI.valueAsNumber = CroFTL.valueAsNumber + CroLTI.valueAsNumber + CroRWC.valueAsNumber + CroMTC.valueAsNumber };

            var SubTRI = document.getElementById("SubTRI");
            var SubFTL = document.getElementById("SubFTL");
            var SubLTI = document.getElementById("SubLTI");
            var SubRWC = document.getElementById("SubRWC");
            var SubMTC = document.getElementById("SubMTC");
            SubFTL.valueAsNumber = 0;
            SubLTI.valueAsNumber = 0;
            SubRWC.valueAsNumber = 0;
            SubMTC.valueAsNumber = 0;
            //CroTRI.innerText = CroFTL.innerText + CroLTI.innerText + CroRWC.innerText + CroMTC.innerText;
            SubFTL.onchange = function () { SubTRI.valueAsNumber = SubFTL.valueAsNumber + SubLTI.valueAsNumber + SubRWC.valueAsNumber + SubMTC.valueAsNumber };
            SubLTI.onchange = function () { SubTRI.valueAsNumber = SubFTL.valueAsNumber + SubLTI.valueAsNumber + SubRWC.valueAsNumber + SubMTC.valueAsNumber };
            SubRWC.onchange = function () { SubTRI.valueAsNumber = SubFTL.valueAsNumber + SubLTI.valueAsNumber + SubRWC.valueAsNumber + SubMTC.valueAsNumber };
            SubMTC.onchange = function () { SubTRI.valueAsNumber = SubFTL.valueAsNumber + SubLTI.valueAsNumber + SubRWC.valueAsNumber + SubMTC.valueAsNumber };

            var RdTRI = document.getElementById("RdTRI");
            var RdFTL = document.getElementById("RdFTL");
            var RdLTI = document.getElementById("RdLTI");
            var RdRWC = document.getElementById("RdRWC");
            var RdMTC = document.getElementById("RdMTC");
            RdFTL.valueAsNumber = 0;
            RdLTI.valueAsNumber = 0;
            RdRWC.valueAsNumber = 0;
            RdMTC.valueAsNumber = 0;
            //CroTRI.innerText = CroFTL.innerText + CroLTI.innerText + CroRWC.innerText + CroMTC.innerText;
            RdFTL.onchange = function () { RdTRI.valueAsNumber = RdFTL.valueAsNumber + RdLTI.valueAsNumber + RdRWC.valueAsNumber + RdMTC.valueAsNumber };
            RdLTI.onchange = function () { RdTRI.valueAsNumber = RdFTL.valueAsNumber + RdLTI.valueAsNumber + RdRWC.valueAsNumber + RdMTC.valueAsNumber };
            RdRWC.onchange = function () { RdTRI.valueAsNumber = RdFTL.valueAsNumber + RdLTI.valueAsNumber + RdRWC.valueAsNumber + RdMTC.valueAsNumber };
            RdMTC.onchange = function () { RdTRI.valueAsNumber = RdFTL.valueAsNumber + RdLTI.valueAsNumber + RdRWC.valueAsNumber + RdMTC.valueAsNumber };
        }
    </script>
    <script>
        function display() {
            var myTableHead ="<table id='HS' class='table table-striped table-bordered mydatatable' style='width: 100%; left:20px'><thead><tr><th colspan='1' rowspan='2' style='cursor: pointer'>HSID</th><th colspan='1' rowspan='2' style='cursor: pointer'>No</th><th colspan='1' rowspan='2' style='cursor: pointer'>First name</th><th colspan='1' rowspan='2' style='cursor: pointer'>Last name</th><th colspan='1' rowspan='2' style='cursor: pointer'>Datum <strong>Date</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Proces</th><th colspan='1' rowspan='2' style='cursor: pointer'>Servis</th><th colspan='1' rowspan='2' style='cursor: pointer'>Tim/postrojenja</th><th colspan='1' rowspan='2' style='cursor: pointer'>Lokacija <strong>Site</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Operator</th><th colspan='1' rowspan='2' style='cursor: pointer'>Status</th><th colspan='4' style='cursor: pointer'>Broj radnika <strong>Number of Workers</strong></th><th colspan='4' style='cursor: pointer'>Sati rada <strong>Manhours</strong></th><th colspan='4' style='cursor: pointer'>Kilometraža vozila <strong>Mileage (km)</strong></th><th colspan='16' style='cursor: pointer'>CROSCO</th><th colspan='16' style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th colspan='16' style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba postupanje kod pojave opasnih plinova <strong>H2S Drill, CO2 Drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba Evakuacija <strong>Evacuation drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba zatvaranja bušotine <strong>BOP Drill (Gas Drill)</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vatrogasna vježba <strong>Fire Drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba spašavanja unesrećenih <strong>Rescue Drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba izlijevanja u okoliš <strong>Spill in the environment drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Ostale vježbe <strong>Other Drills</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Ostale vježbe - komentar <strong>Other drills - comment</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Broj dana bez ozljeda <strong>Days without LTI</strong></th></tr><tr><th style='cursor: pointer'>CROSCO</th><th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th><th style='cursor: pointer'>CROSCO</th><th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th><th style='cursor: pointer'>CROSCO</th><th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th><th style='cursor: pointer'>SWA</th><th style='cursor: pointer'>LSRV</th><th style='cursor: pointer'>Alcotests</th><th style='cursor: pointer'>NII</th><th style='cursor: pointer'>RTI</th><th style='cursor: pointer'>RTA</th><th style='cursor: pointer'>LOPC</th><th style='cursor: pointer'>SPILL</th><th style='cursor: pointer'>FIRE</th><th style='cursor: pointer'>NM</th><th style='cursor: pointer'>FAC</th><th style='cursor: pointer'>MTC</th><th style='cursor: pointer'>RWC</th><th style='cursor: pointer'>LTI</th><th style='cursor: pointer'>FTL</th><th style='cursor: pointer'>TRI</th><th style='cursor: pointer'>SWA</th><th style='cursor: pointer'>LSRV</th><th style='cursor: pointer'>Alcotests</th><th style='cursor: pointer'>NII</th><th style='cursor: pointer'>RTI</th><th style='cursor: pointer'>RTA</th><th style='cursor: pointer'>LOPC</th><th style='cursor: pointer'>SPILL</th><th style='cursor: pointer'>FIRE</th><th style='cursor: pointer'>NM</th><th style='cursor: pointer'>FAC</th><th style='cursor: pointer'>MTC</th><th style='cursor: pointer'>RWC</th><th style='cursor: pointer'>LTI</th><th style='cursor: pointer'>FTL</th><th style='cursor: pointer'>TRI</th><th style='cursor: pointer'>SWA</th><th style='cursor: pointer'>LSRV</th><th style='cursor: pointer'>Alcotests</th><th style='cursor: pointer'>NII</th><th style='cursor: pointer'>RTI</th><th style='cursor: pointer'>RTA</th><th style='cursor: pointer'>LOPC</th><th style='cursor: pointer'>SPILL</th><th style='cursor: pointer'>FIRE</th><th style='cursor: pointer'>NM</th><th style='cursor: pointer'>FAC</th><th style='cursor: pointer'>MTC</th><th style='cursor: pointer'>RWC</th><th style='cursor: pointer'>LTI</th><th style='cursor: pointer'>FTL</th><th style='cursor: pointer'>TRI</th></tr></thead>";
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'InsertHS.aspx?opr=display', false);
            xmlhttp.send(null);
            var resultText = xmlhttp.responseText;
            var myTable = myTableHead + resultText;
            //document.getElementById("ContentPlaceHolder1_HStbody").innerHTML = resultText;
            document.getElementById("HS").innerHTML = myTable;
            var a = $('.mydatatable').DataTable();
            a.destroy();
            $('.mydatatable').DataTable();
            var hsTable = document.getElementById('HS_wrapper');
            hsTable.style.marginLeft = '20px';
           // if (xmlhttp.readyState == 4) {
           //    if (xmlhttp.status == 200) {
           //        var resultText = xmlhttp.responseText;
           //        document.getElementById("myHSTable").innerHTML = resultText;
           //        if ($.fn.DataTable.isDataTable(".mydatatable")) {
           //            $('.mydatatable').DataTable().clear().destroy();
           //            $('.mydatatable').DataTable();
           //        } else {
           //            $('.mydatatable').DataTable();
           //        }
           //    }
           //}
        }
    </script>
    
    <script>
        $(document).ready(function () {
            display();
            UpdateHS();
            Zbroj();  
            OrgJedince();
        });
    </script>
    <script>
        function HSDictionary(YNmae) {
            var HSdict = {
                0:"HSID",
                1:"UserID",         
                2:"FirstName",         
                3:"LastName",         
                4:"DateCreated",         
                5:"Oj1",         
                6:"SubOj",         
                7:"SubOjDva",         
                8:"Lokacija",         
                9:"Operatori",         
                10:"Status",               
                11:"ManNoCrosco",
                12:"ManNoContracori",
                13:"ManNoThirdParty",
                14:"SumNo",
                15:"ManHoursCrosco",
                16:"ManHoursContracori",
                17:"ManHoursThirdParty",
                18:"SumManHours",
                19:"KMCrosco",
                20:"KMContracori",
                21:"KMThirdParty",
                22:"SumKM",
                23:"CRoSWA",
                24:"CRoLSRV",
                25:"CRoAlco",
                26:"CRoNII",
                27:"CRoRTI",
                28:"CRoRTA",
                29:"CRoLOPC",
                30:"CRoSPILL",
                31:"CRoFIRE",
                32:"CRoNM",
                33:"CRoFAC",
                34:"CRoMTC",
                35:"CRoRWC",
                36:"CRoLTI",
                37:"CRoFTL",
                38:"CRoTRI",
                39:"ConSWA",
                40:"ConLSRV",
                41:"ConAlco",
                42:"ConNII",
                43:"ConRTI",
                44:"ConRTA",
                45:"ConLOPC",
                46:"ConSPILL",
                47:"ConFIRE",
                48:"ConNM",
                49:"ConFAC",
                50:"ConMTC",
                51:"ConRWC",
                52:"ConLTI",
                53:"ConFTL",
                54:"ConTRI",
                55:"ThrdSWA",
                56:"ThrdLSRV",
                57:"ThrdAlco",
                58:"ThrdNII",
                59:"ThrdRTI",
                60:"ThrdRTA",
                61:"ThrdLOPC",
                62:"ThrdSPILL",
                63:"ThrdFIRE",
                64:"ThrdNM",
                65:"ThrdFAC",
                66:"ThrdMTC",
                67:"ThrdRWC",
                68:"ThrdLTI",
                69:"ThrdFTL",
                70:"ThrdTRI",
                71:"PlinDrill",
                72:"EvacDrill",
                73:"BOPDrill",
                74:"FireDrill",
                75:"RescueDrill",
                76:"SpillDrill",
                77:"OtherDrill",
                78:"OtherDrillComment",
                79:"DaysWoLTI"
            };
            var KolumnName = HSdict[YNmae];
            return (KolumnName);
        }
    </script>
    <script>
        function ProvjeraHSForm() {
            var HSLocacija = document.getElementById("HSLocacija");
            var HSOperator = document.getElementById("HSOperator");
            var HSStatus = document.getElementById("HSStatus");
            var HsDatum = document.getElementById("HSdate");
            var CroWorkers = document.getElementById("CroWorkers");
            var CroManHours = document.getElementById("CroManHours");
            var CroKm = document.getElementById("CroKm");

            var CroTRI = document.getElementById("CroTRI");
            var CroFTL = document.getElementById("CroFTL");
            var CroLTI = document.getElementById("CroLTI");
            var CroRWC = document.getElementById("CroRWC");
            var CroMTC = document.getElementById("CroMTC");
            var CroFAC = document.getElementById("CroFAC");
            var CroNM = document.getElementById("CroNM");
            var CroFire = document.getElementById("CroFire");
            var CroSpill = document.getElementById("CroSpill");
            var CroLOPC = document.getElementById("CroLOPC");
            var CroRTA = document.getElementById("CroRTA");
            var CroRTI = document.getElementById("CroRTI");
            var CroNII = document.getElementById("CroNII");
            var CroAlco = document.getElementById("CroAlco");
            var CroLSR = document.getElementById("CroLSR");
            var CroSWA = document.getElementById("CroSWA");

            var SubWorkers = document.getElementById("SubWorkers");
            var SubManHours = document.getElementById("SubManHours");
            var SubKm = document.getElementById("SubKm");
            var SubTRI = document.getElementById("SubTRI");
            var SubFTL = document.getElementById("SubFTL");
            var SubLTI = document.getElementById("SubLTI");
            var SubRWC = document.getElementById("SubRWC");
            var SubMTC = document.getElementById("SubMTC");
            var SubFAC = document.getElementById("SubFAC");
            var SubNM = document.getElementById("SubNM");
            var SubFire = document.getElementById("SubFire");
            var SubSpill = document.getElementById("SubSpill");
            var SubLOPC = document.getElementById("SubLOPC");
            var SubRTA = document.getElementById("SubRTA");
            var SubRTI = document.getElementById("SubRTI");
            var SubNII = document.getElementById("SubNII");
            var SubAlco = document.getElementById("SubAlco");
            var SubLSR = document.getElementById("SubLSR");
            var SubSWA = document.getElementById("SubSWA");

            var RdWorkers = document.getElementById("RdWorkers");
            var RdManHours = document.getElementById("RdManHours");
            var RdKm = document.getElementById("RdKm");
            var RdTRI = document.getElementById("RdTRI");
            var RdFTL = document.getElementById("RdFTL");
            var RdLTI = document.getElementById("RdLTI");
            var RdRWC = document.getElementById("RdRWC");
            var RdMTC = document.getElementById("RdMTC");
            var RdFAC = document.getElementById("RdFAC");
            var RdNM = document.getElementById("RdNM");
            var RdFire = document.getElementById("RdFire");
            var RdSpill = document.getElementById("RdSpill");
            var RdLOPC = document.getElementById("RdLOPC");
            var RdRTA = document.getElementById("RdRTA");
            var RdRTI = document.getElementById("RdRTI");
            var RdNII = document.getElementById("RdNII");
            var RdAlco = document.getElementById("RdAlco");
            var RdLSR = document.getElementById("RdLSR");
            var RdSWA = document.getElementById("RdSWA");

            var DrillH2S = document.getElementById("DrillH2S");
            var DrillEvac = document.getElementById("DrillEvac");
            var DrillBOP = document.getElementById("DrillBOP");
            var DrillFire = document.getElementById("DrillFire");
            var DrillRescue = document.getElementById("DrillRescue");
            var DrillSpill = document.getElementById("DrillSpill");
            var DrillOther = document.getElementById("DrillOther");
            var DrillComent = document.getElementById("DrillComent");

            if (HsDatum.value == "" || CroWorkers.value == "" || CroManHours.value == "") {
                alert("Niste unijeli borj radnika")
                $('#UnosHS').bind('click', function (e) {
                    return false;
                    
                    $("#UnosHS").unbind('click').click();
                });
            }
            else {
                $("#UnosHS").unbind('click').click();
                var insertString = 'InsertHS.aspx?opr=InsertHS&HSLocacija=' + HSLocacija.value + '&HSOperator=' + HSOperator.value + '&HSStatus=' + HSStatus.value + '&HsDatum=' + HsDatum.value +
                    '&CroWorkers=' + CroWorkers.value + '&CroManHours=' + CroManHours.value + '&CroKm=' + CroKm.value + '&CroSWA=' + CroSWA.value + '&CroLSR=' + CroLSR.value + '&CroAlco=' + CroAlco.value +
                    '&CroNII=' + CroNII.value + '&CroRTI=' + CroRTI.value + '&CroRTA=' + CroRTA.value + '&CroLOPC=' + CroLOPC.value + '&CroSpill=' + CroSpill.value + '&CroFire=' + CroFire.value +
                    '&CroNM=' + CroNM.value + '&CroFAC=' + CroFAC.value + '&CroMTC=' + CroMTC.value + '&CroRWC=' + CroRWC.value + '&CroLTI=' + CroLTI.value + '&CroFTL=' + CroFTL.value + '&CroTRI=' + CroTRI.value + 
                    '&SubWorkers=' + SubWorkers.value + '&SubManHours=' + SubManHours.value + '&SubKm=' + SubKm.value + '&SubSWA=' + SubSWA.value + '&SubLSR=' + SubLSR.value + '&SubAlco=' + SubAlco.value +
                    '&SubNII=' + SubNII.value + '&SubRTI=' + SubRTI.value + '&SubRTA=' + SubRTA.value + '&SubLOPC=' + SubLOPC.value + '&SubSpill=' + SubSpill.value + '&SubFire=' + SubFire.value +
                    '&SubNM=' + SubNM.value + '&SubFAC=' + SubFAC.value + '&SubMTC=' + SubMTC.value + '&SubRWC=' + SubRWC.value + '&SubLTI=' + SubLTI.value + '&SubFTL=' + SubFTL.value + '&SubTRI=' + SubTRI.value + 
                    '&RdWorkers=' + RdWorkers.value + '&RdManHours=' + RdManHours.value + '&RdKm=' + RdKm.value + '&RdSWA=' + RdSWA.value + '&RdLSR=' + RdLSR.value + '&RdAlco=' + RdAlco.value +
                    '&RdNII=' + RdNII.value + '&RdRTI=' + RdRTI.value + '&RdRTA=' + RdRTA.value + '&RdLOPC=' + RdLOPC.value + '&RdSpill=' + RdSpill.value + '&RdFire=' + RdFire.value +
                    '&RdNM=' + RdNM.value + '&RdFAC=' + RdFAC.value + '&RdMTC=' + RdMTC.value + '&RdRWC=' + RdRWC.value + '&RdLTI=' + RdLTI.value + '&RdFTL=' + RdFTL.value + '&RdTRI=' + RdTRI.value + 
                    '&DrillH2S=' + DrillH2S.value + '&DrillEvac=' + DrillEvac.value + '&DrillBOP=' + DrillBOP.value + '&DrillFire=' + DrillFire.value + '&DrillRescue=' + DrillRescue.value + '&DrillSpill=' + DrillSpill.value +
                    '&DrillOther=' + DrillOther.value + '&DrillComent=' + DrillComent.value;   
                var xmlhttp = new XMLHttpRequest();
                //xmlhttp.open('Get', 'InsertHS.aspx?opr=InsertHS&HSLocacija='+HSLocacija+'&HSOperator='+HSOperator+'&HSStatus='+HSStatus+'&HsDatum='+HsDatum, false);
                xmlhttp.open('Get', insertString, false);
                xmlhttp.send(null);
                HsDatum.value = '';
                CroWorkers.value = '';


            }
        }
    </script>
    <script>
        function UpdateHS() {
            var inputValue;
            var HSid, YName;
            $(document).on('blur', '.mydatatable input', function () {
                $(this).replaceWith('<td class="txtBox"><span>' + this.value + '</span></td>');
                inputValue = this.value;
                  
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open('Get', 'InsertHS.aspx?hsid=' + HSid + '&CloumnName=' + YName + '&NewValue=' + inputValue + '&opr=update', false);
                xmlhttp.send(null);
                inputValue = "";
                HSid = "";
                YName = "";
            });
                

             function returnInputValue() {
                 return inputValue;
             }
             
            $(document).on('click', '.mydatatable td', function () {
                var idx = $(this).index();
                YName = HSDictionary(idx);              
                HSid= $(this).parent().children()[0].innerText;
                 
                if (idx >= 0 && idx < 8) {


                }
                else if ((idx > 7 && idx < 11) || idx == 78) {
                    var html = $(this).text();
                    var input = $('<input type="text" />');
                    input.val(html);
                    $(this).replaceWith(input);
                    $('.mydatatable input').focus();
                }
                else {
                    var html = $(this).text();
                    var input = $('<input type="number" />');
                    input.val(html);
                    $(this).replaceWith(input);
                    $('.mydatatable input').focus();
                 }
            });
            //var table1 = $('.mydatatable').DataTable();
            //$(document).on('click', '.mydatatable td', function () {
            //    //var idx = table1.cell(this).index().column;
            //    var idx = $(this).index();
            //    var YName = HSDictionary(idx);
            //    //alert(YName);
            //    var HSid= $(this).parent().children()[0].innerText;
            //    var table3 = $('.mydatatable').DataTable();
            //    var inputValue = "Not Blurred Yet!";
            //    $(document).on('blur', '.mydatatable input', function () {
            //        $(this).replaceWith('<td class="txtBox"><span>' + this.value + '</span></td>');
            //        inputValue = this.value;
            //        //alert("HSid: " + HSid + ", CloumnName: " + YName + ", NewValue: " + this.value);
                    
                   
            //    });
                //var inputValue = "Not Blurred Yet!";
                //$('.mydatatable input').blur(function() {   
                //    inputValue = $('.mydatatable input').val();
                //});

                //function returnInputValue() {
                //    return inputValue;
                //}
                
                //$(document).on('click', '.mydatatable td', function () {
                //    //var idx = table3.cell(this).index().column;
                //    var idx = $(this).index();
                //    if (idx >= 0 && idx < 8) {


                //    }
                //    else {
                //        var html = $(this).text();
                //        var input = $('<input type="text" />');
                //        input.val(html);
                //        $(this).replaceWith(input);
                //        $('.mydatatable input').focus();
                //    }
                //});
                             

            //});
        };
    </script>
    <script>
        function DaniWoutLtI() {
            var Procesdict = {

            }
        }
    </script>
</asp:Content>
