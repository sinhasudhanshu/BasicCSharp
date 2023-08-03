<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableDetail.aspx.cs" Inherits="TableDetail" %>

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
        <asp:Label ID="Label1" runat="server" Text="TableName"></asp:Label>
        <asp:TextBox ID="txtTableName" runat="server"></asp:TextBox> 
        <br />
        <asp:Label ID="Label2" runat="server" Text="NumberofSeats"></asp:Label>
        <asp:TextBox ID="txtNumberofSeats" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Comments"></asp:Label>
        <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="BookingStatus"></asp:Label>
        
        <br />
        
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="clear" onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>
