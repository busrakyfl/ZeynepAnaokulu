using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class anasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection bag = new SqlConnection("Data Source=BUSRAK\\SQLEXPRESS;Initial Catalog=anaokul;Integrated Security=True;Pooling=False");
        SqlCommand komut = new SqlCommand("Select ");
    }
}