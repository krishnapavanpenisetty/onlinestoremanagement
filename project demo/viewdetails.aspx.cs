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
    public partial class viewdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Request.QueryString[0]);
        }
        protected String getimage(String k)
        {

             SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String q = "select img from productinfo where id='" + k + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader re = cmd.ExecuteReader();
            re.Read();
            String h = "";
            byte[] img = (byte[])re["img"];
            h = "data:image/jpg;base64," + Convert.ToBase64String(img);
            re.Close();
            cmd.Dispose();
            con.Close();
            return h;

            
        }

        protected int getbotton()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String q = "select stock from productinfo where id='" + Request.QueryString[0] + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader re = cmd.ExecuteReader();
            re.Read();
            int k = Convert.ToInt32(re["stock"].ToString());
            re.Close();
            cmd.Dispose();
            con.Close();
            return k;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            // Response.Write(DropDownList1.SelectedItem.Value);
            //DropDownList1.selectedvalue;
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
                con.Open();
                String q = "select * from productinfo where id='" + Request.QueryString[0] + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                SqlDataReader re = cmd.ExecuteReader();
                re.Read();
                String productname = re["productname"].ToString();
                String company = re["company"].ToString();
                int quality = Convert.ToInt32(DropDownList1.SelectedItem.Value);

                int price = quality * Convert.ToInt32(re["price"]);
                String pr = re["producttype"].ToString();
                String h = "";
                byte[] img = (byte[])re["img"];

                re.Close();
                cmd.Dispose();

                try
                {

                    String query = "insert into cart(email,producttype,productname,modelid,company,quality,price,img)values(@email,@pr,@productname,@modelid,@company,@quality,@price,@h)";
                    SqlCommand d = new SqlCommand(query, con);
                    d.Parameters.AddWithValue("@email", Session["email"]);
                    d.Parameters.AddWithValue("@pr", pr);
                    d.Parameters.AddWithValue("@productname", productname);
                    d.Parameters.AddWithValue("@company", company);
                    d.Parameters.AddWithValue("@quality", quality);
                    d.Parameters.AddWithValue("@price", price);
                    d.Parameters.AddWithValue("@h", img);
                    d.Parameters.AddWithValue("@modelid", Request.QueryString[0]);
                    d.ExecuteNonQuery();
                    Response.Redirect("cart.aspx?id=" + Session["email"]);
                    //  }

                    //
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // DropDownList d = new DropDownList();
            //Response.Write(d.SelectedValue.ToString());
            if (Session["email"] != null)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
                con.Open();
                String orderid = "";
                orderid = "" + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString();
                Random eh = new Random();

                orderid += eh.Next(1000, 9999).ToString();

                try
                {
                    
                    String q = "select * from productinfo where id='" + Request.QueryString[0] + "'";
                    SqlCommand cmd = new SqlCommand(q, con);
                    SqlDataReader re = cmd.ExecuteReader();
                    re.Read();
                    String productname = re["productname"].ToString();
                    String company = re["company"].ToString();
                    int quality = Convert.ToInt32(DropDownList1.SelectedItem.Value);

                    int price = quality * Convert.ToInt32(re["price"]);
                    String pr = re["producttype"].ToString();
                    String h = "";
                    byte[] img = (byte[])re["img"];

                    re.Close();
                    cmd.Dispose();

                    int che = 0;

                    String k = "select stock from productinfo where id='" + Request.QueryString[0] + "'";
                    SqlCommand kc = new SqlCommand(k, con);
                    int stock = Convert.ToInt32(kc.ExecuteScalar().ToString());
                    if (stock < Convert.ToInt32(DropDownList1.SelectedItem.Value))
                    {
                       // String dis = "only" + stock.ToString() + "is avalible";
                        //Response.Write(dis.ToString());
                        Label2.Text ="only"+stock.ToString()+"is avalible";
                        che = 1;


                    }
                    kc.Dispose();

                    if (che == 0)
                    {
                        int cardid = eh.Next(1000, 9999);



                        String ins = "insert into solditems(id,email,productname,producttype,modelid,price,quality,img,company,status,tid)values(@id,@email,@productname,@pr,@modelid,@price,@quality,@h,@company,'waiting for confirmation',@tid)";

                        SqlCommand d = new SqlCommand(ins, con);
                        d.Parameters.AddWithValue("@id",cardid);
                        d.Parameters.AddWithValue("@email", Session["email"]);
                        d.Parameters.AddWithValue("@pr", pr);
                        d.Parameters.AddWithValue("@productname", productname);
                        d.Parameters.AddWithValue("@company", company);
                        d.Parameters.AddWithValue("@quality", DropDownList1.SelectedItem.Value);
                        d.Parameters.AddWithValue("@price", price);
                        d.Parameters.AddWithValue("@h", img);
                        d.Parameters.AddWithValue("@modelid", Request.QueryString[0]);
                        d.Parameters.AddWithValue("@tid",orderid);

                        //cmd.Parameters.AddWithValue()
                        stock = stock - Convert.ToInt32(DropDownList1.SelectedItem.Value);
                        d.ExecuteNonQuery();
                        Response.Write("insert");
                        Response.Write(orderid);
                        d.Dispose();




                        String up = "update productinfo set stock='" + stock.ToString() + "' where id='" + Request.QueryString[0] + "'";
                        SqlCommand upd = new SqlCommand(up, con);
                        upd.ExecuteNonQuery();
                        String td = "insert into [transaction] (transactionid,money) values('" + orderid + "','" + price + "')";
                        SqlCommand temp = new SqlCommand(td, con);

                        temp.ExecuteNonQuery();
                        Response.Redirect("success.aspx?id=" + orderid);

                        con.Close();
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }

            }
            else {
               
                    Response.Redirect("login.aspx");
                

                }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write(Request.QueryString[0]);
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String i = "insert into priceset(email,pid,price)values(@email,@pid,@price)";
            SqlCommand cm = new SqlCommand(i,con);
            
            cm.Parameters.AddWithValue("@email",Session["email"]);
            cm.Parameters.AddWithValue("@pid", Request.QueryString[0].ToString());
            cm.Parameters.AddWithValue("@price", TextBox1.Text);
            cm.ExecuteNonQuery();
            cm.Dispose();
            con.Close();


        }
    }
}