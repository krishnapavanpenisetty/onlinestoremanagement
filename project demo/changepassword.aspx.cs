using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace project_demo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String ch = "select password from userinfo where email='"+ Session["email"] + "'";
            SqlCommand cmd = new SqlCommand(ch,con);
            String k = cmd.ExecuteScalar().ToString();
            if (k == pwd.Text)
            {

                String up="update userinfo set password='"+newpwd.Text+ "' where email='" + Session["email"] + "'";
                SqlCommand ups = new SqlCommand(up, con);
                ups.ExecuteNonQuery();
                Response.Write("updated");

                Label1.Text = "password updated";

            }
            else
            {
                Response.Write("incorrect password");
                Label1.Text = "incorrect password";

            }

        }

       
    }
}