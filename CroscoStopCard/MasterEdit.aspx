<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterEdit.aspx.cs" Inherits="CroscoStopCard.MasterEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Baza STOP kartice</title>


    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.2.1.slim.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>


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



</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<button id="DeleteRow" class="btn btn-danger">Delete</button>--%> 
        <%--<asp:Panel ID="MasterTablicaSTOP" CssClass="container mb-5 mt-3" runat="server">

        </asp:Panel>--%>
        <asp:Panel ID="MasterTablicaSTOP" runat="server">

        </asp:Panel>
    </div>

   <%-- <script src="https://cdnjs.cloudflare.com/ajax/libspopper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap//4.3.1/js/bootstrap.min.js"></script>--%>

    <script>
        $(document).ready(function () {
            $('#mytb1').DataTable({
                select: true,
                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                //dom: 'Bfrtip',
                "dom": '<"toolbar">lBfrtip',
                //buttons: [
                //    'colvis', 'copy', 'excel', 'pdf', 'print'  
                //],
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
                            text: 'Add',
                            action: function ( e, dt, node, config ) {
                                alert( 'Button activated' );
                            }
                        },
                        {
                            extend: 'colvis',
                            text: 'Pokaži',

                        }
                ],
                "columnDefs": [
                        {
                            "targets": -1,
                            "data": null,
                            "defaultContent": "<button class='btn btn-danger DeleteRow'>Delete!</button>"
                        },
                        {
                            "targets": -2,
                            "data": null,
                            "defaultContent": "<button class='btn btn-success'>Prvo mjesto!</button>"
                        }
                ]            
            });
            //$('.mydatatable').DataTable();
            var table1 = $('#mytb1').DataTable();

            $('#mytb1 tbody').on('click', 'tr', function () {
                var data = table1.row(this).data();
                if ($(this).hasClass('selected')) {
                    $(this).removeClass('selected');
                }
                else {
                    table1.$('tr.selected').removeClass('selected');
                    $(this).addClass('selected');
                }
            });
            $('#DeleteRow').click(function () {
                table1.row('.selected').remove().draw(false);
                var thisro = getcolid();
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open('Get', 'InsertSTOPBaza.aspx?id=' + thisro + '&opr=delete', false);
                xmlhttp.send(null);
                redid = "";
            });
            var table3 = $('#mytb1').DataTable();
            $(document).on('click', '#mytb1 td', function () {
                var idx = table3.cell(this).index().column;
                if (idx >= 0 && idx < 7) {


                }
                else {
                    var html = $(this).text();
                    var input = $('<input type="text" />');
                    input.val(html);
                    $(this).replaceWith(input);
                    $('#mytb1 input').focus();
                }
                                        
            });

            //get column head and Row id
            var table2 = $('#mytb1').DataTable();
            $('#mytb1 tbody').on('click', 'td', function () {
                var idx = table2.cell(this).index().column;
                var title = table2.column(idx).header();
                var colhed1 = [];
                var colhed;
                var provjera = $(title).html();
                if (provjera == undefined) {
                    colhed = colhed1[0];
                }
                else {
                    colhed1.shift();
                    colhed1.push(provjera);
                    colhed = colhed1[0];
                }

                getcolhed(colhed);
                //alert('Column title clicked on: ' + $(title).html());
                //alert( 'REd title clicked on: '+ idx );
            });

            $('#mytb1 tbody').on('click', 'tr', function () {
                var data = table2.row(this).data();
                //alert(data[0]);
                var redid1 = [];
                var redid;
                if (data[0] == undefined) {
                    redid = redid1[0];
                }
                else {
                    redid1.push(data[0]);
                    redid = redid1[0];
                    var i = redid.length;
                    i = i - 13;
                    redid = redid.substr(6, i);
                }


                getcolid(redid);
                //alert(redid);
                //var xmlhttp = new XMLHttpRequest();
                //xmlhttp.open('Get', 'InsertPage.aspx?id=' + redid + '&ched='+ colheadder + '&newva='+ newValueup + '&opr=update', false);
                //xmlhttp.send(null);
                //redid = "";


                //display();
                //window.location.reload();
            });
            var yhed1 = [];
            var yhed;
            function getcolhed(val) {                
                if (val == undefined) {
                    yhed = yhed1[0];
                    //alert(yhed);
                    return yhed;
                }
                else {
                    yhed1.shift();
                    yhed1.push(val);
                    yhed = yhed1[0];
                    //alert(yhed);
                    return yhed;
                }
            }
            var xhed1 = [];
            var xhed;
            function getcolid(val1) {
                if (val1 == undefined) {
                    xhed = xhed1[0];
                    //alert(xhed);
                    return xhed;
                }
                else {
                    xhed1.shift();
                    xhed1.push(val1);
                    xhed = xhed1[0];
                    //alert(xhed);
                    return xhed;
                }

            }
            

            var newValuup1 = [];
            var newValuup;
            $(document).on('blur', '#mytb1 input', function () {

                $(this).replaceWith('<td class="asset_value"><span>' + this.value + '</span></td>')
                var provjera1 = this.value;
                if (provjera1 == undefined) {
                    newValuup = newValuup1[0];
                }
                else {
                    newValuup1.shift();
                    newValuup1.push(provjera1);
                    newValuup = newValuup1[0];
                }
                var thiscol = getcolhed();
                var thisro = getcolid();
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open('Get', 'InsertSTOPBaza.aspx?id=' + thisro + '&ched=' + thiscol + '&newva=' + newValuup + '&opr=update', false);
                xmlhttp.send(null);
                newValuup = '';
                thiscol = '';
                thisro = '';

            });

            var table4 = $('#mytb1').DataTable();
            $('#mytb1 tbody').on('click', 'button', function () {
                var data = table4.row($(this).parents('tr')).data();
                alert(data[0]);
                var redid = data[0];
                var i = redid.length;
                i = i - 13;
                redid = redid.substr(6, i);
                var html = $(this).text()
                alert(html);
                if (html == "Delete!") {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open('Get', 'InsertSTOPBaza.aspx?id=' + redid + '&opr=delete', false);
                    xmlhttp.send(null);
                    redid = "";
                    //provjeriti zašto table2 ne 4
                    table2
                        .row($(this).parents('tr'))
                        .remove()
                        .draw();
                }
            });
            //$(document).on('click', '#mytb1 td', function () {
            //    var html = $(this).text()
            //    var text1 = $(this).closest("tr").find('td:first').text();
            //    alert(text1);
            //    alert(html);
            //});
        });
        //window.addEventListener('DOMContentLoaded', function () {
        //    //$('#mytb1').DataTable();
        //    $('.mydatatable').DataTable();
        //});
      
    </script>
    </form>
</body>
</html>
