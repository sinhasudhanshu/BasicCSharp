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
        </div>
    </form>
</body>
</html>
