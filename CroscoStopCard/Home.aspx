<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CroscoStopCard.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div id="content_div" style="background-color:#f0ce11; border-color:#FFF7F7; margin-top: 60px;">
        
    <div class="container" style="width: 100%">
            <div class="col-xs-12">

                <div id="imageCarousel" class="carousel slide" data-interval="5000" data-ride="carousel" data-pause="hover" data-wrap="true">

                    <div id="SliderContent">
	<ol class="carousel-indicators">
        <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#imageCarousel" data-slide-to="1" class=""></li>
	</ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <img src="Images/img01.jpg" class="img-responsive" draggable="false" />
                                        <div class="carousel-caption">
                                            <h3>Image 1 title</h3>
                                            <div class="commerce">
                                                <p class="return-to-shop">Image 1 description</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <img src="Images/img02.jpg" class="img-responsive" draggable="false" />
                                        <div class="carousel-caption">
                                            <h3>Image 2 title</h3>
                                            <div class="commerce">
                                                <p class="return-to-shop">Image 2 description</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <img src="Images/img03.jpg" class="img-responsive" draggable="false" />
                                        <div class="carousel-caption">
                                            <h3>Image 3 title</h3>
                                            <div class="commerce">
                                                <p class="return-to-shop">Image 3 description</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <img src="Images/img04.jpg" class="img-responsive" draggable="false" />
                                        <div class="carousel-caption">
                                            <h3>Image 4 title</h3>
                                            <div class="commerce">
                                                <p class="return-to-shop">Image 4 description</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <img src="Images/img05.jpg" class="img-responsive" draggable="false" />
                                        <div class="carousel-caption">
                                            <h3>Image 5 title</h3>
                                            <div class="commerce">
                                                <p class="return-to-shop">Image 5 description</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <img src="Images/img06.jpg" class="img-responsive" draggable="false" />
                                        <div class="carousel-caption">
                                            <h3>Image 6 title</h3>
                                            <div class="commerce">
                                                <p class="return-to-shop">Image 6 description</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="#imageCarousel" class="carousel-control left" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a href="#imageCarousel" class="carousel-control right" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlNewPassword" runat="server" HorizontalAlign="Center" Visible="False" Width="100%">
        <table>
        <tr>
            <td>
                <asp:Button ID="btnUpdatePass" runat="server" Text="Update Password" OnClick="btnUpdatePass_Click" />
            </td>
            <td>
                <asp:TextBox ID="tbxNewPass" runat="server" Width="100%" TextMode="Password" placeholder="New Password"></asp:TextBox>
                <asp:TextBox ID="tbxConfirmNewPass" runat="server" Width="100%" TextMode="Password" placeholder="Password Confirmation"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblNewPassError" runat="server" Text="Please change your Password" ForeColor="#ed1c24"></asp:Label>
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>