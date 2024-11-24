<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonelletisimRaporu.aspx.cs" Inherits="IP229.PersonelletisimRaporu" %>

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
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <tr style ="background-color:lavender;">
                                <td>ID</td>
                                <td>İsim</td>
                                <td>E-Mail</td>
                                <td>Cep</td>
                                <td>Tel</td>
                                <td>Bölüm</td>
                            </tr><tr></tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr style ="background-color:red;">
                                <td><%# Eval("Pers_id") %></td>
                                <td><%# Eval("Pers_Isım") %></td>
                                <td><%# Eval("Pers_email") %></td>
                                <td><%# Eval("Pers_cep") %></td>
                                <td><%# Eval("Pers_tel") %></td>
                                <td><%# Eval("Bolum_adi") %></td>
                            </tr>
                        </ItemTemplate>
                            <AlternatingItemTemplate>
                                <tr style ="background-color:yellow;">
                                <td><%# Eval("Pers_id") %></td>
                                <td><%# Eval("Pers_Isım") %></td>
                                <td><%# Eval("Pers_email") %></td>
                                <td><%# Eval("Pers_cep") %></td>
                                <td><%# Eval("Pers_tel") %></td>
                                <td><%# Eval("Bolum_adi") %></td>
                            </tr>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Height="41px" OnClientClick="window.close()" Text="Sayfayı Kapat" Width="180px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT tbl_Personeller.Pers_id, tbl_Personeller.Pers_Isım, tbl_Personeller.Pers_email, tbl_Personeller.Pers_cep, tbl_Personeller.Pers_tel, tbl_Bolumler.Bolum_adi FROM tbl_Personeller INNER JOIN tbl_Bolumler ON tbl_Personeller.Bolum_id = tbl_Bolumler.Bolum_id"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
