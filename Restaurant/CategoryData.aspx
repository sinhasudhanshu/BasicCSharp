<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CategoryData.aspx.cs" Inherits="CategoryData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="categoryno" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
               
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="comment" HeaderText="comment" 
                    SortExpression="comment" />
                    <asp:TemplateField HeaderText = "Show item">
                    <ItemTemplate><a target= "cr" href='showcategoryitem.aspx?categoryno=<%#Eval("categoryno") %>>'>show item</a></ItemTemplate>
                    </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restuarantConnectionString %>" 
            DeleteCommand="delete from categoryinfo where categoryno=@categoryno"
            UpdateCommand="update categoryinfo set name=@name,comment=@comment where categoryno=@categoryno"

            SelectCommand="SELECT * FROM [CategoryInfo]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

