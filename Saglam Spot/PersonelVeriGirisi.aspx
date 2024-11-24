<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonelVeriGirisi.aspx.cs" Inherits="IP229.PersonelVeriGirisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1332px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style13 {
            color: #FF0000;
        }
        .auto-style19 {
            width: 222px;
        }
        .auto-style20 {
            width: 221px;
        }
        .auto-style21 {
            width: 91px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="5"><strong>Personel Veri Giriş Formu</strong></td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Personel Adı:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style13" ErrorMessage="RequiredFieldValidator">  BOŞ!</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style21" colspan="2">Personel Soyadı:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" CssClass="auto-style13" ErrorMessage="RequiredFieldValidator">  BOŞ!</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">
                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Aktif mi?" BorderStyle="Inset" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Cinsiyet:</td>
                <td class="auto-style20">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal" Width="209px" BorderStyle="Inset">
                        <asp:ListItem Value="1">Erkek</asp:ListItem>
                        <asp:ListItem Value="2">Kadın</asp:ListItem>
                        <asp:ListItem Value="3">3.Hâl</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style21" colspan="2">Doğum Tarihi:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server" Width="173px"></asp:TextBox>
                </td>
                <td class="auto-style19">Pers. Foto:</td>
            </tr>
            <tr>
                <td class="auto-style20">Personel Unvanı:</td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownListUnvan" runat="server" DataSourceID="SqlDataUnvan" DataTextField="Unvan" DataValueField="Unvan" Height="30px" Width="166px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style21" colspan="2">Bölümü:</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownListBolum" runat="server" DataSourceID="SqlDataBolum" DataTextField="Bolum_adi" DataValueField="Bolum_id" Height="30px" Width="166px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style19" rowspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">İşe Giriş Tarihi:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style21" colspan="2">E-Mail</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox7" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Cep Tel:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox6" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style21" colspan="2">İli:</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownListIl" runat="server" DataSourceID="SqlDatail" DataTextField="Il_adi" DataValueField="Il_adi" Height="30px" Width="166px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">İlçesi:</td>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownListIlce" runat="server" DataSourceID="SqlDataIlce" DataTextField="Kent_adi" DataValueField="Kent_adi" Height="30px" Width="166px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">
                    Ülkesi:</td>
                <td>
                    <asp:DropDownList ID="DropDownListUlke" runat="server" DataSourceID="SqlDataUlke" DataTextField="Ulke" DataValueField="Ulke" Height="30px" Width="164px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Adresi:</td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox8" runat="server" Width="472px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:SqlDataSource ID="SqlDataUlke" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT DISTINCT Ulke FROM tbl_Kategoriler WHERE (NOT (Ulke IS NULL))"></asp:SqlDataSource>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Sonuç mesajı...:"></asp:Label>
                </td>
                <td class="auto-style21" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verileri Kaydet" />
                </td>
                <td class="auto-style19">
                    <asp:Button ID="Button2" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:SqlDataSource ID="SqlDataUnvan" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT DISTINCT Unvan FROM tbl_Kategoriler WHERE (NOT (Unvan IS NULL))"></asp:SqlDataSource>
                </td>
                <td class="auto-style20">
                    <asp:SqlDataSource ID="SqlDataBolum" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT Bolum_id, Bolum_adi FROM tbl_Bolumler WHERE (NOT (Bolum_adi IS NULL))"></asp:SqlDataSource>
                </td>
                <td class="auto-style21" colspan="2">
                    <asp:SqlDataSource ID="SqlDataIlce" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT Kent_adi FROM tbl_Kategoriler WHERE (NOT (Kent_adi IS NULL))"></asp:SqlDataSource>
                </td>
                <td class="auto-style19">
                    <asp:SqlDataSource ID="SqlDatail" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT Il_adi FROM tbl_Kategoriler WHERE (NOT (Il_adi IS NULL))"></asp:SqlDataSource>
                </td>
                <td class="auto-style19">
                    <asp:SqlDataSource ID="SqlDataSourceKayıt" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_adi, Pers_soyadi, Pers_cinsiyeti, Pers_DTarihi, Per_Ise_Giris_Tar, Pers_unvan, Pers_adresi, Pers_kenti, Pers_ili, Pers_Ulke, Bolum_id, Pers_cep, Pers_email, Pers_aktif_mi) VALUES (@Pers_adi, @Pers_soyadi, @Pers_cinsiyeti, @Pers_DTarihi, @Per_Ise_Giris_Tar, @Pers_unvan, @Pers_adresi, @Pers_kenti, @Pers_ili, @Pers_Ulke, @Bolum_id, @Pers_cep, @Pers_email, @Pers_aktif_mi)" SelectCommand="SELECT Pers_adi, Pers_soyadi, Pers_cinsiyeti, Pers_DTarihi, Per_Ise_Giris_Tar, Pers_unvan, Pers_adresi, Pers_kenti, Pers_ili, Pers_Ulke, Bolum_id, Pers_cep, Pers_email, Pers_aktif_mi FROM tbl_Personeller">
                        <InsertParameters>
                            <asp:Parameter Name="Pers_adi" />
                            <asp:Parameter Name="Pers_soyadi" />
                            <asp:Parameter Name="Pers_cinsiyeti" />
                            <asp:Parameter Name="Pers_DTarihi" />
                            <asp:Parameter Name="Per_Ise_Giris_Tar" />
                            <asp:Parameter Name="Pers_unvan" />
                            <asp:Parameter Name="Pers_adresi" />
                            <asp:Parameter Name="Pers_kenti" />
                            <asp:Parameter Name="Pers_ili" />
                            <asp:Parameter Name="Pers_Ulke" />
                            <asp:Parameter Name="Bolum_id" />
                            <asp:Parameter Name="Pers_cep" />
                            <asp:Parameter Name="Pers_email" />
                            <asp:Parameter Name="Pers_aktif_mi" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
