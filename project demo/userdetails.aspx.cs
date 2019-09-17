using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace project_demo
{
    public partial class userdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected String getimage(String k)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String q = "select image from userinfo where id='" + k + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader re = cmd.ExecuteReader();
            re.Read();
            // int s = Convert.ToInt32(re["stock"].ToString());
            String h = "";
            byte[] img = (byte[])re["image"];
            h = "data:image/jpg;base64," + Convert.ToBase64String(img);
            re.Close();
            cmd.Dispose();
            con.Close();
            return h;


        }

       

       

        protected void getupdate(object sender, GridViewUpdateEventArgs e)
        {
            //TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            String id = GridView1.Rows[e.RowIndex].Cells[0].Text;
            // String k = cell.Text;
            Response.Write(id);
            // Stream fs=GridView1.Rows[e.RowIndex].Cells[7].Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            if (FileUpload2.HasFile)
            {

                Stream fs = FileUpload2.PostedFile.InputStream;
                BinaryReader re = new BinaryReader(fs);
                byte[] img = re.ReadBytes((Int32)fs.Length);
                String insert = "update userinfo set name=@name,contact=@type,address=@company,city=@des,pincode=@price,image=@img where id='" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@type", TextBox5.Text);
                cmd.Parameters.AddWithValue("@company", TextBox6.Text);
                cmd.Parameters.AddWithValue("@des", TextBox7.Text);
                cmd.Parameters.AddWithValue("@price", TextBox8.Text);
                //cmd.Parameters.AddWithValue("@stock", TextBox8.Text);

                cmd.Parameters.AddWithValue("@img", img);
                cmd.ExecuteNonQuery();
                cmd.Dispose();


            }
            else
            {
                String insert = " update userinfo set name = @name,contact = @type,address = @company,city = @des,pincode = @price where id = '" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@type", TextBox5.Text);
                cmd.Parameters.AddWithValue("@company", TextBox6.Text);
                cmd.Parameters.AddWithValue("@des", TextBox7.Text);
                cmd.Parameters.AddWithValue("@price", TextBox8.Text);

                //cmd.Parameters.AddWithValue("@img", img);
                cmd.ExecuteNonQuery();
                cmd.Dispose();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userdetails.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            GridViewRow g = GridView1.SelectedRow;
            Label1.Text = g.Cells[0].Text;
            TextBox3.Text = g.Cells[1].Text;
            Label2.Text = g.Cells[2].Text;
            TextBox5.Text = g.Cells[3].Text;
            TextBox6.Text = g.Cells[4].Text;
            TextBox7.Text = g.Cells[5].Text;
            TextBox8.Text = g.Cells[6].Text;
            Image2.ImageUrl = getimage(Label1.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}