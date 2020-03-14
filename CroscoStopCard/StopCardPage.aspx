<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="StopCardPage.aspx.cs" Inherits="CroscoStopCard.StopCardPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background-position: right top; width: 100%; background-repeat: no-repeat; background-attachment: fixed;">
        <tr>
            <td style="width: 25%">
                <table>
                    <tr>
                        <td>
                            <img src="Resources/Instruction_hr.png" draggable="false" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width:100%">
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rbNesig" runat="server" Text="Nesiguran Postupak" AutoPostBack="True" OnCheckedChanged="rbNesig_CheckedChanged" Font-Bold="True" Checked="True" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="rbSig" runat="server" TextAlign="Left" AutoPostBack="True" Text="Siguran Postupak" OnCheckedChanged="rbSig_CheckedChanged" Font-Bold="True" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox ID="cbReakcijeLjudi" runat="server" Font-Bold="True" Text="REAKCIJE LJUDI" AutoPostBack="True" OnCheckedChanged="cbReakcijeLjudi_CheckedChanged" TextAlign="Left" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBoxList ID="cblReakcijeLjudi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cblReakcijeLjudi_SelectedIndexChanged">
                                <asp:ListItem Value="Podesavanje">Podešavanje osobne zaštitne opreme</asp:ListItem>
                                <asp:ListItem Value="Promjena">Promjena položaja</asp:ListItem>
                                <asp:ListItem Value="Obavljanje">Obavljanje posla na drugi način</asp:ListItem>
                                <asp:ListItem Value="Prekidanje">Prekidanje s poslom</asp:ListItem>
                                <asp:ListItem>Uzemljivanje</asp:ListItem>
                                <asp:ListItem Value="Iskljucivanje">Isključivanje strojeva</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:CheckBox ID="cbOsobnaZastitnaOprema" runat="server" Font-Bold="True" Text="OSOBNA ZAŠTITNA OPREMA" AutoPostBack="True" OnCheckedChanged="cbOsobnaZastitnaOprema_CheckedChanged" TextAlign="Left" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBoxList ID="cblOsobnaZastitnaOprema" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cblOsobnaZastitnaOprema_SelectedIndexChanged">
                                <asp:ListItem>Glava</asp:ListItem>
                                <asp:ListItem Value="Oci">Oči i lice</asp:ListItem>
                                <asp:ListItem Value="Usi">Uši</asp:ListItem>
                                <asp:ListItem Value="Respiratorni">Respiratorni sustav</asp:ListItem>
                                <asp:ListItem Value="Ruke">Ruke i šake</asp:ListItem>
                                <asp:ListItem>Torzo</asp:ListItem>
                                <asp:ListItem Value="Noge">Noge i stopala</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:CheckBox ID="cbPolozajLjudi" runat="server" Font-Bold="True" Text="POLOŽAJ LJUDI (uzroci ozljeda)" AutoPostBack="True" OnCheckedChanged="cbPolozajLjudi_CheckedChanged" TextAlign="Left" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBoxList ID="cblPolozajLjudi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cblPolozajLjudi_SelectedIndexChanged">
                                <asp:ListItem Value="Udaranje">Udaranje u neki predmet</asp:ListItem>
                                <asp:ListItem Value="Udar">Udar nekog predmeta</asp:ListItem>
                                <asp:ListItem Value="Naci">Naći se u, na ili između predmeta</asp:ListItem>
                                <asp:ListItem Value="Pad">Pad na istoj/različitoj razini</asp:ListItem>
                                <asp:ListItem Value="Doticaj1">Doticaj s ekstremnim temperaturama</asp:ListItem>
                                <asp:ListItem Value="Doticaj2">Doticaj s električnom strujom</asp:ListItem>
                                <asp:ListItem Value="Doticaj3">Doticaj s visokim tlakovima</asp:ListItem>
                                <asp:ListItem Value="Udisanje">Udisanje opasnih tvari</asp:ListItem>
                                <asp:ListItem Value="Apsorbiranje">Apsorbiranje opasnih tvari</asp:ListItem>
                                <asp:ListItem Value="Preveliko">Preveliko naprezanje</asp:ListItem>
                                <asp:ListItem Value="Ponavljanje">Ponavljanje pokreta</asp:ListItem>
                                <asp:ListItem Value="Nespretni">Nespretni položaj/Statično držanje</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:CheckBox ID="cbAlatiOprema" runat="server" Font-Bold="True" Text="ALATI I OPREMA" AutoPostBack="True" OnCheckedChanged="cbAlatiOprema_CheckedChanged" TextAlign="Left" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBoxList ID="cblAlatiOprema" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cblAlatiOprema_SelectedIndexChanged">
                                <asp:ListItem Value="Pogresni">Pogrešni za dotični posao</asp:ListItem>
                                <asp:ListItem Value="Nepravilno">Nepravilno korišteni</asp:ListItem>
                                <asp:ListItem Value="Neispravni">Neispravni alati i oprema</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:CheckBox ID="cbProcedureUrednost" runat="server" Font-Bold="True" Text="PROCEDURE I UREDNOST" AutoPostBack="True" OnCheckedChanged="cbProcedureUrednost_CheckedChanged" TextAlign="Left" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBoxList ID="cblProcedureUrednost" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cblProcedureUrednost_SelectedIndexChanged">
                                <asp:ListItem Value="Neodgovarajuce">Neodgovarajuće procedure</asp:ListItem>
                                <asp:ListItem Value="Neznanje1">Neznanje/Nerazumijevanje procedura</asp:ListItem>
                                <asp:ListItem Value="Nepridrzavanje1">Nepridržavanje procedura</asp:ListItem>
                                <asp:ListItem Value="Norme">Norme urednosti neodgovarajuće</asp:ListItem>
                                <asp:ListItem Value="Neznanje2">Neznanje/Nerazumijevanje normi urednosti</asp:ListItem>
                                <asp:ListItem Value="Nepridrzavanje2">Nepridržavanje normi urednosti</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                </table>
            </td>
            <td align="center" style="width: 25%">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlNesigurnaRadUvt" runat="server">
                                <asp:ListItem Value="Nesigurna Radnja">Nesigurna Radnja</asp:ListItem>
                                <asp:ListItem Value="Nesiguran Uvijet">Nesiguran Uvijet</asp:ListItem>
                            </asp:DropDownList>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblOpen" runat="server" Text="Datum otvaranja"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Calendar ID="clnOpen" runat="server" SelectedDate="10/07/2018 13:38:03" Width="100%"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxSelectedOpen" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxComment" runat="server" Width="100%" TextMode="MultiLine" placeholder="Komentar"></asp:TextBox>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblDeadline" runat="server" Text="Rok za rješavanje"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Calendar ID="clnDeadline" runat="server" Width="100%" SelectedDate="2018-12-01"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxSelectedDeadline" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
                <table style="width: 100%">
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblOpis" runat="server" Text="Opis sukladnosti/nesukladnosti *"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxOpis" runat="server" Width="100%" TextMode="MultiLine"></asp:TextBox>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblradnje" runat="server" Text="Korektivne radnje *"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxRadnje" runat="server" Width="100%" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                
                
            </td>
            <td align="center" style="width: 25%">
                <table style="width: 100%">
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblAnaliza" runat="server" Text="Analiza uzroka"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxAnaliza" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblOsoba" runat="server" Text="Odgovorna osoba"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxOsoba" runat="server" Width="100%"></asp:TextBox>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlStatus" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                                <asp:ListItem>Otvoreno</asp:ListItem>
                                <asp:ListItem>Zatvoreno</asp:ListItem>
                                <asp:ListItem Value="U postupku">U postupku</asp:ListItem>
                            </asp:DropDownList>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblClose" runat="server" Text="Datum zatvaranja"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Calendar ID="clnClose" runat="server" Width="100%" SelectedDate="2018-12-01" Enabled="False"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxSelectedClose" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit your card" OnClick="btnSubmit_Click" BackColor="#006600" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="5px" ForeColor="White" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblError" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
