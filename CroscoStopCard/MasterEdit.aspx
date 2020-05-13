<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterEdit.aspx.cs" Inherits="CroscoStopCard.MasterEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Baza STOP kartice</title>

    <link rel="shortcut icon" type="image/ico" href="Resources/Logo.png" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.2.1.slim.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    
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
    <%--search feature--%>
    <%--<script src="https://cdn.datatables.net/searchpanes/1.0.1/js/dataTables.searchPanes.min.js"></script>--%>



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
                //search feature
                //$('#mytb1 tfoot th').each(function () {
                //    var title = $(this).text();
                //    $(this).html('<input type="text" placeholder="Search ' + title + '" />');
                //});
                $('#mytb1').DataTable({
                
                    select: true,
                    "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                    //search feature
                    //searchPanes: {
                    //    viewTotal: true,
                    //},

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
                            }
                            //{
                            //    "targets": -2,
                            //    "data": null,
                            //    "defaultContent": "<button class='btn btn-success'>Prvo mjesto!</button>"
                            //}
                    ]            
                });

                UpdateSTOP();
                DeleteKarticu();
                //var table = $('#mytb1').DataTable({
                //    //searchPanes: {
                //    //    viewTotal: true,
                //    //},
                //    //dom: 'Pfrtip',
                //});

                //search feature
                //var table5 = $('#mytb1').DataTable();
                //table5.columns().every(function () {
                //    var that = this;
                //    $('input', this.footer()).on('keyup change', function () {
                //        if (that.search() !== this.value) {
                //            that
                //                .search(this.value)
                //                .draw();
                //        }
                //    });
                //});


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
        <script>
            function UpdateSTOP() {
                var inputValue;
                var STOPid, YName;
                $(document).on('blur', '.mydatatable input', function () {
                    $(this).replaceWith('<td class="txtBox"><span>' + this.value + '</span></td>');
                    inputValue = this.value;

                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open('Get', 'InsertSTOPBaza.aspx?id=' + STOPid + '&ched=' + YName + '&newva=' + inputValue + '&opr=update', false);
                    xmlhttp.send(null);
                    inputValue = "";
                    STOPid = "";
                    YName = "";
                });
                

                 function returnInputValue() {
                     return inputValue;
                 }
                var table1= $('#mytb1').DataTable();
                $(document).on('click', '.mydatatable td', function () {
                    var idx = $(this).index();

                    YName = table1.column(idx).header().textContent;
                    //alert(YName);
                    STOPid= $(this).parent().children()[0].innerText;
                     //var idx = table3.cell(this).index().column;
                 
                    if ((idx >= 0 && idx < 8) || (idx==66)) {


                    }
                    else if (idx == 49 || idx == 53 || idx == 57) {
                        var html = $(this).text();
                        var input = $('<input type="date" />');
                        input.val(html);
                        $(this).replaceWith(input);
                        $('.mydatatable input').focus();
                    }
                    else if (idx == 65) {
                        var html = $(this).text();
                        var input = $('<input type="number" />');
                        input.val(html);
                        $(this).replaceWith(input);
                        $('.mydatatable input').focus();
                    }
                    else {
                        var html = $(this).text();
                        var input = $('<input type="text" />');
                        input.val(html);
                        $(this).replaceWith(input);
                        $('.mydatatable input').focus();
                    }
                });
            
            };
        </script>
        <script>
            function DeleteKarticu() {
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
                        table4
                            .row($(this).parents('tr'))
                            .remove()
                            .draw();
                    }
                });
            }            
        </script>
    </form>
</body>
</html>
