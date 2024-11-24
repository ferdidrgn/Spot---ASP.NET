<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoneleGoreMaasListesi.aspx.cs" Inherits="IP229.PersoneleGoreMaasListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 227px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 326px;
        }
        .auto-style5 {
            height: 320px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2"><strong>Personele Göre Maaş Listesi</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">Personel İsmi Giriniz:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isım" DataValueField="Pers_id" CssClass="auto-style6" Height="16px" Width="184px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="101px" Width="748px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="Yıl" HeaderText="Yıl" ReadOnly="True" SortExpression="Yıl" />
                                <asp:BoundField DataField="Ay" HeaderText="Ay" SortExpression="Ay" />
                                <asp:BoundField DataField="Ödeme Tarihi" HeaderText="Ödeme Tarihi" SortExpression="Ödeme Tarihi" />
                                <asp:BoundField DataField="Tutar" HeaderText="Tutar" SortExpression="Tutar" />
                                <asp:BoundField DataField="Komisyon" HeaderText="Komisyon" SortExpression="Komisyon" />
                                <asp:BoundField DataField="Toplam" HeaderText="Toplam" ReadOnly="True" SortExpression="Toplam" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btn_fom_kapat" runat="server" Height="55px" OnClientClick="window.close()" Text="Formu Kapat" Width="251px" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Pers_id], [Pers_Isım] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT tbl_PersonelMaaslari.Maas_yili AS Yıl, tbl_Aylar.Ay_adi AS Ay, tbl_PersonelMaaslari.Maas_Odeme_Tarihi AS [Ödeme Tarihi], tbl_PersonelMaaslari.Maas_tutari AS Tutar, tbl_PersonelMaaslari.Maas_komisyon AS Komisyon, tbl_PersonelMaaslari.Maas_Toplam AS Toplam FROM tbl_Personeller INNER JOIN tbl_PersonelMaaslari ON tbl_Personeller.Pers_id = tbl_PersonelMaaslari.Pers_id INNER JOIN tbl_Aylar ON tbl_PersonelMaaslari.Ay_id = tbl_Aylar.Ay_id WHERE (tbl_Personeller.Pers_id = @Pers_id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_id" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
