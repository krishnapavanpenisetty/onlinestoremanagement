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
    public partial class addproducttype : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            String insert = "insert into producttype(id,producttype)values('" + TextBox2.Text + "','" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            String insert = "update producttype set producttype='" + TextBox1.Text + "' where id='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            String insert = "delete producttype where id='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            String insert = "select * from producttype";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cmd.Dispose();
            con.Close();

        }

    }
}