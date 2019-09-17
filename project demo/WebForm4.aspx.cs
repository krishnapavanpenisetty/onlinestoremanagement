using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace project_demo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

       public String getdata()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String ch = "select email from userinfo";
            SqlCommand cmd = new SqlCommand(ch, con);
            String temp = "";
            SqlDataReader re = cmd.ExecuteReader();
            while (re.Read())
            {
                // Label1.Text = re["email"].ToString();
                String k = re["email"].ToString();
                temp += "<tr><td>" + k + "</td></tr>";
            }
            return temp;
        }
    }
}