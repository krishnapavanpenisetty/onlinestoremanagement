using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_demo
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Response.Write(Session["email"]);
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
                con.Open();

                String up = "update userinfo set password='" + TextBox1.Text + "' where email='" + Session["email"] + "'";
                SqlCommand cmd = new SqlCommand(up, con);
                cmd.ExecuteNonQuery();
                Response.Write("updated");
                Response.Redirect("login.aspx");
                cmd.Dispose();
                con.Close();
                Session["email"] = "";
                Session.Clear();
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }

        }
    }
}