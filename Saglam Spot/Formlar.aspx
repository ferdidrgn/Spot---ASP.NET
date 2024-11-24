<%@ Page Title="" Language="C#" MasterPageFile="~/Site_PMTP.Master" AutoEventWireup="true" CodeFile="Formlar.aspx.cs" Inherits="IP229.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 88px">&nbsp;&nbsp;</td>
        <td colspan="2" style="font-size: x-large"><strong>PMTP FORMLAR</strong></td>
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
            <asp:Button ID="Button1" runat="server" Text="Personel Veri Giriş Formu" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisi.aspx" />
        </td>
        <td style="width: 400px" class="text-center">
            <asp:Button ID="Button2" runat="server" Text="Personel Maaş Veri Giriş Formu" Width="469px" PostBackUrl="~/MaasVeriGirisi.aspx" OnClientClick="target='_blank';" />
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
            <asp:Button ID="Button5" runat="server" Text="Personel Veri Güncelleme Formu" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGuncellemeFormu.aspx" />
        </td>
        <td style="width: 400px" class="text-center">
            <asp:Button ID="Button4" runat="server" Text="Personel Maaş Veri Güncelleme Formu" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/MaasGuncelleme.aspx" />
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
        <td style="width: 400px" class="text-center">&nbsp;</td>
        <td style="width: 400px" class="text-center">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td style="width: 400px">
            <asp:Button ID="Button3" runat="server" Text="Personel  Wizard Formu" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisWizard.aspx" />
        </td>
        <td style="width: 400px">
            <asp:Button ID="Button6" runat="server" Text="Personel Bölüm Giriş Formu" Width="470px" OnClientClick="target='_blank';" PostBackUrl="~/BolumVeriGiris.aspx" />
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
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
</table>
</asp:Content>
