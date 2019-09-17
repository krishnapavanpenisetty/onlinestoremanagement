using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project_demo
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["email"] = TextBox1.Text;
            Response.Redirect("WebForm8.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String s = "insert into test(name,email)values(@name,@email)";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);

            /* SqlDataAdapter da = new SqlDataAdapter();
             da.InsertCommand = new SqlCommand(s, con);
             da.InsertCommand.ExecuteNonQuery();*/
            cmd.ExecuteNonQuery();
            
            Response.Write("inserted");
            cmd.Dispose();
            con.Close();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm9.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection co = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            co.Open();
            String del="delete test where name='"+TextBox2.Text+"'";
            SqlCommand cmd = new SqlCommand(del,co);
            cmd.ExecuteNonQuery();
            Response.Write("delete");

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }
    }
}