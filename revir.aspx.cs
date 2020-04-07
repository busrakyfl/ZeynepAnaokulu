using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ÖĞRENCİ : System.Web.UI.Page
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
        ogrenci blg = new ogrenci()
        {
           ogrenci_no=TextBox1.Text,
           ad_soyad=TextBox2.Text,
           cinsiyet=DropDownList1.Text,
           tc_no=TextBox3.Text,
           dogum_tarih=TextBox4.Text,
           veli_adi=TextBox5.Text,
           donem=TextBox6.Text,
           kan_grub=DropDownList2.Text,
           telefon=TextBox7.Text,
           şube=DropDownList3.Text,
           adres=TextBox8.Text,
           ogretmen=TextBox9.Text
        };
        ekle.ogrencis.InsertOnSubmit(blg);
        ekle.SubmitChanges();
        Label1.Text = "Öğrenci başarı ile kaydedilmiştir.";
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataClassesDataContext sil = new DataClassesDataContext();
        var blg = sil.ogrencis.First(k => k.ogrenci_no == TextBox10.Text);
        sil.ogrencis.DeleteOnSubmit(blg);
        sil.SubmitChanges();
        Label1.Text = "Öğrenci kaydı başarı ile silinmiştir.";
        TextBox10.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        DataClassesDataContext lis = new DataClassesDataContext();
        var bilgiler = from ogrenci in lis.ogrencis select ogrenci;
        foreach (var cocuk in bilgiler)
        {
            ListBox1.Items.Add(cocuk.id.ToString() + " " + cocuk.ogrenci_no.ToString() + " " + cocuk.ad_soyad.ToString() + " " + cocuk.cinsiyet.ToString() + " " + cocuk.tc_no.ToString() + " " + cocuk.dogum_tarih.ToString() + " " + cocuk.veli_adi.ToString() + " " + cocuk.donem.ToString() + " " + cocuk.kan_grub.ToString() + " " + cocuk.telefon.ToString() + " " + cocuk.şube.ToString() + " " + cocuk.adres.ToString() + " " + cocuk.ogretmen.ToString());
        }
    }
}