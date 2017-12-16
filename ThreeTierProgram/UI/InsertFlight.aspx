<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertFlight.aspx.cs" Inherits="UI_InsertFlight" %>

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
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="280px" style="text-align: right" Width="413px">
            <table class="auto-style1">
                <tr>
                    <td colspan="2" style="text-align: center">فرم ثبت&nbsp; اطلاعات شرکت های هواپیمایی</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                    <td>نام&nbsp; شرکت</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtSourse" runat="server"></asp:TextBox>
                    </td>
                    <td>مبدا</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDistination" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">مقصد</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDAte" runat="server"></asp:TextBox>
                    </td>
                    <td>تاریخ پرواز</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                    </td>
                    <td>ساعت پرواز</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>قیمت</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ثبت" style="height: 26px; width: 29px;" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="FlightID" OnRowDeleting="GridView1_RowDeleting"   >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="FlightID" HeaderText="شماره پرواز" SortExpression="FlightID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Source" HeaderText="مبدا" SortExpression="Source" />
                    <asp:BoundField DataField="distination" HeaderText="مقصد" SortExpression="distination" />
                    <asp:BoundField DataField="shipname" HeaderText="نام شرکت" SortExpression="shipname" />
                    <asp:BoundField DataField="Date" HeaderText="تاریخ" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="ساعت" SortExpression="Time" />
                    <asp:BoundField DataField="price" HeaderText="قیمت" SortExpression="price" />
                    <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
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
            <br />
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
