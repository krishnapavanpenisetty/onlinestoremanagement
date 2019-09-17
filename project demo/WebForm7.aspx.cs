using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_demo
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }
        public String u(String k)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String q="select image from addimg where id='"+k+"'";
            SqlCommand cmd = new SqlCommand(q,con);
            SqlDataReader re = cmd.ExecuteReader();
            re.Read();
            String h = "";
            byte[] img = (byte[])re["image"];
            h= "data:image/jpg;base64," + Convert.ToBase64String(img);
           // int i = 2;
            return h;

        }
       
    }
}