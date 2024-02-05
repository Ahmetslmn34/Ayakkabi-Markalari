<%@ Page Title="" Language="C#" MasterPageFile="~/ayakkabi.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="AyakkabiMarkalari_2213201033_ahmetşamilsalman.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 400px;
    }
    .auto-style8 {
        height: 22px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td>Konu</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Adidas</asp:ListItem>
                <asp:ListItem>Puma</asp:ListItem>
                <asp:ListItem>Nike</asp:ListItem>
                <asp:ListItem>Under Armour</asp:ListItem>
                <asp:ListItem>Balenciaga</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>Cinsiyet</td>
        <td>
            <asp:RadioButton ID="rbKadin" runat="server" GroupName="cinsiyet" Text="Kadın" />
            <asp:RadioButton ID="rbErkek" runat="server" GroupName="cinsiyet" Text="Erkek" />
        </td>
    </tr>
    <tr>
        <td>Ad Soyad</td>
        <td>
            <asp:TextBox ID="txtAdSoyad" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Telefon</td>
        <td>
            <asp:TextBox ID="txtTelefon" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mesaj</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtMesaj" runat="server" Height="250px" Width="249px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnGonder" runat="server" Text="Gönder" />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
