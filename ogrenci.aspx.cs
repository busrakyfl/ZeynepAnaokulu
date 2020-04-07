using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class REVİR : System.Web.UI.Page
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
    public void listele()
    {
        ListBox1.Items.Clear();
        DataClassesDataContext lis = new DataClassesDataContext();
        var bilgiler = from hasta in lis.hastas select hasta;
        foreach (var revir in bilgiler)
        {
            ListBox1.Items.Add(revir.id.ToString() + " " + revir.ogrenci_no.ToString() + " " + revir.g_tarih.ToString() + " " + revir.c_tarih.ToString() + " " + revir.rahatsizlik.ToString() + " " + revir.tedavi.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext ekle = new DataClassesDataContext();
        hasta blg = new hasta()
        {
            ogrenci_no=TextBox1.Text,
            g_tarih=TextBox2.Text,
            c_tarih=TextBox3.Text,
            rahatsizlik=TextBox4.Text,
            tedavi=TextBox5.Text
        };
        ekle.hastas.InsertOnSubmit(blg);
        ekle.SubmitChanges();
        Label1.Text = "Öğrenci kaydedildi.";



        listele();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext du = new DataClassesDataContext();
        var blg = du.hastas.First(k => k.ogrenci_no == TextBox1.Text);
        blg.ogrenci_no = TextBox1.Text;
         blg.g_tarih=TextBox2.Text;
             blg.c_tarih=TextBox3.Text;
             blg.rahatsizlik=TextBox4.Text;
             blg.tedavi = TextBox5.Text;
        du.SubmitChanges();

        listele();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        listele();
    }
}