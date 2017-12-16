<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintTicket.aspx.cs" Inherits="UI_PrintTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: right">
            <br />
        </asp:Panel>
    
    </div>
        <div style="width: 344px; ">

            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"  Height="50px" Width="338px">
                <Fields>
                    <asp:BoundField DataField="OrderID" HeaderText="شماره بلیط" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="PassengerID" HeaderText="شماره مسافر" SortExpression="PassengerID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="نام و نام خانوادگی" SortExpression="Name" />
                    <asp:BoundField DataField="FatherName" HeaderText="نام پدر" SortExpression="FatherName" />
                    <asp:BoundField DataField="FlightID" HeaderText="شماره پرواز" InsertVisible="False" ReadOnly="True" SortExpression="FlightID" />
                    <asp:BoundField DataField="CodeMelli" HeaderText="کد ملی" SortExpression="CodeMelli" />
                    <asp:BoundField DataField="Tel" HeaderText="تلفن" SortExpression="Tel" />
                    <asp:BoundField DataField="Source" HeaderText="مبدا" SortExpression="Source" />
                    <asp:BoundField DataField="distination" HeaderText="مقصد" SortExpression="distination" />
                    <asp:BoundField DataField="shipname" HeaderText="نام شرکت" SortExpression="shipname" />
                    <asp:BoundField DataField="Date" HeaderText="تاریخ" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="ساعت" SortExpression="Time" />
                    <asp:BoundField DataField="price" HeaderText="قیمت" SortExpression="price" />
                    <asp:BoundField DataField="namekarbar" HeaderText="نام کاربر" SortExpression="namekarbar" />
                    
                </Fields>
            </asp:DetailsView>

            <br />
            </div>
    </form>
</body>
</html>
