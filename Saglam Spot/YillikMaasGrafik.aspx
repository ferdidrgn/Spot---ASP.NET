<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YillikMaasGrafik.aspx.cs" Inherits="IP229.YillikMaasGrafik" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            width: 1304px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Peronel Maaşlarının Yıllık Grafiği</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Chart ID="Chart1" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSource1" Height="362px" style="font-size: medium" Width="474px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="İsim" YValueMembers="Toplam">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="Sayfayı Kapat" Width="185px" OnClientClick="window.close()" Height="63px" />
                </td>
            </tr>
        </table>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT tbl_Personeller.Pers_Isım AS İsim, SUM(tbl_PersonelMaaslari.Maas_Toplam) AS Toplam FROM tbl_Personeller INNER JOIN tbl_PersonelMaaslari ON tbl_Personeller.Pers_id = tbl_PersonelMaaslari.Pers_id GROUP BY tbl_Personeller.Pers_Isım"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
