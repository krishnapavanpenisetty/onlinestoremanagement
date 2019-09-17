using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_demo
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (email.Text == "admin@gmail.com" && password.Text == "admin")
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
                    con.Open();
                    String ch = "select count(*) from userinfo where email='" + email.Text + "'";

                    SqlCommand cmd = new SqlCommand(ch, con);
                    int k = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                    if (k == 1)
                    {
                        String c = "select password from userinfo where email='" + email.Text + "'";
                        SqlCommand cm = new SqlCommand(c, con);
                        String pass = cm.ExecuteScalar().ToString();
                        if (pass == password.Text)
                        {
                            Response.Write("login");
                            Session["email"] = email.Text;
                            Response.Redirect("Home.aspx");

                        }

                        else
                        {
                            Response.Write("invalid password");
                            Label1.Text = "invalid password";
                        }

                    }
                    else
                    {
                        Response.Write("invalid email");
                        Label1.Text = "invalid email";
                    }

                    /*   String tr = "select count(*) from userinfo where email='" + email.Text + "'";

                       SqlCommand g = new SqlCommand(tr, con);

                       g.ExecuteNonQuery();
                        SqlDataReader re = g.ExecuteReader();


                        while (re.Read()) {
                            if (re.GetValue(0).Equals(email.Text)) {
                                  if(re.GetValue(1).Equals(password.Text)) {

                                      Response.Write("login success");
                                  }
                                  else
                                  {
                                      Response.Write("incorrect  password");
                                  }
                              }
                              else
                              {
                                  Response.Write("invalid email");
                              } 

                            String name = re["email"].ToString();
                           Response.Write(re.GetValue(1));

                       }*/
                    cmd.Dispose();
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
            }
            }

    }
}