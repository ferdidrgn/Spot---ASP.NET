<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="PersonelVeriGirisWizard.aspx.cs" Inherits="IP229.PersonelVeriGirisWizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 253px;
        }
        .auto-style5 {
            width: 253px;
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
            text-align: justify;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style14 {
            color: #FF0000;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style21 {
            width: 69px;
            text-align: right;
        }
        .auto-style22 {
            text-align: right;
            width: 95px;
        }
        .auto-style27 {
            width: 62px;
            text-align: right;
        }
        </style>
    </head>
<body>
<form id="form1" runat="server">
<div>
<table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style10">
                    <strong>Personel&nbsp; Veri Giriş Sihirbazı</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSourceKent" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Kent_adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceIl" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Il_adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceKayıt" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_adi, Pers_soyadi, Pers_DTarihi, Per_Ise_Giris_Tar, Pers_unvan, Pers_cinsiyeti, Pers_adresi, Pers_kenti, Pers_ili, Pers_tel, Bolum_id, Pers_cep, Pers_email) VALUES (@Pers_adi, @Pers_soyadi, @Pers_DTarihi, @Per_Ise_Giris_Tar, @Pers_unvan, @Pers_cinsiyeti, @Pers_adresi, @Pers_kenti, @Pers_ili, @Pers_tel, @Bolum_id, @Pers_cep, @Pers_email)" SelectCommand="SELECT Pers_adi, Pers_soyadi, Pers_cinsiyeti, Pers_DTarihi, Per_Ise_Giris_Tar, Pers_unvan, Pers_adresi, Pers_kenti, Pers_ili, Pers_tel, Bolum_id, Pers_cep, Pers_email FROM tbl_Personeller">
                        <InsertParameters>
                            <asp:Parameter Name="Pers_adi" />
                            <asp:Parameter Name="Pers_soyadi" />
                            <asp:Parameter Name="Pers_DTarihi" />
                            <asp:Parameter Name="Per_Ise_Giris_Tar" />
                            <asp:Parameter Name="Pers_unvan" />
                            <asp:Parameter Name="Pers_cinsiyeti" />
                            <asp:Parameter Name="Pers_adresi" />
                            <asp:Parameter Name="Pers_kenti" />
                            <asp:Parameter Name="Pers_ili" />
                            <asp:Parameter Name="Pers_tel" />
                            <asp:Parameter Name="Bolum_id" />
                            <asp:Parameter Name="Pers_cep" />
                            <asp:Parameter Name="Pers_email" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceUnvan" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Unvan] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceBolum" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP_SQLLocal %>" SelectCommand="SELECT [Bolum_id], [Bolum_adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                </td>
                <td class="auto-style6">
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Groove" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" HeaderText="Personel Veri Giriş Formu" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" Width="577px" Height="317px" CssClass="auto-style11">
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                        <StartNavigationTemplate>
                            <asp:Button ID="StartNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Sonraki" />
                        </StartNavigationTemplate>
                        <StepNavigationTemplate>
                            <asp:Button ID="StepPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Önceki" />
                            <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Sonraki" />
                        </StepNavigationTemplate>
                        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="Kişisel Veriler">
                                <div class="auto-style15">
                                    <table class="auto-style3">
                                        <tr>
                                            <td class="auto-style22">Adı:</td>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TextBox1" runat="server" Width="192px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style22">Soyadı:</td>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TextBox2" runat="server" Width="192px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style22">Doğum Tarihi:</td>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TextBox3" runat="server" Width="191px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style22">Giriş Tarihi:</td>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TextBox8" runat="server" Width="191px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style22">Unvanı:</td>
                                            <td class="auto-style18">
                                                <asp:DropDownList ID="DropDownListUnvan" runat="server" DataSourceID="SqlDataSourceUnvan" DataTextField="Unvan" DataValueField="Unvan" Height="17px" Width="198px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style22">Cinsiyeti:</td>
                                            <td class="auto-style18">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderStyle="Inset" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="1">Erkek</asp:ListItem>
                                                    <asp:ListItem Value="2">Kadın</asp:ListItem>
                                                    <asp:ListItem Value="3">3. Hâl</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="İletişim Verileri">
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style21">İş Tel:</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox4" runat="server" Width="192px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">Cep Tel:</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style20" Width="192px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">E-Mail:</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox6" runat="server" Width="191px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">Bölümü:</td>
                                        <td class="auto-style18">
                                            <asp:DropDownList ID="DropDownListBolum" runat="server" DataSourceID="SqlDataSourceBolum" DataTextField="Bolum_adi" DataValueField="Bolum_id" Height="17px" Width="198px" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Adres Verileri">
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style27">Adresi:</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style24" Width="347px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style27">Kenti:</td>
                                        <td class="auto-style18">
                                            <asp:DropDownList ID="DropDownListKent" runat="server" DataSourceID="SqlDataSourceKent" DataTextField="Kent_adi" DataValueField="Kent_adi" Height="17px" Width="198px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style27">İli:</td>
                                        <td class="auto-style18">
                                            <asp:DropDownList ID="DropDownListIl" runat="server" DataSourceID="SqlDataSourceIl" DataTextField="Il_adi" DataValueField="Il_adi" Height="17px" Width="198px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Onay">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <br />
                                <br />
                                <br />
                                Tüm Veri Girişleri doğruysa Son butonuna basınız...
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Complete" Title="Son">
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
            <asp:Button ID="Button1" runat="server" Text="Sayfayı Kapat" Width="181px" OnClientClick="window.close()" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Sonuç Açıklaması:" CssClass="auto-style14" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Sonuç Açıklama:::" CssClass="auto-style14"></asp:Label>
                </td>
            </tr>
            </table>
</div>
</form>
</body>
</html>
