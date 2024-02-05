<%@ Page Title="" Language="C#" MasterPageFile="~/ayakkabi.Master" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="AyakkabiMarkalari_2213201033_ahmetşamilsalman.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 400px;
    }
    .auto-style7 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td>Adı Soyadı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td>
            <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdSoyad" ErrorMessage="Ad Soyad boş bırakılamaz">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Kullanıcı Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td>
            <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtKullaniciAdi" ErrorMessage="Kullanıcı Adı boş bırakılamaz">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Şifre</td>
        <td>
            <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSifre" ErrorMessage="Şifre boş bırakılamaz">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Şifre Tekrarı</td>
        <td>
            <asp:TextBox ID="txtSifreTekrar" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSifreTekrar" ErrorMessage="Şifre Tekrarı boş bırakılamaz">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrar" ErrorMessage="Şifreler uyuşmuyor">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email boş bırakılamaz">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Geçerli bir formatta email adresi giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Email Tekrarı</td>
        <td>
            <asp:TextBox ID="txtEmailTekrar" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmailTekrar" ErrorMessage="Email Tekrarı boş bırakılamaz">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailTekrar" ErrorMessage="Emailler uyuşmuyor">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Yaşı</td>
        <td>
            <asp:TextBox ID="txtYas" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtYas" ErrorMessage="Yaş boş bırakılamaz">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtYas" ErrorMessage="1-100 arasında sayı giriniz" MaximumValue="100" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="btnKaydet" runat="server" Text="Kayıt Ol" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Label ID="lblMesaj" runat="server" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
