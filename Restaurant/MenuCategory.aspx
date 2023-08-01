<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuCategory.aspx.cs" Inherits="MenuCategory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>

       <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
       <br />
           <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
           <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
           <br />
           <asp:Label ID="Label2" runat="server" Text="Comment"></asp:Label>
           <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>
           <br />
           <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
           <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />
       <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 CellPadding="4" DataKeyNames="categoryno" DataSourceID="SqlDataSource1" 
                 ForeColor="#333333" GridLines="None" style="margin-left: 445px" 
               Width="648px">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                     <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
                     <asp:TemplateField HeaderText="view item" >
                     <ItemTemplate>
                     <a target="cr" href="itemsincategory.aspx?categoryno=<%#Eval("categoryno") %>">item list</a>
                     </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="edit item" >
                     <ItemTemplate>
                     <a target="cr" href="edititemsincategory.aspx?categoryno=<%#Eval("categoryno") %>">edit list</a>
                     </ItemTemplate>
                     </asp:TemplateField>
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
                 DeleteCommand = "delete from categoryinfo where categoryno=@categoryno"
                 UpdateCommand= "update categoryinfo set name=@name,comment=@comment where categoryno=@categoryno"
           
                 SelectCommand="SELECT * FROM [CategoryInfo]">
             </asp:SqlDataSource>
             <br />
           
       


        </div>
    </form>
</body>
</html>
