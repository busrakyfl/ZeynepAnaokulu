using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_KÜTÜPHANE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null && Session["parola"] != null)
        {

            Response.Write("Hoşgeldin." + " " + Session["kullanici"]);
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext ekle = new DataClassesDataContext();
        kitap blg = new kitap()
        {
          k_adi=TextBox1.Text,
          yazar=TextBox2.Text,
          k_turu=TextBox3.Text,
          yayinevi=TextBox4.Text
        };
        ekle.kitaps.InsertOnSubmit(blg);
        ekle.SubmitChanges();
        Label1.Text = "Kitap başarı ile kaydedilmiştir.";
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext sil = new DataClassesDataContext();
        var blg = sil.kitaps.First(k => k.k_adi == TextBox5.Text);
        sil.kitaps.DeleteOnSubmit(blg);
        sil.SubmitChanges();
        Label1.Text = "Kitap başarı ile silinmiştir.";
    }
}