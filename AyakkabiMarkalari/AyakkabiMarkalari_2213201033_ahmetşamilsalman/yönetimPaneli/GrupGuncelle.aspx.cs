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
    public partial class WebForm3 : System.Web.UI.Page
    {
        Metotlar klas = new Metotlar();
        string GrupId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            GrupId = Request.QueryString["GrupId"];
            if (IsPostBack == false)
            {
                DataRow drGrup = klas.GetDataRow("SELECT * FROM KullaniciGrup WHERE GrupId=" + GrupId);
                txtGrupAdi.Text = drGrup["GrupAdi"].ToString();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = klas.baglan();
            OleDbCommand cmd = new OleDbCommand("UPDATE KullaniciGrup SET GrupAdi=@GrupAdi WHERE GrupId = " + GrupId, baglanti);
           
            cmd.Parameters.Add("GrupAdi", txtGrupAdi.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("GrupYonetimi.aspx");

        }
    }
}