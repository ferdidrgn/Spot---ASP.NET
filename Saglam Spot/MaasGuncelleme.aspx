<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaasGuncelleme.aspx.cs" Inherits="IP229.MaasGuncelleme" %>

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
            width: 442px;
        }
        .auto-style3 {
            text-align: justify;
            font-size: large;
        }
        .auto-style4 {
            margin-right: 0px;
        }
        .auto-style5 {
            margin-left: 1px;
        }
        .auto-style6 {
            height: 184px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="3"><strong>Personel Maaşlarını Güncelleme veya Silme Formu</strong></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Personel Seçiniz:</td>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style5" DataSourceID="SqlDataSource1" DataTextField="Pers_Isım" DataValueField="Pers_id" Height="16px" Width="190px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="Maas_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="142px" Width="692px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Maas_id" HeaderText="Maas_id" InsertVisible="False" ReadOnly="True" SortExpression="Maas_id" />
                            <asp:BoundField DataField="Pers_id" HeaderText="Pers_id" SortExpression="Pers_id" />
                            <asp:BoundField DataField="Maas_Odeme_Tarihi" HeaderText="Maas_Odeme_Tarihi" SortExpression="Maas_Odeme_Tarihi" />
                            <asp:BoundField DataField="Maas_tutari" HeaderText="Maas_tutari" SortExpression="Maas_tutari" />
                            <asp:BoundField DataField="Maas_komisyon" HeaderText="Maas_komisyon" SortExpression="Maas_komisyon" />
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
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT DISTINCT Pers_id, Pers_Isım FROM tbl_Personeller ORDER BY Pers_Isım"></asp:SqlDataSource>
                </td>
                <td>
                        <asp:Button ID="btn_fom_kapat" runat="server" Height="37px" OnClientClick="window.close()" Text="Formu Kapat" Width="251px" />
                    </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" DeleteCommand="DELETE FROM tbl_PersonelMaaslari WHERE (Maas_id = @Maas_id)" InsertCommand="INSERT INTO tbl_PersonelMaaslari( @Pers_id, @Maas_Odeme_Tarihi,@ Maas_tutari, @Maas_komisyon) Values (Pers_id, Maas_Odeme_Tarihi, Maas_tutari, Maas_komisyon)" SelectCommand="SELECT Maas_id, Pers_id, Maas_Odeme_Tarihi, Maas_tutari, Maas_komisyon FROM tbl_PersonelMaaslari WHERE (Pers_id = @Pers_id)" UpdateCommand="UPDATE tbl_PersonelMaaslari SET Maas_Odeme_Tarihi = @Maas_Odeme_Tarihi, Maas_tutari = @Maas_tutari, Maas_komisyon = @Maas_komisyon WHERE (Maas_id = @Maas_id)">
                        <DeleteParameters>
                            <asp:Parameter Name="Maas_id"/>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Pers_id" Type="Int32" />
                            <asp:Parameter Name="Maas_Odeme_Tarihi" Type="DateTime"/>
                            <asp:Parameter />
                            <asp:Parameter Name="Maas_komisyon" Type="Decimal"/>
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Pers_id" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Maas_Odeme_Tarihi" Type="DateTime" />
                            <asp:Parameter Name="Maas_tutari" Type="Decimal" />
                            <asp:Parameter Name="Maas_komisyon" Type="Decimal"/>
                            <asp:Parameter Name="Maas_id" Type="Int32"/>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    </td>
            </tr>
            </table>
    </form>
</body>
</html>
