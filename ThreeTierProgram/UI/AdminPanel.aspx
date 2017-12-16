<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="UI_AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UI/users.aspx">ثبت و نمایش کاربران</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UI/ShowAllTicket.aspx">مسافران و بلیط های رزرو شده</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UI/InsertFlight.aspx">ثبت شرکت های هواپیمایی</asp:HyperLink>
    
        <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">خروج</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
