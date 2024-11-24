<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BolumeGorePersonelListesi.aspx.cs" Inherits="IP229.BolumeGorePersonelListesi" %>

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
            font-size: x-large;
        }
        .auto-style3 {
            width: 147px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Bölümlere Göre Personel Listesi</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">Bölüm Adını Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Bolum_adi" DataValueField="Bolum_id" Height="35px" Width="167px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" Height="196px" Width="1008px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Tam İsmi" HeaderText="Tam İsmi" ReadOnly="True" SortExpression="Tam İsmi" />
                            <asp:BoundField DataField="İşe Giriş Tarihi" HeaderText="İşe Giriş Tarihi" SortExpression="İşe Giriş Tarihi" />
                            <asp:BoundField DataField="Unvan" HeaderText="Unvan" SortExpression="Unvan" />
                            <asp:BoundField DataField="İş Tel" HeaderText="İş Tel" SortExpression="İş Tel" />
                            <asp:BoundField DataField="Cep Tel" HeaderText="Cep Tel" SortExpression="Cep Tel" />
                            <asp:BoundField DataField="E-Mail" HeaderText="E-Mail" SortExpression="E-Mail" />
                            <asp:BoundField DataField="Bölümü" HeaderText="Bölümü" SortExpression="Bölümü" />
                            <asp:CheckBoxField DataField="Aktif Mi" HeaderText="Aktif Mi" SortExpression="Aktif Mi" />
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
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Height="46px" OnClientClick="window.close()" Text="Formu Kapat" Width="182px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Bolum_id], [Bolum_adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT tbl_Personeller.Pers_Isım AS [Tam İsmi], tbl_Personeller.Per_Ise_Giris_Tar AS [İşe Giriş Tarihi], tbl_Personeller.Pers_unvan AS Unvan, tbl_Bolumler.Bolum_tel AS [İş Tel], tbl_Personeller.Pers_cep AS [Cep Tel], tbl_Personeller.Pers_email AS [E-Mail], tbl_Bolumler.Bolum_adi AS Bölümü, tbl_Personeller.Pers_aktif_mi AS [Aktif Mi] FROM tbl_Bolumler INNER JOIN tbl_Personeller ON tbl_Bolumler.Bolum_id = tbl_Personeller.Bolum_id WHERE (tbl_Personeller.Bolum_id = @Bolum_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_id" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
