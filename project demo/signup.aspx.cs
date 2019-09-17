using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Data;


namespace project_demo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");

                con.Open();
                SqlCommand d = new SqlCommand("select count(*) from userinfo where email='"+email.Text+"'",con);
                int k = Convert.ToInt32(d.ExecuteScalar().ToString());
                if (k == 1) {

                    Response.Write("email id is already exists");
                    Label1.Text = "email id is already exists";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {

                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");

                con.Open();
                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader re = new BinaryReader(fs);
                byte[] img = re.ReadBytes((Int32)fs.Length);

                String enter = "insert into userinfo(name,email,password,contact,address,city,pincode,image)values(@name,@email,@password,@contact,@address,@city,@pincode,@img)";
                SqlCommand cmd = new SqlCommand(enter,con);

                cmd.Parameters.AddWithValue("@name",name.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);
                cmd.Parameters.AddWithValue("@contact", contact.Text);
                cmd.Parameters.AddWithValue("@address", address.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@pincode", pincode.Text);
                cmd.Parameters.AddWithValue("@img", img);
                cmd.ExecuteNonQuery();
                // Response.Write("inserted");

                Label1.Text = "Your Email Has Been Registered with Us";
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("email", "password");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + email.Text + "  Thanks for Register at Online Store Management";
                msg.Body = "Hi, Thanks For Your Registration at Online Store Management, We will Provide You The Latest products. Thanks";
                string toaddress = email.Text;
                msg.To.Add(toaddress);
                string fromaddress = " Online Store Management<email>";
                msg.From = new MailAddress(fromaddress);
               
                smtp.Send(msg);
                Response.Write("Your Email Has Been Registered with Us");
                Label1.Text = "Your Email Has Been Registered with Us";
                    Response.Redirect("login.aspx");

               

                cmd.Dispose();
                con.Close();
            }
            catch(Exception ex)
            {
                // Response.Write(ex);
            }
           
        }
    }
}