<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BolumVeriGiris.aspx.cs" Inherits="IP229.BolumVeriGiris" %>

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
            text-align: center;
        }
        .auto-style3 {
            width: 202px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style6 {
            width: 202px;
            height: 34px;
        }
        .auto-style7 {
            height: 34px;
        }
        .auto-style8 {
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Bölüm Veri Girişi ve Güncelleme Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Bolum_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="301px" Width="736px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Bolum_id" HeaderText="Bolum_id" InsertVisible="False" ReadOnly="True" SortExpression="Bolum_id" />
                                <asp:BoundField DataField="Bolum_adi" HeaderText="Bolum_adi" SortExpression="Bolum_adi" />
                                <asp:BoundField DataField="Bolum_tel" HeaderText="Bolum_tel" SortExpression="Bolum_tel" />
                                <asp:BoundField DataField="Müdür" HeaderText="Müdür" ReadOnly="True" SortExpression="Müdür" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_fom_kapat" runat="server" Height="42px" OnClientClick="window.close()" Text="Formu Kapat" Width="245px" />
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btn_kayıtAc" runat="server" Height="42px" OnClick="btn_kayıtAc_Click" Text="Veri Girişini Göster" Width="283px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Bölüm Adı:" Visible="False"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Height="26px" Width="280px" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Bolüm Telefon Nosu:" Visible="False"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="279px" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Text="Kaydeden Müdür:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Pers_Isım" DataValueField="Pers_id" Height="39px" Visible="False" Width="265px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="btn_kaydet" runat="server" Height="41px" Text="KAYDET" Width="285px" OnClick="btn_kaydet_Click" Visible="False" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Sonuç Açıklaması:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" DeleteCommand="Delete From tbl_Bolumler Where Bolum_id = @Bolum_id" InsertCommand="INSERT INTO tbl_Bolumler(Bolum_adi, Bolum_tel, Mudur_id) VALUES (@Bolum_adi, @Bolum_tel, @Mudur_id)" SelectCommand="SELECT tbl_Bolumler.Bolum_id, tbl_Bolumler.Bolum_adi, tbl_Bolumler.Bolum_tel, tbl_Personeller.Pers_Isım AS Müdür FROM tbl_Bolumler INNER JOIN tbl_Personeller ON tbl_Bolumler.Mudur_id = tbl_Personeller.Pers_id" UpdateCommand="UPDATE tbl_Bolumler SET Bolum_tel = @Bolum_tel WHERE (Bolum_id = @Bolum_id)">
                            <DeleteParameters>
                                <asp:Parameter Name="Bolum_id" Type="Int32"/>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Bolum_adi" Type="String" />
                                <asp:Parameter Name="Bolum_tel" Type="String"/>
                                <asp:Parameter Name="Mudur_id" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Bolum_tel" Type="String" />
                                <asp:Parameter Name="Bolum_id" Type="Int32"/>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Pers_id], [Pers_Isım] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
