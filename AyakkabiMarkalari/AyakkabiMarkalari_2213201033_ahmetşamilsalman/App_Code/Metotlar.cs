using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

/// <summary>
/// Summary description for Metotlar
/// </summary>
public class Metotlar
{
	public Metotlar()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public OleDbConnection baglan()
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0; Data Source=" + HttpContext.Current.Server.MapPath("../App_Data/adminPaneli.Accdb;"));
        baglanti.Open();
        return (baglanti);
    }
    public int cmd(string sqlcumle)
        {
            OleDbConnection baglanti = this.baglan();
            OleDbCommand cmd = new OleDbCommand(sqlcumle, baglanti);
            int sonuc = 0;
            try
            {
                sonuc = cmd.ExecuteNonQuery();
            }
            catch (OleDbException ex)
            {
                throw new Exception (ex.Message + "(" + sqlcumle + ")" );
            }
            cmd.Dispose();
            baglanti.Close();
            baglanti.Dispose();
        return (sonuc);
        }
    public DataTable GetDataTable(string sqlcumle)
    {
        OleDbConnection baglanti = this.baglan();
        OleDbDataAdapter dap = new OleDbDataAdapter(sqlcumle, baglanti);
        DataTable dt = new DataTable();
        try
        {
            dap.Fill(dt);
        }
        catch (OleDbException ex)
        {
            throw new Exception(ex.Message + "(" + sqlcumle + ")");
        }
        dap.Dispose();
        baglanti.Close();
        baglanti.Dispose();
        return dt;
    }

    public DataRow GetDataRow(string sqlcumle)
    {
        DataTable dt = GetDataTable(sqlcumle);
        if (dt.Rows.Count == 0)
            return null;
        else
            return dt.Rows [0];
    }

    public string GetDataCell(string sqlcumle)
    {
        DataTable dt = GetDataTable(sqlcumle);
        if (dt.Rows.Count == 0)
            return null;
        else
            return dt.Rows[0][0].ToString ();
    }
}
