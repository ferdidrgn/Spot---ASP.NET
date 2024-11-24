<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MaasVeriGirisi.aspx.cs" Inherits="IP229.MaasVeriGirisi" %>

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
            text-align: center;
            font-size: x-large;
        }
        .auto-style4 {
            width: 185px;
            height: 45px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            width: 185px;
            height: 51px;
        }
        .auto-style7 {
            height: 51px;
        }
        .auto-style8 {
            color: #FF0000;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Personel Maaş Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">Personel Adı:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="47px" Width="256px" DataSourceID="SqlDataSource1" DataTextField="Pers_Isım" DataValueField="Pers_id">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Maaş Tarihi:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Width="249px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Maaş Tutarı:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" Width="250px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Maaş Komisyonu:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" Width="249px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ay No:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server" Width="249px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">
                        <asp:Button ID="btn_kaydet" runat="server" Height="38px" Text="KAYDET" Width="129px" OnClick="btn_kaydet_Click" />
                        <asp:Button ID="btn_kapat" runat="server" Height="38px" Text="Sayfayı Kapat" Width="127px" OnClientClick="window.close()" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <strong>
                        <asp:Label ID="label1" runat="server" CssClass="auto-style8" Text="Sonuç Açıklama:" Visible="False"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Pers_id], [Pers_Isım] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Pers_id], [Pers_Isım] FROM [tbl_Personeller]" InsertCommand="INSERT INTO tbl_PersonelMaaslari(Pers_id, Maas_Odeme_Tarihi, Maas_tutari, Maas_komisyon, Ay_id) VALUES (@Pers_id, @Maas_Odeme_Tarihi, @Maas_tutari, @Maas_komisyon, @Ay_id)">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_id" Type="Int32" />
                                <asp:Parameter Name="Maas_Odeme_Tarihi" Type="DateTime"/>
                                <asp:Parameter Name="Maas_tutari" Type="Decimal"/>
                                <asp:Parameter Name="Maas_komisyon" Type="Decimal"/>
                                <asp:Parameter Name="Ay_id" Type="Byte" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
