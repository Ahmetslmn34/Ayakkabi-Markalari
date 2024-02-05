<%@ Page Title="" Language="C#" MasterPageFile="~/yönetimPaneli/yonetimPaneli.Master" AutoEventWireup="true" CodeBehind="GrupGuncelle.aspx.cs" Inherits="AyakkabiMarkalari_2213201033_ahmetşamilsalman.yönetimPaneli.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td>Grup Adı</td>
            <td>
                <asp:TextBox ID="txtGrupAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" OnClick="btnGuncelle_Click" Text="Guncelle" />
            </td>
        </tr>
    </table>
</asp:Content>
