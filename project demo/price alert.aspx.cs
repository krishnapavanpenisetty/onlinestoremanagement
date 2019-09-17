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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            string k = "select priceset.email from priceset INNER JOIN productinfo on priceset.pid=productinfo.id";
            SqlCommand cmd = new SqlCommand(k, con);
            // cmd.ExecuteScalar();
            //Response.Write(cmd.ExecuteScalar().ToString());
            cmd.ExecuteNonQuery();
            // SqlCommand d = new SqlCommand("select count(*) from userinfo where email='" + email.Text + "'", con);
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            c.Open();
            string m = "SELECT priceset.email,productinfo.productname FROM[priceset] INNER JOIN[productinfo] ON(priceset.pid = productinfo.id AND priceset.price >= productinfo.price)";
            SqlCommand h = new SqlCommand(m, c);
            // Response.Write(h.ExecuteScalar().ToString());
            SqlDataReader re = h.ExecuteReader();
            while (re.Read())
            {

             //   Response.Write(re["email"].ToString());
              //  Response.Write(re["productname"].ToString());

                 SmtpClient smtp = new SmtpClient();
                 smtp.Host = "smtp.gmail.com";
                 smtp.Port = 587;
                 smtp.Credentials = new System.Net.NetworkCredential("email", "password");
                 smtp.EnableSsl = true;
                 MailMessage msg = new MailMessage();
                 msg.Subject = "Hello " + re["email"].ToString()+", "+ re["productname"].ToString()+"is avaliable at your price";
                 msg.Body = "Hi,"+ re["productname"].ToString()+" is avaliable at your price. So,Hurry Up And buy the product.";
                 string toaddress = re["email"].ToString();
                 msg.To.Add(toaddress);
                 string fromaddress = " Online Store Management<email>";
                 msg.From = new MailAddress(fromaddress);

                 smtp.Send(msg);
            }
            

        }
    }
}