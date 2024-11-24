<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonelVeriGuncellemeFormu.aspx.cs" Inherits="IP229.PersonelVeriGuncellemeFormu" %>

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
            font-size: large;
        }
        .auto-style3 {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Personel Veri Güncelleme Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">Personel Seçiniz:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isım" DataValueField="Pers_id" Height="30px" Width="131px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Pers_id], [Pers_Isım] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Pers_id" DataSourceID="SqlDataSource2" Height="50px" Width="161px">
                            <Fields>
                                <asp:BoundField DataField="Pers_id" HeaderText="Pers_id" InsertVisible="False" ReadOnly="True" SortExpression="Pers_id" />
                                <asp:BoundField DataField="Pers_adi" HeaderText="Pers_adi" SortExpression="Pers_adi" />
                                <asp:BoundField DataField="Pers_soyadi" HeaderText="Pers_soyadi" SortExpression="Pers_soyadi" />
                                <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                                <asp:BoundField DataField="Per_Ise_Giris_Tar" HeaderText="Per_Ise_Giris_Tar" SortExpression="Per_Ise_Giris_Tar" />
                                <asp:BoundField DataField="Per_Is_Cıkıs_Tar" HeaderText="Per_Is_Cıkıs_Tar" SortExpression="Per_Is_Cıkıs_Tar" />
                                <asp:BoundField DataField="Pers_adresi" HeaderText="Pers_adresi" SortExpression="Pers_adresi" />
                                <asp:BoundField DataField="Pers_kenti" HeaderText="Pers_kenti" SortExpression="Pers_kenti" />
                                <asp:BoundField DataField="Pers_ili" HeaderText="Pers_ili" SortExpression="Pers_ili" />
                                <asp:BoundField DataField="Pers_tel" HeaderText="Pers_tel" SortExpression="Pers_tel" />
                                <asp:BoundField DataField="Pers_cep" HeaderText="Pers_cep" SortExpression="Pers_cep" />
                                <asp:BoundField DataField="Pers_email" HeaderText="Pers_email" SortExpression="Pers_email" />
                                <asp:BoundField DataField="Pers_cinsiyeti" HeaderText="Pers_cinsiyeti" SortExpression="Pers_cinsiyeti" />
                                <asp:BoundField DataField="Bolum_id" HeaderText="Bolum_id" SortExpression="Bolum_id" />
                                <asp:BoundField DataField="Pers_unvan" HeaderText="Pers_unvan" SortExpression="Pers_unvan" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" DeleteCommand="DELETE FROM tbl_Personeller WHERE Pers_id=@Pers_id" InsertCommand="INSERT INTO tbl_Personeller(Pers_adi, Pers_soyadi, Pers_DTarihi, Per_Ise_Giris_Tar, Pers_adresi, Pers_kenti, Pers_ili, Pers_tel, Pers_cep, Pers_email, Pers_cinsiyeti, Pers_unvan, Bolum_id) VALUES (@Pers_adi, @Pers_soyadi, @Pers_DTarihi, @Per_Ise_Giris_Tar, @Pers_adresi, @Pers_kenti, @Pers_ili, @Pers_tel, @Pers_cep, @Pers_email, @Pers_cinsiyeti, @Pers_unvan, @Bolum_id)" SelectCommand="SELECT Pers_id, Pers_adi, Pers_soyadi, Pers_DTarihi, Per_Ise_Giris_Tar, Per_Is_Cıkıs_Tar, Pers_adresi, Pers_kenti, Pers_ili, Pers_tel, Pers_cep, Pers_email, Pers_cinsiyeti, Bolum_id, Pers_unvan FROM tbl_Personeller WHERE (Pers_id = @Pers_id)" UpdateCommand="UPDATE tbl_Personeller SET Pers_adi = @Pers_adi, Pers_soyadi = @Pers_soyadi, Pers_DTarihi = @Pers_DTarihi, Per_Ise_Giris_Tar = @Per_Ise_Giris_Tar, Per_Is_Cıkıs_Tar = @Per_Is_Cıkıs_Tar, Pers_adresi = @Pers_adresi, Pers_kenti = @Pers_kenti, Pers_ili = @Pers_ili, Pers_tel = @Pers_tel, Pers_cep = @Pers_cep, Pers_email = @Pers_email, Pers_cinsiyeti = @Pers_cinsiyeti, Pers_unvan = @Pers_unvan, Bolum_id = @Bolum_id WHERE (Pers_id = @Pers_id)">
                            <DeleteParameters>
                                <asp:Parameter Name="pers_id" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Pers_adi" />
                                <asp:Parameter Name="Pers_soyadi" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Per_Ise_Giris_Tar" />
                                <asp:Parameter Name="Pers_adresi" />
                                <asp:Parameter Name="Pers_kenti" />
                                <asp:Parameter Name="Pers_ili" />
                                <asp:Parameter Name="Pers_tel" />
                                <asp:Parameter Name="Pers_cep" />
                                <asp:Parameter Name="Pers_email" />
                                <asp:Parameter Name="Pers_cinsiyeti" />
                                <asp:Parameter Name="Pers_unvan" />
                                <asp:Parameter Name="Bolum_id" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Pers_adi" />
                                <asp:Parameter Name="Pers_soyadi" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Per_Ise_Giris_Tar" />
                                <asp:Parameter Name="Per_Is_Cıkıs_Tar" />
                                <asp:Parameter Name="Pers_adresi" />
                                <asp:Parameter Name="Pers_kenti" />
                                <asp:Parameter Name="Pers_ili" />
                                <asp:Parameter Name="Pers_tel" />
                                <asp:Parameter Name="Pers_cep" />
                                <asp:Parameter Name="Pers_email" />
                                <asp:Parameter Name="Pers_cinsiyeti" />
                                <asp:Parameter Name="Pers_unvan" />
                                <asp:Parameter Name="Bolum_id" />
                                <asp:Parameter Name="pers_id" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Button ID="btn_kapat0" runat="server" Height="38px" Text="Sayfayı Kapat" Width="203px" OnClientClick="window.close()" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
