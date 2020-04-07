using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LOGİN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void tn_Click(object sender, EventArgs e)
    {
        SqlConnection bag = new SqlConnection("Data Source=BUSRAK\\SQLEXPRESS;Initial Catalog=anaokul;Integrated Security=True;Pooling=False");
        bag.Open();
        string yAd = txtAd.Text;
        string yParola = txtParola.Text;
        SqlCommand komut = new SqlCommand("Select * from yonet where kullanici_adi='" + yAd + "' and parola='" + yParola + "'", bag);
        SqlDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
         
            Session.Add("kullanici", yAd);
            Session.Add("parola", yParola);
            lbl.Text = "GİRİŞ BAŞARILI...";
           
        }
        else
        {
            Session.Abandon();
             
            lbl.Text = "GİRİŞ BAŞARISIZ...";
        }
        bag.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        lbl.Text = "ÇIKIŞ YAPILMIŞTIR.";
        txtAd.Text = "";
        txtParola.Text = "";
    }
}