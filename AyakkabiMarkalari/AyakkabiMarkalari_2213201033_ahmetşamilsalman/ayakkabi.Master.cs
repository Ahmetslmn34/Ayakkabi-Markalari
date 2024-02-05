using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AyakkabiMarkalari_2213201033_ahmetşamilsalman
{
    public partial class ayakkabi : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciAdi"] == null)
            {
                lblKullaniciAdi.Text = " Ziyaretçi";
                btnOturumuKapat.Visible = false;
                lblKul.Visible = true;
                lblSifre.Visible = true;
                txtKullaniciAdi.Visible = true;
                txtSifre.Visible = true;
                btnGiris.Visible = true;
            }
            else
            {
                lblKullaniciAdi.Text = Session["kullaniciAdi"].ToString();
                lblKul.Visible = false;
                lblSifre.Visible = false;
                txtKullaniciAdi.Visible = false;
                txtSifre.Visible = false;
                btnGiris.Visible = false;
                btnOturumuKapat.Visible = true;
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text=="Ahmet" && txtSifre.Text=="1234")
            {
                Session["kullaniciAdi"] = txtKullaniciAdi.Text;
            }
            else
            {
                lblMesaj.Text = "Hatalı Kullanıcı ADı ya da Şifre";
            }
        }

        protected void btnOturumuKapat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("default.aspx");
        }
    }
}