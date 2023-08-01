<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edititemsincategory.aspx.cs" Inherits="edititemsincategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <br />
        <br />
      
       
        <br />
        <asp:Label ID="Label1" runat="server" Text="ItemName"></asp:Label>
        <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Packing"></asp:Label>
        <asp:TextBox ID="txtPacking" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />


    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="itemno" DataSourceID="SqlDataSource2" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
              
              
              

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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restuarantConnectionString %>" 
            SelectCommand="SELECT * FROM [MenuInfo] WHERE ([categoryno] = @categoryno) ORDER BY [itemname]">
            <SelectParameters>
                <asp:QueryStringParameter Name="categoryno" QueryStringField="categoryno" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restuarantConnectionString %>"
            UpdateCommand = " update menuinfo set itemname=@itemname,price=@price,packing=@packing where itemno=@itemno"
            DeleteCommand = "delete from menuinfo where itemno=@itemno" 
            
            SelectCommand="SELECT categoryno, name, comment FROM CategoryInfo WHERE (categoryno = @categoryno)">
            <DeleteParameters>
                <asp:Parameter Name="itemno" />
            </DeleteParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="categoryno" QueryStringField="categoryno" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="itemname" />
                <asp:Parameter Name="price" />
                <asp:Parameter Name="packing" />
                <asp:Parameter Name="itemno" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

