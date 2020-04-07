using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;

public partial class HABER : System.Web.UI.Page
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

    }
    string dosyaYolu = string.Empty;
    Bitmap bmp = null;
    string uzanti = "";
    string resimadi = "";

    public Bitmap ResimBoyutlandir(Bitmap resim, int boyut)
    {

        Bitmap sresim = resim;

        using (Bitmap OrjinalResim = resim)
        {
            double yukseklik = OrjinalResim.Height;
            double genislik = OrjinalResim.Width;
            double oran = 0;

            if (genislik >= boyut)
            {
                oran = genislik / yukseklik;
                genislik = boyut;
                yukseklik = genislik / oran;

                Size ydeger = new Size(Convert.ToInt32(genislik), Convert.ToInt32(yukseklik));

                Bitmap yresim = new Bitmap(OrjinalResim, ydeger);

                sresim = yresim;
            }
        }

        return sresim;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        HttpFileCollection files = Request.Files;
        for (int i = 0; i < files.Count; i++)
        {
            HttpPostedFile file = files[i];
            if (file.ContentLength > 0)
            {
               
                string fileName = Path.GetFileName(file.FileName);

          
                uzanti = Path.GetExtension(file.FileName);

            
                resimadi =  DateTime.Now.Millisecond + uzanti;

            
                file.SaveAs(Server.MapPath("~/Resimler/haberler/" + resimadi));
               
                SqlConnection bag = new SqlConnection("Data Source=BUSRAK\\SQLEXPRESS;Initial Catalog=anaokul;Integrated Security=True;Pooling=False");
                bag.Open();
                SqlCommand komut = new SqlCommand("Insert Into haber_resim(resimyolu,h_yazi)" + "Values('" + "~/Resimler/150/" + resimadi + "','"+TextBox4.Text+"')", bag);
               
                komut.ExecuteNonQuery();
                bag.Close();
                bag.Dispose();
                Label1.Text += "Dosya : <b>" + fileName + "</b> başarıyla yüklendi !<br />";



              
                Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/haberler/" + resimadi));
             
                resim = this.ResimBoyutlandir(resim, 150);
              
                resim.Save(Server.MapPath("~/Resimler/150/" + resimadi));
             
                
            }
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("haber.aspx"); 
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("haber.aspx"); 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpFileCollection files = Request.Files;
        for (int i = 0; i < files.Count; i++)
        {
            HttpPostedFile file = files[i];
            if (file.ContentLength > 0)
            {

                string fileName = Path.GetFileName(file.FileName);


                uzanti = Path.GetExtension(file.FileName);


                resimadi = DateTime.Now.Millisecond + uzanti;


                file.SaveAs(Server.MapPath("~/Resimler/duyurular/" + resimadi));

                SqlConnection bag = new SqlConnection("Data Source=BUSRAK\\SQLEXPRESS;Initial Catalog=anaokul;Integrated Security=True;Pooling=False");
                bag.Open();
                SqlCommand komut = new SqlCommand("Insert Into duyuru_resim(resimyolu,d_yazi)" + "Values('" + "~/Resimler/150/" + resimadi + "','"+TextBox5.Text+"')", bag);

                komut.ExecuteNonQuery();
                bag.Close();
                bag.Dispose();
                Label2.Text += "Dosya : <b>" + fileName + "</b> başarıyla yüklendi !<br />";




                Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/duyurular/" + resimadi));

                resim = this.ResimBoyutlandir(resim, 150);

                resim.Save(Server.MapPath("~/Resimler/150/" + resimadi));


            }
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("haber.aspx"); 
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        HttpFileCollection files = Request.Files;
        for (int i = 0; i < files.Count; i++)
        {
            HttpPostedFile file = files[i];
            if (file.ContentLength > 0)
            {

                string fileName = Path.GetFileName(file.FileName);


                uzanti = Path.GetExtension(file.FileName);


                resimadi = DateTime.Now.Millisecond + uzanti;


                file.SaveAs(Server.MapPath("~/Resimler/etkinlikler/" + resimadi));

                SqlConnection bag = new SqlConnection("Data Source=BUSRAK\\SQLEXPRESS;Initial Catalog=anaokul;Integrated Security=True;Pooling=False");
                bag.Open();
                SqlCommand komut = new SqlCommand("Insert Into etkinlik_resim(resimyolu,r_yazi)" + "Values('" + "~/Resimler/150/" + resimadi + "','"+TextBox6.Text+"')", bag);

                komut.ExecuteNonQuery();
                bag.Close();
                bag.Dispose();
                Label3.Text += "Dosya : <b>" + fileName + "</b> başarıyla yüklendi !<br />";




                Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/etkinlikler/" + resimadi));

                resim = this.ResimBoyutlandir(resim, 150);

                resim.Save(Server.MapPath("~/Resimler/150/" + resimadi));


            }
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        DataClassesDataContext sil = new DataClassesDataContext();
        var blg = sil.haber_resims.First(k => k.id == Convert.ToInt32(TextBox7.Text));
        sil.haber_resims.DeleteOnSubmit(blg);
        sil.SubmitChanges();
        Label1.Text = "Kayıt silinmiştir.";
        
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        DataClassesDataContext sil = new DataClassesDataContext();
        var blg = sil.duyuru_resims.First(k=>k.id==Convert.ToInt32(TextBox8.Text));
        sil.duyuru_resims.DeleteOnSubmit(blg);
        sil.SubmitChanges();
        Label2.Text = "Kayıt silinmiştir.";
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        DataClassesDataContext sil = new DataClassesDataContext();
        var blg = sil.etkinlik_resims.First(k=>k.id==Convert.ToInt32(TextBox9.Text));
        sil.etkinlik_resims.DeleteOnSubmit(blg);
        sil.SubmitChanges();
        Label3.Text = "Kayıt silinmiştir.";
    }
}