<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="itemsincategory.aspx.cs" Inherits="itemsincategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="itemno" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="itemno" HeaderText="itemno" InsertVisible="False" 
                ReadOnly="True" SortExpression="itemno" />
            <asp:BoundField DataField="categoryno" HeaderText="categoryno" 
                SortExpression="categoryno" />
            <asp:BoundField DataField="itemname" HeaderText="itemname" 
                SortExpression="itemname" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="packing" HeaderText="packing" 
                SortExpression="packing" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:restuarantConnectionString %>" 
        SelectCommand="SELECT * FROM [MenuInfo] WHERE ([categoryno] = @categoryno) ORDER BY [itemname], [price], [packing]">
        <SelectParameters>
            <asp:QueryStringParameter Name="categoryno" QueryStringField="categoryno" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


