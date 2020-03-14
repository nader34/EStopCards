<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="CroscoStopCard.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:CheckBoxField DataField="SigNesigPostupak" HeaderText="SigNesigPostupak" SortExpression="SigNesigPostupak" />
            <asp:BoundField DataField="NesigRadnjaUvijet" HeaderText="NesigRadnjaUvijet" SortExpression="NesigRadnjaUvijet" />
            <asp:BoundField DataField="ElementProm" HeaderText="ElementProm" SortExpression="ElementProm" />
            <asp:BoundField DataField="PodelementProm" HeaderText="PodelementProm" SortExpression="PodelementProm" />
            <asp:BoundField DataField="DatumOtvaranja" HeaderText="DatumOtvaranja" SortExpression="DatumOtvaranja" />
            <asp:BoundField DataField="DatumZatvaranja" HeaderText="DatumZatvaranja" SortExpression="DatumZatvaranja" />
            <asp:BoundField DataField="Komentar" HeaderText="Komentar" SortExpression="Komentar" />
            <asp:BoundField DataField="CardStatus" HeaderText="CardStatus" SortExpression="CardStatus" />
            <asp:BoundField DataField="OdgovornaOsoba" HeaderText="OdgovornaOsoba" SortExpression="OdgovornaOsoba" />
            <asp:BoundField DataField="RokZaRjes" HeaderText="RokZaRjes" SortExpression="RokZaRjes" />
            <asp:BoundField DataField="AnalizaUzorka" HeaderText="AnalizaUzorka" SortExpression="AnalizaUzorka" />
            <asp:BoundField DataField="KorektivneRadnje" HeaderText="KorektivneRadnje" SortExpression="KorektivneRadnje" />
            <asp:BoundField DataField="OpisSukNesuk" HeaderText="OpisSukNesuk" SortExpression="OpisSukNesuk" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CroscoStopCardConnectionString %>" SelectCommand="SELECT [DateCreated], [SigNesigPostupak], [NesigRadnjaUvijet], [ElementProm], [PodelementProm], [DatumOtvaranja], [DatumZatvaranja], [Komentar], [CardStatus], [OdgovornaOsoba], [RokZaRjes], [AnalizaUzorka], [KorektivneRadnje], [OpisSukNesuk] FROM [StopCards] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
