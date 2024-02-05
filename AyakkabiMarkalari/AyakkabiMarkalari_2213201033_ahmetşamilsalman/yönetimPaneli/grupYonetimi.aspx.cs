using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace AyakkabiMarkalari_2213201033_ahmetşamilsalman.yönetimPaneli
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Metotlar klas = new Metotlar();
        string GrupId = ""; string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            GrupId = Request.QueryString["GrupId"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                klas.cmd("DELETE FROM KullaniciGrup WHERE GrupId=" + GrupId);
            }
            DataTable dtGruplar = klas.GetDataTable("SELECT * FROM KullaniciGrup");
            rpGruplar.DataSource = dtGruplar;
            rpGruplar.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = klas.baglan();
            OleDbCommand cmd = new OleDbCommand("INSERT INTO kullaniciGrup (grupAdi) Values (@grupAdi)", baglanti);
            cmd.Parameters.Add("grupAdi", txtGrupAdi.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("GrupYonetimi.aspx");
        }
    }
}