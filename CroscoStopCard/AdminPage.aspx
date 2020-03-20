<%@ Page Language="C#" MasterPageFile="~/MyMaster.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="CroscoStopCard.MasterAdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="80%" HorizontalAlign="Center">
    <table>
        <tr>
            <td class="mydatagrid">
                <asp:GridView ID="GVUsers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GVUsers_RowDataBound" OnRowUpdating="GVUsers_RowUpdating" CellSpacing="2" OnRowEditing="GVUsers_RowEditing" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" InsertVisible="False" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:TemplateField HeaderText="Lozinka" SortExpression="Lozinka">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxPassEdit" runat="server" Text='<%# Bind("Lozinka") %>' Width="100%"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPass" runat="server" Text="- PROTECTED -"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MaticniBroj" HeaderText="MaticniBroj" SortExpression="MaticniBroj" />
                        <asp:TemplateField HeaderText="Proces" SortExpression="OJ">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlOJ" runat="server">
                                    <asp:ListItem>Uprava</asp:ListItem>
                                    <asp:ListItem>QHSE</asp:ListItem>
                                    <asp:ListItem>Marketing</asp:ListItem>
                                    <asp:ListItem>Bušenje</asp:ListItem>
                                    <asp:ListItem>Remont</asp:ListItem>
                                    <asp:ListItem>Bušotinski servisi</asp:ListItem>
                                    <asp:ListItem>Održavanje</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("OJ") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SubOJ" HeaderText="Servis" SortExpression="SubOJ" />
                        <asp:BoundField DataField="SubOJDva" HeaderText="Tim/Postrojenja" SortExpression="SubOJDva" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:TemplateField HeaderText="UserRole" SortExpression="UserRole">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlUserRole" runat="server">
                                    <asp:ListItem>User</asp:ListItem>
                                    <asp:ListItem>LocalAdmin</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>Manager</asp:ListItem>
                                    <asp:ListItem>MasterAdmin</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserRole") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" CssClass="header" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" CssClass="pager" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" CssClass="rows" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CroscoStopCardConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Users] ([FirstName], [LastName], [UserName], [Lozinka], [MaticniBroj], [OJ], [SubOJ], [SubOJDva], [Email], [UserRole]) VALUES (@FirstName, @LastName, @UserName, @Lozinka, @MaticniBroj, @OJ, @SubOJ, @SubOJDva, @Email, @UserRole)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [UserName] = @UserName, [Lozinka] = @Lozinka, [MaticniBroj] = @MaticniBroj, [OJ] = @OJ, [SubOJ] = @SubOJ, [SubOJDva] = @SubOJDva, [Email] = @Email, [UserRole] = @UserRole WHERE [UserID] = @UserID">
                    <DeleteParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Lozinka" Type="String" />
                        <asp:Parameter Name="MaticniBroj" Type="Int32" />
                        <asp:Parameter Name="OJ" Type="String" />
                        <asp:Parameter Name="SubOJ" Type="String" />
                        <asp:Parameter Name="SubOJDva" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="UserRole" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Lozinka" Type="String" />
                        <asp:Parameter Name="MaticniBroj" Type="Int32" />
                        <asp:Parameter Name="OJ" Type="String" />
                        <asp:Parameter Name="SubOJ" Type="String" />
                        <asp:Parameter Name="SubOJDva" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="UserRole" Type="String" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr style="display: table-caption">
            <td class="addUserID btn btn-info" onclick="pokazi()">Add user
            </td>
            <td>

                <div id="AddUserDivID" class="mydatagrid pokazi">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="50px" OnDataBound="DetailsView1_DataBound" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                        <Fields>
                            <asp:CommandField ShowInsertButton="True" />
                            <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
                                <EditItemTemplate>
                                    <asp:Label ID="lblUserID1" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxUserID" runat="server" Enabled="False" Text='<%# Bind("UserID") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblUserID" runat="server" CssClass="sakri" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxFN1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxFN" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblFN" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxLN1" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxLN" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblLN" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxUN1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxUN" runat="server" Enabled="False" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblUN" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Lozinka" SortExpression="Lozinka">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxPassInsert1" runat="server" Text='<%# Bind("Lozinka") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxPassInsert" runat="server" Text='<%# Bind("Lozinka") %>' TextMode="Password"></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblPassDetails" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MaticniBroj" SortExpression="MaticniBroj">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxMB1" runat="server" Text='<%# Bind("MaticniBroj") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxMB" runat="server" Text='<%# Bind("MaticniBroj") %>' TextMode="Number"></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblMB" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Proces" SortExpression="OJ">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxOJ1" runat="server" Text='<%# Bind("OJ") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="ddlOJ" runat="server">
                                        <asp:ListItem>Uprava</asp:ListItem>
                                        <asp:ListItem>QHSE</asp:ListItem>
                                        <asp:ListItem>Marketing</asp:ListItem>
                                        <asp:ListItem>Bušenje</asp:ListItem>
                                        <asp:ListItem>Remont</asp:ListItem>
                                        <asp:ListItem>Bušotinski servisi</asp:ListItem>
                                        <asp:ListItem>Održavanje</asp:ListItem>
                                    </asp:DropDownList>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblOJ" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Servis" SortExpression="SubOJ">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxSubOJ1" runat="server" Text='<%# Bind("SubOJ") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxSubOJ" runat="server" Text='<%# Bind("SubOJ") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblSubOJ" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tim/Postrojenja" SortExpression="SubOJDva">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxSubOJDva1" runat="server" Text='<%# Bind("SubOJDva") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxSubOJDva" runat="server" Text='<%# Bind("SubOJDva") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblSubOJDva" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxMail1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="tbxMail" runat="server" Text='<%# Bind("Email") %>' TextMode="Email"></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblMail" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UserRole" SortExpression="UserRole">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tbxUserRole" runat="server" Text='<%# Bind("UserRole") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="ddlUserRole" runat="server">
                                        <asp:ListItem>User</asp:ListItem>
                                        <asp:ListItem>LocalAdmin</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Manager</asp:ListItem>
                                        <asp:ListItem>MasterAdmin</asp:ListItem>
                                    </asp:DropDownList>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblUserRole" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CroscoStopCardConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Users] ([FirstName], [LastName], [UserName], [Lozinka], [MaticniBroj], [OJ], [SubOJ], [SubOJDva], [Email], [UserRole]) VALUES (@FirstName, @LastName, @UserName, @Lozinka, @MaticniBroj, @OJ, @SubOJ, @SubOJDva, @Email, @UserRole)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [UserName] = @UserName, [Lozinka] = @Lozinka, [MaticniBroj] = @MaticniBroj, [OJ] = @OJ, [SubOJ] = @SubOJ, [SubOJDva] = @SubOJDva, [Email] = @Email, [UserRole] = @UserRole WHERE [UserID] = @UserID">
                        <DeleteParameters>
                            <asp:Parameter Name="UserID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="UserName" Type="String" />
                            <asp:Parameter Name="Lozinka" Type="String" />
                            <asp:Parameter Name="MaticniBroj" Type="Int32" />
                            <asp:Parameter Name="OJ" Type="String" />
                            <asp:Parameter Name="SubOJ" Type="String" />
                            <asp:Parameter Name="SubOJDva" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="UserRole" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="UserName" Type="String" />
                            <asp:Parameter Name="Lozinka" Type="String" />
                            <asp:Parameter Name="MaticniBroj" Type="Int32" />
                            <asp:Parameter Name="OJ" Type="String" />
                            <asp:Parameter Name="SubOJ" Type="String" />
                            <asp:Parameter Name="SubOJDva" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="UserRole" Type="String" />
                            <asp:Parameter Name="UserID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GVStopCards" CssClass="mydatagrid container1" Width="50%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StopCardID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="2" OnRowDataBound="GVStopCards_RowDataBound" OnRowEditing="GVStopCards_RowEditing" OnRowUpdating="GVStopCards_RowUpdating" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="StopCardID" HeaderText="StopCardID" ReadOnly="True" SortExpression="StopCardID" />
                        <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
                            <EditItemTemplate>
                                <asp:Label ID="lblUserID" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblUserID1" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DateCreated" SortExpression="DateCreated">
                            <EditItemTemplate>
                                <asp:Label ID="lblDateCreated" runat="server" Text='<%# Bind("DateCreated") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDateCreated1" runat="server" Text='<%# Bind("DateCreated") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SigNesigPostupak" SortExpression="SigNesigPostupak">
                            <EditItemTemplate>
                                <asp:CheckBox ID="cbxSigNesigPostupak" runat="server" AutoPostBack="True" Checked='<%# Bind("SigNesigPostupak") %>' OnCheckedChanged="cbxSigNesigPostupak_CheckedChanged" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="cbxSigNesigPostupak1" runat="server" Checked='<%# Bind("SigNesigPostupak") %>' Enabled="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NesigRadnjaUvijet" SortExpression="NesigRadnjaUvijet">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlNesigRadnjaUvijet" runat="server">
                                    <asp:ListItem Value="Nesigurna Radnja">Nesigurna Radnja</asp:ListItem>
                                    <asp:ListItem Value="Nesiguran Uvijet">Nesiguran Uvijet</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("NesigRadnjaUvijet") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ElementProm" SortExpression="ElementProm">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlElementProm" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlElementProm_SelectedIndexChanged">
                                    <asp:ListItem Value="REAKCIJE LJUDI">REAKCIJE LJUDI</asp:ListItem>
                                    <asp:ListItem Value="OSOBNA ZAŠTITNA OPREMA">OSOBNA ZAŠTITNA OPREMA</asp:ListItem>
                                    <asp:ListItem Value="POLOŽAJ LJUDI (uzroci ozljeda)">POLOŽAJ LJUDI (uzroci ozljeda)</asp:ListItem>
                                    <asp:ListItem Value="ALATI I OPREMA">ALATI I OPREMA</asp:ListItem>
                                    <asp:ListItem Value="PROCEDURE I UREDNOST">PROCEDURE I UREDNOST</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("ElementProm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PodelementProm" SortExpression="PodelementProm">
                            <EditItemTemplate>
                                <asp:CheckBoxList ID="cbxlPodelementProm" runat="server">
                                </asp:CheckBoxList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPodelementProm" runat="server" Text='<%# Bind("PodelementProm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DatumOtvaranja" SortExpression="DatumOtvaranja">
                            <EditItemTemplate>
                                <asp:Calendar ID="clDatumOtvaranja" runat="server" OnSelectionChanged="clDatumOtvaranja_SelectionChanged"></asp:Calendar>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDatumOtvaranja" runat="server" Text='<%# Bind("DatumOtvaranja") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OpisSukNesuk" SortExpression="OpisSukNesuk">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxOpisSukNesuk" runat="server" Text='<%# Bind("OpisSukNesuk") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblOpisSukNesuk" runat="server" Text='<%# Bind("OpisSukNesuk") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="KorektivneRadnje" SortExpression="KorektivneRadnje">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxKorektivneRadnje" runat="server" Text='<%# Bind("KorektivneRadnje") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblKorektivneRadnje" runat="server" Text='<%# Bind("KorektivneRadnje") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AnalizaUzorka" SortExpression="AnalizaUzorka">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxAnalizaUzorka" runat="server" Text='<%# Bind("AnalizaUzorka") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAnalizaUzorka" runat="server" Text='<%# Bind("AnalizaUzorka") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="RokZaRjes" SortExpression="RokZaRjes">
                            <EditItemTemplate>
                                <asp:Calendar ID="clRokZaRjes" runat="server" OnSelectionChanged="clRokZaRjes_SelectionChanged"></asp:Calendar>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblRokZaRjes" runat="server" Text='<%# Bind("RokZaRjes") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OdgovornaOsoba" SortExpression="OdgovornaOsoba">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxOdgovornaOsoba" runat="server" Text='<%# Bind("OdgovornaOsoba") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblOdgovornaOsoba" runat="server" Text='<%# Bind("OdgovornaOsoba") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CardStatus" SortExpression="CardStatus">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlCardStatus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCardStatus_SelectedIndexChanged">
                                    <asp:ListItem>Otvoreno</asp:ListItem>
                                    <asp:ListItem>Zatvoreno</asp:ListItem>
                                    <asp:ListItem Value="U postupku">U postupku</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblCardStatus" runat="server" Text='<%# Bind("CardStatus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Komentar" SortExpression="Komentar">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxKomentar" runat="server" Text='<%# Bind("Komentar") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblKomentar" runat="server" Text='<%# Bind("Komentar") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DatumZatvaranja" SortExpression="DatumZatvaranja">
                            <EditItemTemplate>
                                <asp:Calendar ID="clDatumZatvaranja" runat="server" OnSelectionChanged="clDatumZatvaranja_SelectionChanged"></asp:Calendar>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("DatumZatvaranja") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" CssClass="header" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" CssClass="pager" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" CssClass="rows" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" CssClass="selectedrow" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CroscoStopCardConnectionString %>" DeleteCommand="DELETE FROM [StopCards] WHERE [StopCardID] = @StopCardID" InsertCommand="INSERT INTO [StopCards] ([UserID], [DateCreated], [SigNesigPostupak], [NesigRadnjaUvijet], [ElementProm], [PodelementProm], [DatumOtvaranja], [OpisSukNesuk], [KorektivneRadnje], [AnalizaUzorka], [RokZaRjes], [OdgovornaOsoba], [CardStatus], [Komentar], [DatumZatvaranja]) VALUES (@UserID, @DateCreated, @SigNesigPostupak, @NesigRadnjaUvijet, @ElementProm, @PodelementProm, @DatumOtvaranja, @OpisSukNesuk, @KorektivneRadnje, @AnalizaUzorka, @RokZaRjes, @OdgovornaOsoba, @CardStatus, @Komentar, @DatumZatvaranja)" SelectCommand="SELECT * FROM [StopCards]" UpdateCommand="UPDATE [StopCards] SET [UserID] = @UserID, [DateCreated] = @DateCreated, [SigNesigPostupak] = @SigNesigPostupak, [NesigRadnjaUvijet] = @NesigRadnjaUvijet, [ElementProm] = @ElementProm, [PodelementProm] = @PodelementProm, [DatumOtvaranja] = @DatumOtvaranja, [OpisSukNesuk] = @OpisSukNesuk, [KorektivneRadnje] = @KorektivneRadnje, [AnalizaUzorka] = @AnalizaUzorka, [RokZaRjes] = @RokZaRjes, [OdgovornaOsoba] = @OdgovornaOsoba, [CardStatus] = @CardStatus, [Komentar] = @Komentar, [DatumZatvaranja] = @DatumZatvaranja WHERE [StopCardID] = @StopCardID">
                    <DeleteParameters>
                        <asp:Parameter Name="StopCardID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="DateCreated" Type="DateTime" />
                        <asp:Parameter Name="SigNesigPostupak" Type="Boolean" />
                        <asp:Parameter Name="NesigRadnjaUvijet" Type="String" />
                        <asp:Parameter Name="ElementProm" Type="String" />
                        <asp:Parameter Name="PodelementProm" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumOtvaranja" />
                        <asp:Parameter Name="OpisSukNesuk" Type="String" />
                        <asp:Parameter Name="KorektivneRadnje" Type="String" />
                        <asp:Parameter Name="AnalizaUzorka" Type="String" />
                        <asp:Parameter DbType="Date" Name="RokZaRjes" />
                        <asp:Parameter Name="OdgovornaOsoba" Type="String" />
                        <asp:Parameter Name="CardStatus" Type="String" />
                        <asp:Parameter Name="Komentar" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumZatvaranja" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="DateCreated" Type="DateTime" />
                        <asp:Parameter Name="SigNesigPostupak" Type="Boolean" />
                        <asp:Parameter Name="NesigRadnjaUvijet" Type="String" />
                        <asp:Parameter Name="ElementProm" Type="String" />
                        <asp:Parameter Name="PodelementProm" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumOtvaranja" />
                        <asp:Parameter Name="OpisSukNesuk" Type="String" />
                        <asp:Parameter Name="KorektivneRadnje" Type="String" />
                        <asp:Parameter Name="AnalizaUzorka" Type="String" />
                        <asp:Parameter DbType="Date" Name="RokZaRjes" />
                        <asp:Parameter Name="OdgovornaOsoba" Type="String" />
                        <asp:Parameter Name="CardStatus" Type="String" />
                        <asp:Parameter Name="Komentar" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumZatvaranja" />
                        <asp:Parameter Name="StopCardID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="mydatagrid">
                <asp:DetailsView ID="DetailsView2" runat="server" Height="100%" Width="100%" AutoGenerateRows="False" CellPadding="4" DataKeyNames="StopCardID" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" OnDataBound="DetailsView2_DataBound" OnItemInserted="DetailsView2_ItemInserted" OnItemInserting="DetailsView2_ItemInserting">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="StopCardID" HeaderText="StopCardID" ReadOnly="True" SortExpression="StopCardID" InsertVisible="False" Visible="False" />
                        <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxUserID1" runat="server" Text=""></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="tbxUserID" runat="server" Text="" TextMode="Number"></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblUserID" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ReadOnly="True" SortExpression="DateCreated" InsertVisible="False" Visible="False" />
                        <asp:TemplateField HeaderText="SigNesigPostupak" SortExpression="SigNesigPostupak">
                            <EditItemTemplate>
                                <asp:CheckBox ID="cbxSigNesigPostupak1" runat="server" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:CheckBox ID="cbxSigNesigPostupak" runat="server" OnCheckedChanged="cbxSigNesigPostupak_CheckedChanged" AutoPostBack="True" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="cbxSigNesigPostupak2" runat="server" Enabled="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NesigRadnjaUvijet" SortExpression="NesigRadnjaUvijet">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxNesigRadnjaUvijet" runat="server" Text='<%# Bind("NesigRadnjaUvijet") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlNesigRadnjaUvijet" runat="server">
                                    <asp:ListItem Value="Nesigurna Radnja">Nesigurna Radnja</asp:ListItem>
                                    <asp:ListItem Value="Nesiguran Uvijet">Nesiguran Uvijet</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblNesigRadnjaUvijet" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ElementProm" SortExpression="ElementProm">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxElementProm" runat="server" Text='<%# Bind("ElementProm") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlElementProm" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlElementProm_SelectedIndexChanged">
                                    <asp:ListItem Value="REAKCIJE LJUDI">REAKCIJE LJUDI</asp:ListItem>
                                    <asp:ListItem Value="OSOBNA ZAŠTITNA OPREMA">OSOBNA ZAŠTITNA OPREMA</asp:ListItem>
                                    <asp:ListItem Value="POLOŽAJ LJUDI (uzroci ozljeda)">POLOŽAJ LJUDI (uzroci ozljeda)</asp:ListItem>
                                    <asp:ListItem Value="ALATI I OPREMA">ALATI I OPREMA</asp:ListItem>
                                    <asp:ListItem Value="PROCEDURE I UREDNOST">PROCEDURE I UREDNOST</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblElementProm" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PodelementProm" SortExpression="PodelementProm">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxPodelementProm" runat="server" Text='<%# Bind("PodelementProm") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:CheckBoxList ID="cbxlPodelementProm" runat="server">
                                </asp:CheckBoxList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPodelementProm" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DatumOtvaranja" SortExpression="DatumOtvaranja">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxDatumOtvaranja" runat="server" Text='<%# Bind("DatumOtvaranja") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Calendar ID="clDatumOtvaranja" runat="server" OnSelectionChanged="clDatumOtvaranja_SelectionChanged"></asp:Calendar>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDatumOtvaranja" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OpisSukNesuk" SortExpression="OpisSukNesuk">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxOpisSukNesuk1" runat="server" Text=""></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="tbxOpisSukNesuk" runat="server" Text=""></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblOpisSukNesuk" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="KorektivneRadnje" SortExpression="KorektivneRadnje">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxKorektivneRadnje1" runat="server" Text=""></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="tbxKorektivneRadnje" runat="server" Text=""></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblKorektivneRadnje" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AnalizaUzorka" SortExpression="AnalizaUzorka">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxAnalizaUzorka1" runat="server" Text=""></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="tbxAnalizaUzorka" runat="server" Text=""></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAnalizaUzorka" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="RokZaRjes" SortExpression="RokZaRjes">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxRokZaRjes" runat="server" Text='<%# Bind("RokZaRjes") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Calendar ID="clRokZaRjes" runat="server" OnSelectionChanged="clRokZaRjes_SelectionChanged"></asp:Calendar>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblRokZaRjes" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OdgovornaOsoba" SortExpression="OdgovornaOsoba">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxOdgovornaOsoba1" runat="server" Text=""></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="tbxOdgovornaOsoba" runat="server" Text=""></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblOdgovornaOsoba" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CardStatus" SortExpression="CardStatus">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxCardStatus" runat="server" Text='<%# Bind("CardStatus") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="ddlCardStatus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCardStatus_SelectedIndexChanged">
                                    <asp:ListItem>Otvoreno</asp:ListItem>
                                    <asp:ListItem>Zatvoreno</asp:ListItem>
                                    <asp:ListItem Value="U postupku">U postupku</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblCardStatus" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Komentar" SortExpression="Komentar">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxKomentar1" runat="server" Text=""></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="tbxKomentar" runat="server" Text=""></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblKomentar" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DatumZatvaranja" SortExpression="DatumZatvaranja">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbxDatumZatvaranja" runat="server" Text='<%# Bind("DatumZatvaranja") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Calendar ID="clDatumZatvaranja" runat="server" OnSelectionChanged="clDatumZatvaranja_SelectionChanged"></asp:Calendar>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDatumZatvaranja" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CroscoStopCardConnectionString %>" DeleteCommand="DELETE FROM [StopCards] WHERE [StopCardID] = @StopCardID" InsertCommand="INSERT INTO [StopCards] ([UserID], [DateCreated], [SigNesigPostupak], [NesigRadnjaUvijet], [ElementProm], [PodelementProm], [DatumOtvaranja], [OpisSukNesuk], [KorektivneRadnje], [AnalizaUzorka], [RokZaRjes], [OdgovornaOsoba], [CardStatus], [Komentar], [DatumZatvaranja]) VALUES (@UserID, @DateCreated, @SigNesigPostupak, @NesigRadnjaUvijet, @ElementProm, @PodelementProm, @DatumOtvaranja, @OpisSukNesuk, @KorektivneRadnje, @AnalizaUzorka, @RokZaRjes, @OdgovornaOsoba, @CardStatus, @Komentar, @DatumZatvaranja)" SelectCommand="SELECT * FROM [StopCards]" UpdateCommand="UPDATE [StopCards] SET [UserID] = @UserID, [DateCreated] = @DateCreated, [SigNesigPostupak] = @SigNesigPostupak, [NesigRadnjaUvijet] = @NesigRadnjaUvijet, [ElementProm] = @ElementProm, [PodelementProm] = @PodelementProm, [DatumOtvaranja] = @DatumOtvaranja, [OpisSukNesuk] = @OpisSukNesuk, [KorektivneRadnje] = @KorektivneRadnje, [AnalizaUzorka] = @AnalizaUzorka, [RokZaRjes] = @RokZaRjes, [OdgovornaOsoba] = @OdgovornaOsoba, [CardStatus] = @CardStatus, [Komentar] = @Komentar, [DatumZatvaranja] = @DatumZatvaranja WHERE [StopCardID] = @StopCardID">
                    <DeleteParameters>
                        <asp:Parameter Name="StopCardID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="DateCreated" Type="DateTime" />
                        <asp:Parameter Name="SigNesigPostupak" Type="Boolean" />
                        <asp:Parameter Name="NesigRadnjaUvijet" Type="String" />
                        <asp:Parameter Name="ElementProm" Type="String" />
                        <asp:Parameter Name="PodelementProm" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumOtvaranja" />
                        <asp:Parameter Name="OpisSukNesuk" Type="String" />
                        <asp:Parameter Name="KorektivneRadnje" Type="String" />
                        <asp:Parameter Name="AnalizaUzorka" Type="String" />
                        <asp:Parameter DbType="Date" Name="RokZaRjes" />
                        <asp:Parameter Name="OdgovornaOsoba" Type="String" />
                        <asp:Parameter Name="CardStatus" Type="String" />
                        <asp:Parameter Name="Komentar" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumZatvaranja" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="DateCreated" Type="DateTime" />
                        <asp:Parameter Name="SigNesigPostupak" Type="Boolean" />
                        <asp:Parameter Name="NesigRadnjaUvijet" Type="String" />
                        <asp:Parameter Name="ElementProm" Type="String" />
                        <asp:Parameter Name="PodelementProm" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumOtvaranja" />
                        <asp:Parameter Name="OpisSukNesuk" Type="String" />
                        <asp:Parameter Name="KorektivneRadnje" Type="String" />
                        <asp:Parameter Name="AnalizaUzorka" Type="String" />
                        <asp:Parameter DbType="Date" Name="RokZaRjes" />
                        <asp:Parameter Name="OdgovornaOsoba" Type="String" />
                        <asp:Parameter Name="CardStatus" Type="String" />
                        <asp:Parameter Name="Komentar" Type="String" />
                        <asp:Parameter DbType="Date" Name="DatumZatvaranja" />
                        <asp:Parameter Name="StopCardID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="white-space: pre">
                <asp:Label ID="lblError" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>

        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="fuExcel" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="Import Users" align="left" OnClick="btnImportUsers_Click" />
            </td>
        </tr>
        <tr>
            <td>

                <asp:Button ID="Button2" runat="server" Text="Export Users" OnClick="btnExportUsers_Click" />
                <asp:Button ID="Button3" runat="server" Text="Export Stop Cards" OnClick="btnExportCards_Click" />
            </td>
        </tr>
        
    </table>
    <table>
        <tr>
            <td><asp:Panel ID="tablicaSTOP1" CssClass="container mb-5 mt-3" runat="server">

                </asp:Panel>
            </td>
       </tr>
        <tr>
            <td>
                <h3>Nomination table</h3>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="NominationTable" CssClass="container mb-5 mt-3" runat="server">

                </asp:Panel>
            </td>
       </tr>
    </table>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libspopper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap//4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script>
        function pokazi() {
            var x = document.getElementById("AddUserDivID");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
    
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
           
           
           //alert('Spremno za Display')
          // display();
            //$('#mytb1').DataTable();
            
            display();
            displayNomination();
            $('td.txtBox').each(function () {
                if ($(this).text() == "True") {
                    $(this).closest("tr").find('td:last').text("Nominirana");
                    var a = $(this).closest("tr").find('td:last')
                    a.removeClass("btn-primary");
                    a.addClass("btn-success");
                }
            });
            $('.mydatatable').DataTable();
            var AddUserDisplay = document.getElementById("ContentPlaceHolder1_DetailsView1").firstElementChild.firstElementChild.firstElementChild.firstElementChild;
            if (AddUserDisplay.innerText == "Insert") {
                document.getElementById("AddUserDivID").style.display = "block";
           } else {
               document.getElementById("AddUserDivID").style.display = "none";
           }


            $('#ContentPlaceHolder1_GVUsers').addClass("table table-striped table-bordered");

            //ne prepozna možda zbog depenedance
            //$('.mdb-select').materialSelect(); 
         
           
        });
    </script>
    <script>
        $(document).on('click', 'td .STOPCardbtn', function () {
            var html = $(this).text()
            var text1 = $(this).closest("tr").find('td:first').text();
            alert(text1);
            alert(html);
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'DoneSTOPCard.aspx?opr=display' + '&STOPID=' + text1, false);
            xmlhttp.send(null);
            window.open('DoneSTOPCard.aspx');
            if (xmlhttp.readyState == 4) {
                if (xmlhttp.status == 200) {
                    var resultText = xmlhttp.responseText;
                    document.getElementById("mytb2").innerHTML = xmlhttp.responseText;

                }
            }
        });
    </script>
    <script>
        $(document).on('click', 'td .EditSTOPCardbtn', function () {
            var html = $(this).text()
            var text1 = $(this).closest("tr").find('td:first').text();
            alert(text1);
            alert(html);
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'EditSTOPCard.aspx?opr=Edit' + '&STOPID=' + text1, false);
            xmlhttp.send(null);
            window.open('EditSTOPCard.aspx');
            if (xmlhttp.readyState == 4) {
                if (xmlhttp.status == 200) {
                    var resultText = xmlhttp.responseText;
                    document.getElementById("mytb2").innerHTML = xmlhttp.responseText;
                }
            }
        });

        function display() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open('Get', 'InsertPage.aspx?opr=displayAdmin', false);
        xmlhttp.send(null);
        var resultText = xmlhttp.responseText;
        document.getElementById("ContentPlaceHolder1_tablicaSTOP1").innerHTML = resultText;
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
    </script>
    <script>
        $(document).on('click', 'td .nominLocal', function () {
            $(this).text("Nomenirana");
            $(this).removeClass("btn-primary");
            $(this).addClass("btn-success");
            $(this).closest("tr").find('td.txtBox')[4].innerHTML="<span>True</span>";
            var html = $(this).text()
            var text1 = $(this).closest("tr").find('td:first').text();
            alert(text1);
            alert(html);
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'Insertpage.aspx?opr=UpdateNominacije' + '&STOPID=' + text1, false);
            xmlhttp.send(null);
            //displayNomination(); 
            
        });
        $(document).on('change', 'select.Dobitkol', function () {
            
        //    $(this).text("Nomenirana");
        //    $(this).removeClass("btn-primary");
        //    $(this).addClass("btn-success");
        //    $(this).closest("tr").find('td.txtBox')[4].innerHTML="<span>True</span>";
            //var html = $(this).text();
            var html = $(this).val();
            if ($(this).val() == "Odaberi") {
                if ($(this).hasClass("btn-success")) { $(this).removeClass("btn-success") };
            } else {
                $(this).addClass("btn-success");
            }
            var text1 = $(this).closest("tr").find('td:first').text();
            //alert(text1);
            //alert(html);
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open('Get', 'Insertpage.aspx?opr=UpdateNominacije' + '&STOPID=' + text1 + '&rezul=' + html, false);
            xmlhttp.send(null);
        //    //displayNomination(); 
            
        });
        //forntEnd session
        //sessionStorage.setItem("userName",document.getElementById('usr').innerText.split(" ",2)[1]);
        //sessionStorage.getItem("userName");

        function displayNomination() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open('Get', 'InsertPage.aspx?opr=displayNomination', false);
        xmlhttp.send(null);
        var resultText = xmlhttp.responseText;
        document.getElementById("ContentPlaceHolder1_NominationTable").innerHTML = resultText;
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
    </script>
    </asp:Panel>
</asp:Content>
