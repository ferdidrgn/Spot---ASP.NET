<%@ Page Title="" Language="C#" MasterPageFile="~/Site_PMTP.Master" AutoEventWireup="true" CodeFile="Ürünler.aspx.cs" Inherits="Saglam_Spot.Ürünler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 88px">&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Saglam_SpotConnectionString1 %>" DeleteCommand="DELETE FROM [Urun] WHERE [urun_id] = @urun_id" InsertCommand="INSERT INTO [Urun] ([urun_adi], [kategori_id], [cesit], [en], [boy], [derinlik], [urun_fiyati], [ozellik], [gelis_tarihi]) VALUES (@urun_adi, @kategori_id, @cesit, @en, @boy, @derinlik, @urun_fiyati, @ozellik, @gelis_tarihi)" SelectCommand="SELECT urun_adi AS [Ürün Adı], kategori_id AS Kategorisi, cesit AS Çeşidi, en AS Eni, boy AS Boyu, derinlik AS Derinliği, urun_fiyati AS Fiyatı, ozellik AS Özelliği, gelis_tarihi AS [Geliş Tarihi], foto AS Fotoğrafları FROM Urun" UpdateCommand="UPDATE [Urun] SET [urun_adi] = @urun_adi, [kategori_id] = @kategori_id, [cesit] = @cesit, [en] = @en, [boy] = @boy, [derinlik] = @derinlik, [urun_fiyati] = @urun_fiyati, [ozellik] = @ozellik, [gelis_tarihi] = @gelis_tarihi WHERE [urun_id] = @urun_id">
            <DeleteParameters>
                <asp:Parameter Name="urun_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="urun_adi" Type="String" />
                <asp:Parameter Name="kategori_id" Type="Int32" />
                <asp:Parameter Name="cesit" Type="String" />
                <asp:Parameter Name="en" Type="String" />
                <asp:Parameter Name="boy" Type="String" />
                <asp:Parameter Name="derinlik" Type="String" />
                <asp:Parameter Name="urun_fiyati" Type="Decimal" />
                <asp:Parameter Name="ozellik" Type="String" />
                <asp:Parameter Name="gelis_tarihi" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="urun_adi" Type="String" />
                <asp:Parameter Name="kategori_id" Type="Int32" />
                <asp:Parameter Name="cesit" Type="String" />
                <asp:Parameter Name="en" Type="String" />
                <asp:Parameter Name="boy" Type="String" />
                <asp:Parameter Name="derinlik" Type="String" />
                <asp:Parameter Name="urun_fiyati" Type="Decimal" />
                <asp:Parameter Name="ozellik" Type="String" />
                <asp:Parameter Name="gelis_tarihi" Type="DateTime" />
                <asp:Parameter Name="urun_id" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td colspan="2" style="font-size: x-large"><strong>ÜRÜNLERİMİZ...</strong></td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="text-right">
            &nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9">
            Aramak İstediğiniz Ürünü Yazabilirsiniz:
            <asp:TextBox runat="server" Width="309px"></asp:TextBox>
            </td>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style11"></td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok." Width="1097px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Ürün Adı" HeaderText="Ürün Adı" SortExpression="Ürün Adı" />
                    <asp:BoundField DataField="Kategorisi" HeaderText="Kategorisi" SortExpression="Kategorisi" />
                    <asp:BoundField DataField="Çeşidi" HeaderText="Çeşidi" SortExpression="Çeşidi" />
                    <asp:BoundField DataField="Eni" HeaderText="Eni" SortExpression="Eni" />
                    <asp:BoundField DataField="Boyu" HeaderText="Boyu" SortExpression="Boyu" />
                    <asp:BoundField DataField="Derinliği" HeaderText="Derinliği" SortExpression="Derinliği" />
                    <asp:BoundField DataField="Fiyatı" HeaderText="Fiyatı" SortExpression="Fiyatı" />
                    <asp:BoundField DataField="Özelliği" HeaderText="Özelliği" SortExpression="Özelliği" />
                    <asp:BoundField DataField="Geliş Tarihi" HeaderText="Geliş Tarihi" SortExpression="Geliş Tarihi" />
                </Columns>
            </asp:GridView>
        </td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td style="width: 400px" class="text-center">
            &nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style6"></td>
        <td class="auto-style2"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td style="width: 400px" class="text-center">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td style="width: 400px">
            &nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 88px">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td style="width: 400px">&nbsp;</td>
        <td style="width: 136px">&nbsp;</td>
    </tr>
</table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 88px;
            height: 18px;
        }
        .auto-style2 {
            width: 400px;
            height: 18px;
        }
        .auto-style3 {
            width: 136px;
            height: 18px;
        }
        .auto-style4 {
            text-align: right;
            width: 437px;
        }
        .auto-style5 {
            text-align: center;
            width: 437px;
        }
        .auto-style6 {
            width: 437px;
            height: 18px;
        }
        .auto-style7 {
            width: 437px;
        }
        .auto-style8 {
            width: 88px;
            height: 43px;
        }
        .auto-style9 {
            width: 437px;
            height: 43px;
        }
        .auto-style10 {
            text-align: center;
            width: 400px;
            height: 43px;
        }
        .auto-style11 {
            width: 136px;
            height: 43px;
        }
    </style>
</asp:Content>


