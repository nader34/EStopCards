<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="HS.aspx.cs" Inherits="CroscoStopCard.HS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="classH1">HS form</h1>
	<div id="HSForma">
	<h3 class="classth">Unons podataka za <input id="HSdate" class="classinput" type="date"/><input id="UnosHSbtn" class="classinput" type="submit" value="Unos!" onclick="ProvjeraHSForm()"/></h3>
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
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
                </tr>
                <tr class="classtr">
                    <th class="classth">
                        <label>Subcontractors</label>
                    </th>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
                </tr>
				<tr class="classtr">
                    <th class="classth">
                        <label>3rd party</label>
                    </th>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
                    <td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
                    </td>
					<td class="classtd">
                        <input class="classinput" type="number"/>
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
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
					<td colspan="11" class="classtd"><input class="classinput" type="text"/></td>
					<td colspan="1" class="classtd"><input class="classinput" type="number"/></td>
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
        function display() {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'InsertHS.aspx?opr=display', false);
            xmlhttp.send(null);
            var resultText = xmlhttp.responseText;
            document.getElementById("ContentPlaceHolder1_HStbody").innerHTML = resultText;
        }
    </script>
    <script>
        $('.mydatatable').DataTable();
    </script>
    <script>
        $(document).ready(function () {
            
           display();
           $('.mydatatable').DataTable();
           
        });
    </script>
    <script>
        var hsTable = document.getElementById('HS_wrapper');
        hsTable.style.marginLeft = '20px';
    </script>
    <script>
        function ProvjeraHSForm() {
            var HsDatum = document.getElementById("HSdate");
            var CroWorkers = document.getElementById("CroWorkers");        
            

            if (HsDatum.value == "" || CroWorkers.value == "") {
                alert("Niste unijeli borj radnika")
                $('#UnosHSbtn').bind('click', function (e) {
                    return false;
                    
                    $("#UnosHSbtn").unbind('click').click();
                });
            }
            else {
                $("#UnosHSbtn").unbind('click').click();
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open('Get', 'InsertHS.aspx?opr=InsertHS', false);
                xmlhttp.send(null);
                HsDatum.value = '';
                CroWorkers.value = '';


            }
        }
    </script>
</asp:Content>
