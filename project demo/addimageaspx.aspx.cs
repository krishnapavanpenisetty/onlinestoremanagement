using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace project_demo
{
    public partial class addimageaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
                con.Open();

                String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader re = new BinaryReader(fs);
                byte[] img = re.ReadBytes((Int32)fs.Length);
                String query = "insert into addimg (id,image)values('" + TextBox1.Text + "',@img)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@img", img);
                cmd.ExecuteNonQuery();
                Response.Write("success");


            }
            catch (Exception ex)
            {
                Response.Write(ex);

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            byte[] bytes;
            String filename;
            String ind = "select * from addimg where id='" + TextBox2.Text + "'";
            SqlCommand cd = new SqlCommand(ind, con);
            SqlDataReader re = cd.ExecuteReader();
            re.Read();
            bytes = (byte[])re["image"];
            filename = re["id"].ToString();
            Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);

            /*sdr.Read();
        bytes = (byte[])sdr["Profileimage"];
        fileName = sdr["imageid"].ToString();
        Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);
*/
        }

        public String getdata()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            byte[] bytes;
            String filename;
            String ind = "select * from addimg ";
            SqlCommand cd = new SqlCommand(ind, con);
            SqlDataReader re = cd.ExecuteReader();
            String k = "";
            while (re.Read())
            {
                bytes = (byte[])re["image"];
                filename = re["id"].ToString();
                Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes);
                k += "<img src=" + Image1.ImageUrl + " width=" + 200 + ";" + "onClick=show(filename)>" + filename + "<br>";

            }
            return k;


        }
        public void show(String k)
        {
            Response.Write(k);
        }
    }
}