<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Passenger.aspx.cs" Inherits="UI_Passenger" %>

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
        }
        .auto-style3 {
            width: 259px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 400px">
    
        <asp:Panel ID="Panel1" runat="server" Height="208px" style="text-align: right" Width="413px">
            <table class="auto-style1">
                <tr>
                    <td colspan="2" style="text-align: center">فرم ثبت مسافران</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                    <td>نام و نام خانوادگی</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFatherName" runat="server"></asp:TextBox>
                    </td>
                    <td>نام پدر</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCodemelli" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">کد ملی</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                    </td>
                    <td>تلفن</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 26px" Text="صدور بلیط" />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ثبت مسافر" style="height: 26px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LBLErrMsg" runat="server" Text="پیغام خطا"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" style="margin-right: 0px"   >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="کد کاربر" SortExpression="UserID" />
                    <asp:BoundField DataField="Tel" HeaderText="تلفن" SortExpression="Tel" />
                    <asp:BoundField DataField="CodeMelli" HeaderText="کدملی" SortExpression="CodeMelli" />
                    <asp:BoundField DataField="FatherName" HeaderText="نام پدر" SortExpression="FatherName" />
                    <asp:BoundField DataField="Name" HeaderText="نام و نام خانوادگی" SortExpression="Name" />
                    <asp:BoundField DataField="PassengerID" HeaderText="کد مسافر" InsertVisible="False" ReadOnly="True" SortExpression="PassengerID" />
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" DeleteText="حذف" ShowDeleteButton="True" CancelText="انصراف" EditText="ویرایش" ShowCancelButton="False" />
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
            </asp:GridView>لطفا یکی از موارد زیر را انتخاب کنیذ<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="price" HeaderText="قیمت" SortExpression="price" />
                    <asp:BoundField DataField="Date" HeaderText="تاریخ" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="ساعت پرواز" SortExpression="Time" />
                    <asp:BoundField DataField="shipname" HeaderText="نام شرکت" SortExpression="shipname" />
                    <asp:BoundField DataField="distination" HeaderText="مقصد" SortExpression="distination" />
                    <asp:BoundField DataField="Source" HeaderText="مبدا" SortExpression="Source" />
                    <asp:BoundField DataField="FlightID" HeaderText="شماره پرواز" InsertVisible="False" ReadOnly="True" SortExpression="FlightID" />
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
