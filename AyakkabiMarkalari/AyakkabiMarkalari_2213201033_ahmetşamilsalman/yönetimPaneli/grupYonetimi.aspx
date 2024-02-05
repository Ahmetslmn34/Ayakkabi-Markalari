<%@ Page Title="" Language="C#" MasterPageFile="~/yönetimPaneli/yonetimPaneli.Master" AutoEventWireup="true" CodeBehind="grupYonetimi.aspx.cs" Inherits="AyakkabiMarkalari_2213201033_ahmetşamilsalman.yönetimPaneli.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            width: 600px;
        }
        .auto-style4 {
            width: 41px;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td width="30%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Grup Adı</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtGrupAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnEkle" runat="server" OnClick="btnEkle_Click" Text="Ekle" />
            </td>
        </tr>
    </table>

    <table class="auto-style3">
        <asp:Repeater ID="rpGruplar" runat="server">
            <ItemTemplate> 
        <tr>
            <td width="60%"><%#Eval("GrupAdi")%></td>
            <td width="20%">Düzenle
                
                <a href="GrupGuncelle.aspx?GrupId=<%#Eval("GrupID")%>">
                <img border="0" alt="" class="auto-style4" src="resimler/iconlar/kul_duzenle.png" />
                    </a>

            </td>
            <td width="20%">Sil
                
                <a href="grupYonetimi.aspx?GrupId=<%#Eval("GrupId")%>&islem=sil">
                <img border="0" alt="" class="auto-style4" src="resimler/iconlar/kul_sil.png" />
                </a>

            </td>
        </tr>
                </ItemTemplate>  
        </asp:Repeater>
    </table>

</asp:Content>
