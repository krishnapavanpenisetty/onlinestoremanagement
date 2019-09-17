using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace project_demo
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Session["email"]);
         //   Response.Write(Request.QueryString["first"]);

        }
        protected String getimage(String k) {

            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String q = "select img from productinfo where id='" + k + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader re = cmd.ExecuteReader();
            re.Read();
           // int s = Convert.ToInt32(re["stock"].ToString());
            String h = "";
            byte[] img = (byte[])re["img"];
            h = "data:image/jpg;base64," + Convert.ToBase64String(img);
            re.Close();
            cmd.Dispose();
            con.Close();
            return h;
            
        }
       

        

       protected String getcart()
        {
            String j= "cart.aspx?id=" + Session["email"];

            Response.Redirect("cart.aspx?id=" + Session["email"]);
            return j;
        }

        public String getbutton(String id)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String q = "select stock from productinfo where id='" + id + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader re = cmd.ExecuteReader();
            re.Read();
            int l = Convert.ToInt32(re["stock"].ToString());
            if (l == 0)
            {
                
                return "out of stock";
                
            }
            else
            {
                return "Add to Cart";
            }
            
            //String l='<asp:Button ID="Button4" runat="server" class="btn btn-primary btn - block"  Width="398px" CommandArgument='<%#Eval("id") %>' CommandName="addtocart" OnClick="Button4_Click1" Text="Add to Cart" />';
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

            Button btn = (Button)sender;
            if (btn.Text == "Add to Cart")
            {

                if (btn.CommandName == "addtocart")
                {
                    if (Session["email"] == null)
                    {
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
                        con.Open();
                        String q = "select * from productinfo where id='" + btn.CommandArgument.ToString() + "'";
                        SqlCommand cmd = new SqlCommand(q, con);
                        SqlDataReader re = cmd.ExecuteReader();
                        re.Read();
                        String productname = re["productname"].ToString();
                        String company = re["company"].ToString();
                        int quality = 1;
                        int price = Convert.ToInt32(re["price"]);
                        String pr = re["producttype"].ToString();
                        String h = "";
                        byte[] img = (byte[])re["img"];
                        //h = "data:image/jpg;base64," + Convert.ToBase64String(img);
                        re.Close();
                        cmd.Dispose();
                        //Response.Write(productname); Response.Write(company); Response.Write(quality); Response.Write(price);
                        // if (Session["email"] != null) {
                        try
                        {
                            //String email = "krishnapavanpenisetty@gmail.com";
                            String query = "insert into cart(email,producttype,productname,modelid,company,quality,price,img)values(@email,@pr,@productname,@modelid,@company,@quality,@price,@h)";
                            SqlCommand d = new SqlCommand(query, con);
                            d.Parameters.AddWithValue("@email", Session["email"]);
                            d.Parameters.AddWithValue("@pr", pr);
                            d.Parameters.AddWithValue("@productname", productname);
                            d.Parameters.AddWithValue("@company", company);
                            d.Parameters.AddWithValue("@quality", quality);
                            d.Parameters.AddWithValue("@price", price);
                            d.Parameters.AddWithValue("@h", img);
                            d.Parameters.AddWithValue("@modelid", btn.CommandArgument);
                            d.ExecuteNonQuery();
                            Response.Redirect("cart.aspx?id=" + Session["email"]);
                            //  }

                            //
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex);
                        }

                    }
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("search.aspx?search=" + TextBox1.Text + "");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}