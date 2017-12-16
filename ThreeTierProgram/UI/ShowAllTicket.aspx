<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowAllTicket.aspx.cs" Inherits="UI_ShowAllTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UI/AdminPanel.aspx">بازگشت به صفحه مدیریت</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" >
            <Columns>
                <asp:BoundField DataField="PassengerID" HeaderText="شماره مسافر" InsertVisible="False" ReadOnly="True" SortExpression="PassengerID" />
                
                <asp:BoundField DataField="Name" HeaderText="نام و نام خانوادگی" SortExpression="Name" />
                <asp:BoundField DataField="CodeMelli" HeaderText="کد ملی" SortExpression="CodeMelli" />
                <asp:BoundField DataField="FatherName" HeaderText="نام پدر" SortExpression="FatherName" />
                <asp:BoundField DataField="FlightID" HeaderText="شماره پرواز" InsertVisible="False" ReadOnly="True" SortExpression="FlightID" />
                <asp:BoundField DataField="Source" HeaderText="مبدا" SortExpression="Source" />
                <asp:BoundField DataField="distination" HeaderText="مقصد" SortExpression="distination" />
                <asp:BoundField DataField="shipname" HeaderText="نام شرکت" SortExpression="shipname" />
                <asp:BoundField DataField="price" HeaderText="قیمت" SortExpression="price" />
                <asp:BoundField DataField="Date" HeaderText="تاریخ" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="ساعت" SortExpression="Time" />
                <asp:BoundField DataField="Tel" HeaderText="تلفن" SortExpression="Tel" />
                <asp:BoundField DataField="UserID" HeaderText="کد کاربر" SortExpression="UserID" />
                <asp:BoundField DataField="OrderID" HeaderText="شماره سفارش" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="FlightID1" HeaderText="کد پرواز" SortExpression="FlightID1" />
               
                <asp:BoundField DataField="namekarbar" HeaderText="نام کاربر" SortExpression="namekarbar" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
