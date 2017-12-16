<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="UI_users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 259px;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            width: 259px;
            height: 26px;
            background-color: #CCCCCC;
        }
        .auto-style4 {
            height: 26px;
            background-color: #CCCCCC;
        }
        .auto-style5 {
            background-color: #CCCCCC;
        }
        .auto-style6 {
            background-color: #0099CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="208px" style="text-align: right" Width="413px">
            <table class="auto-style1">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UI/AdminPanel.aspx">بازگشت به صفحه مدیریت</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2" style="text-align: center">فرم ثبت کاربران</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">نام و نام خانوادگی</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPersonalCode" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">کد پرسنلی</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">نام کاربری</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">کلمه عبور</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ثبت" style="height: 26px" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </asp:Panel>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="شماره کاربر" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="Name" HeaderText="نام" SortExpression="Name" />
                <asp:BoundField DataField="PersonalCode" HeaderText="کد پرسنلی" SortExpression="PersonalCode" />
                <asp:BoundField DataField="UserName" HeaderText="نام کاربری" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="کلمه عبور" SortExpression="Password" />
                <asp:BoundField DataField="Role" HeaderText="سمت" SortExpression="Role" />
                <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
