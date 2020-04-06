<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="HS.aspx.cs" Inherits="CroscoStopCard.HS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="classH1">HS form</h1>
	<div id="HSForma">
        
        <%--<h3 class="classth">
            <label>Datum: </label><input id="HSdate1" class="classinput" type="date"/>            
        </h3>--%>
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
                        <input id="CroWorkers" class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input id="CroManHours" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroKm" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroSWA" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroLSR" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroAlco" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroNII" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroRTI" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroRTA" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroLOPC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroSpill" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroFire" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroNM" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroFAC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroMTC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroRWC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroLTI" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroFTL" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="CroTRI" class="classinput" type="number"/>
                    </td>
                </tr>
                <tr class="classtr">
                    <th class="classth">
                        <label>Subcontractors</label>
                    </th>
					<td class="classtd">
                        <input id="SubWorkers" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubManHours" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubKm" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubSWA" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubLSR" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubAlco" class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input id="SubNII" class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input id="SubRTI" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubRTA" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubLOPC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubSpill" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubFire" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubNM" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubFAC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubMTC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubRWC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubLTI" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubFTL" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="SubTRI" class="classinput" type="number"/>
                    </td>
                </tr>
				<tr class="classtr">
                    <th class="classth">
                        <label>3rd party</label>
                    </th>
					<td class="classtd">
                        <input id="RdWorkers" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdManHours" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdKm" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdSWA" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdLSR" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdAlco" class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input id="RdNII" class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input id="RdRTI" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdRTA" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdLOPC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdSpill" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdFire" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdNM" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdFAC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdMTC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdRWC" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdLTI" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdFTL" class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input id="RdTRI" class="classinput" type="number"/>
                    </td>
                </tr>
				<tr class="classtr">
					<th colspan="1" rowspan="2" class="classth">Drills</th>
					<th colspan="1" class="classth">H2S/CO2 Drill</th>
					<th colspan="1" class="classth">Evacuation drill</th>
					<th colspan="1" class="classth">BOP Drill (Gas Drill)</th>
					<th colspan="1" class="classth">Fire Drill</th>
					<th colspan="1" class="classth">Rescue Drill</th>
					<th colspan="1" class="classth">Spill drill</th>
					<th colspan="1" class="classth">Other Drills</th>
					<th colspan="11" class="classth">Other drills - comment</th>
					<th colspan="1" class="classth">Days without LTI</th>
				</tr>
				<tr class="classtr">
					<td colspan="1" class="classtd"><input id="DrillH2S" class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input id="DrillEvac" class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input id="DrillBOP" class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input id="DrillFire" class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input id="DrillRescue" class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input id="DrillSpill" class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input id="DrillOther" class="classinput" type="number"/></td>
					<td colspan="11" class="classtd"><input id="DrillComent" class="classinput" type="text"/></td>
					<td colspan="1" class="classtd"><input id="DaysWout" class="classinput" type="number"/></td>
				</tr>
                <tr class="classtr">
					<td colspan="1" class="classtd"><div id="UnosHS"><input id="UnosHSbtn" class="classinput" type="submit" value="Unos!" onclick="ProvjeraHSForm()" /></div></td>
                    <td colspan="1" class="classtd"><input id="ZadnjiRed" class="classinput" type="button" value="Zadnji red"/></td>
                    <td colspan="1" class="classlb"><label>Datum: </label></td>
					<td colspan="2" class="classtd"><input id="HSdate" class="classinput" type="date"/></td>
                    <td colspan="1" class="classlb"><label>Lokacija: </label></td>
                    <td colspan="4" class="classtd"><input id="HSLocacija" class="classinput" type="text"/></td>
                    <td colspan="1" class="classlb"><label>Operator: </label></td>
                    <td colspan="4" class="classtd"><input id="HSOperator" class="classinput" type="text"/></td>
                    <td colspan="1" class="classlb"><label>Status: </label></td>
                    <td colspan="4" class="classtd"><input id="HSStatus" class="classinput" type="text"/></td>
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
    <input type="submit" value="Btn" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libspopper.js/1.14.7/umd/popper.min.js"></script>--%>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap//4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script>
        function display() {

            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'InsertHS.aspx?opr=display', false);
            xmlhttp.send(null);
            var resultText = xmlhttp.responseText;
            //document.getElementById("ContentPlaceHolder1_HStbody").innerHTML = resultText;
            document.getElementById("HS").lastElementChild.innerHTML = resultText;

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
        function displayNovi() {
            var myTableHead ="<table id='HS' class='table table-striped table-bordered mydatatable' style='width: 100%; left:20px'><thead><tr><th colspan='1' rowspan='2' style='cursor: pointer'>HSID</th><th colspan='1' rowspan='2' style='cursor: pointer'>No</th><th colspan='1' rowspan='2' style='cursor: pointer'>First name</th><th colspan='1' rowspan='2' style='cursor: pointer'>Last name</th><th colspan='1' rowspan='2' style='cursor: pointer'>Datum <strong>Date</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Proces</th><th colspan='1' rowspan='2' style='cursor: pointer'>Servis</th><th colspan='1' rowspan='2' style='cursor: pointer'>Tim/postrojenja</th><th colspan='1' rowspan='2' style='cursor: pointer'>Lokacija <strong>Site</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Operator</th><th colspan='1' rowspan='2' style='cursor: pointer'>Status</th><th colspan='4' style='cursor: pointer'>Broj radnika <strong>Number of Workers</strong></th><th colspan='4' style='cursor: pointer'>Sati rada <strong>Manhours</strong></th><th colspan='4' style='cursor: pointer'>Kilometraža vozila <strong>Mileage (km)</strong></th><th colspan='16' style='cursor: pointer'>CROSCO</th><th colspan='16' style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th colspan='16' style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba postupanje kod pojave opasnih plinova <strong>H2S Drill, CO2 Drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba Evakuacija <strong>Evacuation drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba zatvaranja bušotine <strong>BOP Drill (Gas Drill)</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vatrogasna vježba <strong>Fire Drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba spašavanja unesrećenih <strong>Rescue Drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Vježba izlijevanja u okoliš <strong>Spill in the environment drill</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Ostale vježbe <strong>Other Drills</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Ostale vježbe - komentar <strong>Other drills - comment</strong></th><th colspan='1' rowspan='2' style='cursor: pointer'>Broj dana bez ozljeda <strong>Days without LTI</strong></th></tr><tr><th style='cursor: pointer'>CROSCO</th><th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th><th style='cursor: pointer'>CROSCO</th><th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th><th style='cursor: pointer'>CROSCO</th><th style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th><th style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th><th style='cursor: pointer'>UKUPNO <strong>TOTAL</strong></th><th style='cursor: pointer'>SWA</th><th style='cursor: pointer'>LSRV</th><th style='cursor: pointer'>Alcotests</th><th style='cursor: pointer'>NII</th><th style='cursor: pointer'>RTI</th><th style='cursor: pointer'>RTA</th><th style='cursor: pointer'>LOPC</th><th style='cursor: pointer'>SPILL</th><th style='cursor: pointer'>FIRE</th><th style='cursor: pointer'>NM</th><th style='cursor: pointer'>FAC</th><th style='cursor: pointer'>MTC</th><th style='cursor: pointer'>RWC</th><th style='cursor: pointer'>LTI</th><th style='cursor: pointer'>FTL</th><th style='cursor: pointer'>TRI</th><th style='cursor: pointer'>SWA</th><th style='cursor: pointer'>LSRV</th><th style='cursor: pointer'>Alcotests</th><th style='cursor: pointer'>NII</th><th style='cursor: pointer'>RTI</th><th style='cursor: pointer'>RTA</th><th style='cursor: pointer'>LOPC</th><th style='cursor: pointer'>SPILL</th><th style='cursor: pointer'>FIRE</th><th style='cursor: pointer'>NM</th><th style='cursor: pointer'>FAC</th><th style='cursor: pointer'>MTC</th><th style='cursor: pointer'>RWC</th><th style='cursor: pointer'>LTI</th><th style='cursor: pointer'>FTL</th><th style='cursor: pointer'>TRI</th><th style='cursor: pointer'>SWA</th><th style='cursor: pointer'>LSRV</th><th style='cursor: pointer'>Alcotests</th><th style='cursor: pointer'>NII</th><th style='cursor: pointer'>RTI</th><th style='cursor: pointer'>RTA</th><th style='cursor: pointer'>LOPC</th><th style='cursor: pointer'>SPILL</th><th style='cursor: pointer'>FIRE</th><th style='cursor: pointer'>NM</th><th style='cursor: pointer'>FAC</th><th style='cursor: pointer'>MTC</th><th style='cursor: pointer'>RWC</th><th style='cursor: pointer'>LTI</th><th style='cursor: pointer'>FTL</th><th style='cursor: pointer'>TRI</th></tr></thead>";
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'InsertHS.aspx?opr=display', false);
            xmlhttp.send(null);
            var resultText = xmlhttp.responseText;
            var myTable = myTableHead + resultText;
            //document.getElementById("ContentPlaceHolder1_HStbody").innerHTML = resultText;
            document.getElementById("HS").innerHTML = myTable;
            a = $('.mydatatable').DataTable();
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
            //display();
            displayNovi();
           //$('.mydatatable').DataTable();
            var table1 = $('.mydatatable').DataTable();
            $(document).on('click', '.mydatatable td', function () {
                var idx = table1.cell(this).index().column;
               
                                        
            });
            UpdateHS();
            
        
        });
    </script>
    <script>
        //var hsTable = document.getElementById('HS_wrapper');
        //hsTable.style.marginLeft = '20px';
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
            var HsDatum = document.getElementById("HSdate");
            var CroWorkers = document.getElementById("CroWorkers");        
            

            if (HsDatum.value == "" || CroWorkers.value == "") {
                alert("Niste unijeli borj radnika")
                $('#UnosHS').bind('click', function (e) {
                    return false;
                    
                    $("#UnosHS").unbind('click').click();
                });
            }
            else {
                $("#UnosHS").unbind('click').click();
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open('Get', 'InsertHS.aspx?opr=InsertHS', false);
                xmlhttp.send(null);
                HsDatum.value = '';
                CroWorkers.value = '';


            }
        }
    </script>
    <script>
        function UpdateHS() {
            var table1 = $('.mydatatable').DataTable();
            $(document).on('click', '.mydatatable td', function () {
                var idx = table1.cell(this).index().column;
                var YName = HSDictionary(idx);
                alert(YName);

            });
        };
    </script>
</asp:Content>
