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
    public partial class addproduct : System.Web.UI.Page
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
                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader re = new BinaryReader(fs);
                byte[] img = re.ReadBytes((Int32)fs.Length);
                String insert = "insert into productinfo(productname,producttype,company,des,price,stock,img)values(@name,@type,@company,@des,@price,@stock,@img)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@company", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@des", TextBox2.Text);
                cmd.Parameters.AddWithValue("@price", TextBox3.Text);
                cmd.Parameters.AddWithValue("@stock", TextBox4.Text);

                cmd.Parameters.AddWithValue("@img", img);
                cmd.ExecuteNonQuery();
               // Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(img);

                Response.Write("success");
                Label1.Text = "successfully added";
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            
        }

        
    }
}