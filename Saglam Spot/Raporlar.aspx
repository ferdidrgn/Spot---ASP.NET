<%@ Page Title="" Language="C#" MasterPageFile="~/Site_PMTP.Master" AutoEventWireup="true" CodeBehind="Raporlar.aspx.cs" Inherits="IP229.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 88px">&nbsp;&nbsp;</td>
        <td colspan="2" style="font-size: x-large"><strong>PMTP RAPORLAR</strong></td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="text-right" style="width: 400px">
            &nbsp;</td>
        <td style="width: 400px" class="text-left">
            &nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="text-center" style="width: 400px">
            <asp:Button ID="Button1" runat="server" Text="Bölüme Göre Personel Listesi" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/BolumeGorePersonelListesi.aspx" />
        </td>
        <td style="width: 400px" class="text-center">
            <asp:Button ID="Button2" runat="server" Text="Personele Göre Maaş Listesi" Width="469px" PostBackUrl="~/PersoneleGoreMaasListesi.aspx" OnClientClick="target='_blank';"  />
        </td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td style="width: 400px" class="text-center">
            &nbsp;</td>
        <td style="width: 400px" class="text-center">
            &nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td style="width: 400px">
            <asp:Button ID="Button3" runat="server" Text="Personele Göre Yıllık Maaş Grafiği" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/YillikMaasGrafik.aspx" />
        </td>
        <td style="width: 400px">
            <asp:Button ID="Button4" runat="server" Text="Personel İletişim Raporu" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelletisimRaporu.aspx" />
        </td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td style="width: 400px" class="text-center">&nbsp;</td>
        <td style="width: 400px" class="text-center">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px; height: 18px;"></td>
        <td style="width: 400px; height: 18px;">
            </td>
        <td style="width: 400px; height: 18px;">
            </td>
        <td style="width: 136px; height: 18px;"></td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
</table>
</asp:Content>
