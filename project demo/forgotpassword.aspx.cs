using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;


namespace project_demo
{
    public partial class WebForm6 : System.Web.UI.Page
    {
         static String otp;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
   

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");

            con.Open();
            SqlCommand d = new SqlCommand("select count(*) from userinfo where email='" + TextBox1.Text + "'", con);
            int k = Convert.ToInt32(d.ExecuteScalar().ToString());
            if (k == 0)
            {

                Response.Write("email id is invalid");
            }
            else
            {



                Random ran = new Random();
                otp = ran.Next(1000, 9999).ToString();





                // Response.Write(otp);

                   SmtpClient smtp = new SmtpClient();
                   smtp.Host = "smtp.gmail.com";
                   smtp.Port = 587;
                   smtp.Credentials = new System.Net.NetworkCredential("email", "password");
                   smtp.EnableSsl = true;
                   MailMessage msg = new MailMessage();
                   msg.Subject = "Hello " + TextBox1.Text;
                   msg.Body = "Hi, Your otp is "+otp;
                   string toaddress = TextBox1.Text;
                   msg.To.Add(toaddress);
                   string fromaddress = " Online Store Management<email>";
                   msg.From = new MailAddress(fromaddress);
                   try
                   {
                       smtp.Send(msg);
                       Response.Write("Your Email Has Been Registered with Us");

                   }
                   catch (Exception ex)
                   {
                       Response.Write(ex);
                   }
            }
            
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write(otp);
            if (otp == TextBox2.Text)
            {
                Response.Write("success");
                Session["email"] = TextBox1.Text;
                Response.Redirect("changepwd.aspx");
            }
            else
            {
                Response.Write("incorrect otp");
            }

        }
    }
}