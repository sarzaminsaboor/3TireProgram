<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPanel.aspx.cs" Inherits="UI_UserPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/UI/Passenger.aspx">ثبت مسافران</asp:HyperLink>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">خروج</asp:LinkButton>
        </div>
    </form>
</body>
</html>
