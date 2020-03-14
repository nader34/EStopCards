<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="HS.aspx.cs" Inherits="CroscoStopCard.HS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="HSForma" style="margin-left:20px">
    <table id ="WorkersData">
        <thead>
            <tr>
                <th colspan="3">Broj radnika <strong>Number of Workers</strong></th>
            </tr>
            <tr>
                <label>CROSCO
                <input type="text"/>
                </label>
                <label>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong>
                <input type="text"/>
                </label>
                <label>TREĆA STRANA <strong>3rd PARTY</strong>
                <input type="text"/>
                </label>
            </tr>
            <tr>
                <th colspan="3">Sati rada <strong>Manhours</strong></th>
            </tr>
            <tr>
                <th>CROSCO</th>
                <th>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th>
                <th>TREĆA STRANA <strong>3rd PARTY</strong></th>
            </tr>
            <tr>
                <th colspan="3">Kilometraža vozila <strong>Mileage (km)</strong></th>
            </tr>
            <tr>
                <th>CROSCO</th>
                <th>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th>
                <th>TREĆA STRANA <strong>3rd PARTY</strong></th>
            </tr>
        </thead>
    </table>
    </div>
  <%--  <label>Broj radnika <strong>Number of Workers</strong></label><br />
        <label>CROSCO
        <input type="text"/>
        </label>
        <label>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong>
        <input type="text"/>
        </label>
        <label>TREĆA STRANA <strong>3rd PARTY</strong>
        <input type="text"/>
        </label>
        <label>Sati rada <strong>Manhours</strong></label><br />
        <label>CROSCO
        <input type="text"/>
        </label>
        <label>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong>
        <input type="text"/>
        </label>
        <label>TREĆA STRANA <strong>3rd PARTY</strong>
        <input type="number"/>
        </label>
            
           
                <label>Kilometraža vozila <strong>Mileage (km)</strong></label>
            
                <label>CROSCO</label>
                <label>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></label>
                <label>TREĆA STRANA <strong>3rd PARTY</strong></label>
            --%>
    <table id="HS" class="table table-striped table-bordered mydatatable" style="width: 100%; left:20px">
        <thead>
            <tr>
                <th colspan="1" rowspan="2" style='cursor: pointer'>HSID</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>No</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>First name</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Last name</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Datum <strong>Date</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Oj1</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Oj2</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Lokacija <strong>Site</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Operator</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Status</th>

                <th colspan="4" style='cursor: pointer'>Broj radnika <strong>Number of Workers</strong></th>
                <th colspan="4" style='cursor: pointer'>Sati rada <strong>Manhours</strong></th>
                <th colspan="4" style='cursor: pointer'>Kilometraža vozila <strong>Mileage (km)</strong></th>
                <th colspan="10" style='cursor: pointer'>CROSCO</th>
                <th colspan="10" style='cursor: pointer'>PODUGOVARAČI <strong>SUBCONTRACTOR's</strong></th>
                <th colspan="10" style='cursor: pointer'>TREĆA STRANA <strong>3rd PARTY</strong></th>

                <th colspan="1" rowspan="2" style='cursor: pointer'>SWA</th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Provjera na prisutnosti alkohola <strong>Alcotests</strong></th>
                <th colspan="1" rowspan="2" style='cursor: pointer'>Kršenje temeljnih prvila sigurnosti <strong>Life saving rules violation</strong></th>
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

                <th style='cursor: pointer'>NII</th>
                <th style='cursor: pointer'>RTI</th>
                <th style='cursor: pointer'>RTA</th>
                <th style='cursor: pointer'>NM</th>
                <th style='cursor: pointer'>FAC</th>
                <th style='cursor: pointer'>MTC</th>
                <th style='cursor: pointer'>RWC</th>
                <th style='cursor: pointer'>LTI</th>
                <th style='cursor: pointer'>FTL</th>
                <th style='cursor: pointer'>TRI</th>

                <th style='cursor: pointer'>NII</th>
                <th style='cursor: pointer'>RTI</th>
                <th style='cursor: pointer'>RTA</th>
                <th style='cursor: pointer'>NM</th>
                <th style='cursor: pointer'>FAC</th>
                <th style='cursor: pointer'>MTC</th>
                <th style='cursor: pointer'>RWC</th>
                <th style='cursor: pointer'>LTI</th>
                <th style='cursor: pointer'>FTL</th>
                <th style='cursor: pointer'>TRI</th>

                <th style='cursor: pointer'>NII</th>
                <th style='cursor: pointer'>RTI</th>
                <th style='cursor: pointer'>RTA</th>
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
    <script>
      $( function() {
        var dialog, form,
 
          // Fromhttp://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
          emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
          name = $( "#name" ),
          email = $( "#email" ),
          password = $( "#password" ),
          allFields = $( [] ).add( name ).add( email ).add( password ),
          tips = $( ".validateTips" );
 
        function updateTips( t ) {
          tips
            .text( t )
            .addClass( "ui-state-highlight" );
          setTimeout(function() {
            tips.removeClass( "ui-state-highlight", 1500 );
          }, 500 );
        }
 
        function checkLength( o, n, min, max ) {
          if ( o.val().length > max || o.val().length < min ) {
            o.addClass( "ui-state-error" );
            updateTips( "Length of " + n + " must be between " +
              min + " and " + max + "." );
            return false;
          } else {
            return true;
          }
        }
 
        function checkRegexp( o, regexp, n ) {
          if ( !( regexp.test( o.val() ) ) ) {
            o.addClass( "ui-state-error" );
            updateTips( n );
            return false;
          } else {
            return true;
          }
        }
 
        function addUser() {
          var valid = true;
          allFields.removeClass( "ui-state-error" );
 
          valid = valid && checkLength( name, "username", 3, 16 );
          valid = valid && checkLength( email, "email", 6, 80 );
          valid = valid && checkLength( password, "password", 5, 16 );
 
          valid = valid && checkRegexp( name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter." );
          valid = valid && checkRegexp( email, emailRegex, "eg. ui@jquery.com" );
          valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
 
          if ( valid ) {
            $( "#users tbody" ).append( "<tr>" +
              "<td>" + name.val() + "</td>" +
              "<td>" + email.val() + "</td>" +
              "<td>" + password.val() + "</td>" +
            "</tr>" );
            dialog.dialog( "close" );
          }
          return valid;
        }
 
        dialog = $("#dialogForm").dialog({
          autoOpen: false,
          height: 400,
          width: 350,
          modal: true,
          buttons: {
            "Create an account": addUser,
            Cancel: function() {
              dialog.dialog( "close" );
            }
          },
          close: function() {
            form[ 0 ].reset();
            allFields.removeClass( "ui-state-error" );
          }
        });
 
        form = dialog.find("form").on("submit", function(event) {
          event.preventDefault();
          addUser();
        });
 
        $("#HSDodaj").button().on("click", function () {
          dialog.dialog( "open" );
        });
      });
    </script>
    <div id="dialogForm" title="HS form" hidden="hidden">
        <p class="validateTips">All form fields are required.</p>

        <form>
            <fieldset>
                <label for="name">Date</label>
                <input type="date" name="datum" id="datum" class="text ui-widget-content ui-corner-all">
                <label for="Oj1">Oj1</label>
                <input type="text" name="Oj1" id="Oj1" value="" class="text ui-widget-content ui-corner-all">
                <label for="Oj2">Oj2</label>
                <input type="text" name="Oj2" id="Oj2" value="" class="text ui-widget-content ui-corner-all">
                <label for="Location">Location</label>
                <input type="text" name="Location" id="Location" value="" class="text ui-widget-content ui-corner-all">
                <label for="Operator">Operator</label>
                <input type="text" name="Operator" id="Operator" value="" class="text ui-widget-content ui-corner-all">
                <label for="Status">Status</label>
                <input type="text" name="Status" id="Status" value="" class="text ui-widget-content ui-corner-all">
                <label>Sati rada ManHour</label>
                <label for="CROSCOMH">CROSCO</label>
                <input type="text" name="CROSCOMH" id="CROSCOMH" value="" class="text ui-widget-content ui-corner-all">
                <label for="PodugovaraciMH">Podugovaraci</label>
                <input type="text" name="PodugovaraciMH" id="PodugovaraciMH" value="" class="text ui-widget-content ui-corner-all">
                <label for="TrecaStranaMH">Treća strana</label>
                <input type="text" name="TrecaStranaMH" id="TrecaStranaMH" value="" class="text ui-widget-content ui-corner-all">
                <label>Broj radnika Workers No.</label>
                <label for="CROSCOW">CROSCO</label>
                <input type="text" name="CROSCOW" id="CROSCOW" value="" class="text ui-widget-content ui-corner-all">
                <label for="PodugovaraciW">Podugovaraci</label>
                <input type="text" name="PodugovaraciW" id="PodugovaraciW" value="" class="text ui-widget-content ui-corner-all">
                <label for="TrecaStranaW">Treća strana</label>
                <input type="text" name="TrecaStranaW" id="TrecaStranaW" value="" class="text ui-widget-content ui-corner-all">
                <label>CROSCO</label>

                <!-- Allow form submission with keyboard without duplicating the dialog button -->
                <input type="submit" tabindex="-1" style="position: absolute; top: -1000px">
            </fieldset>
        </form>
    </div>
    <button id="HSDodaj">HS form</button>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libspopper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap//4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script>
        $('.mydatatable').DataTable();
    </script>
    <script>
        var hsTable = document.getElementById('HS_wrapper');
        hsTable.style.marginLeft = '20px';
    </script>
</asp:Content>
