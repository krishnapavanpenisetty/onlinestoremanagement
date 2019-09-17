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
    public partial class cart : System.Web.UI.Page
    {
        private int total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Request.QueryString[0]);
            


            if (Session["email"] == null) {
                Response.Redirect("login.aspx");
            }
            
            Label2.Text = getprice();

        }
        protected String getprice()
        {
            total = 0;
            int count = 0;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String ins = "select price from cart where email='" + Session["email"] + "'";
            SqlCommand cmd = new SqlCommand(ins, con);
            SqlDataReader re = cmd.ExecuteReader();
            
            while (re.Read())
            {
                count++;
                total += Convert.ToInt32(re["price"].ToString());

            }
            String k = total.ToString();
            Label4.Text = count.ToString();
            re.Close();
            cmd.Dispose();
            con.Close();
            return k;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

             SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
              con.Open();
            /*  String k= "select * from cart where email = '"+Session["email"]+"'";
             SqlCommand s = new SqlCommand(k, con);
             SqlDataReader re = s.ExecuteReader();
             int i = Convert.ToInt32(Label4.Text);
             while (re.Read())
             {
                  String id = re["id"].ToString();
                  String ins= "insert into solditems  select * from cart where email='" +id + "'";
                  SqlCommand cmd = new SqlCommand(ins, con);
                  cmd.ExecuteNonQuery();
           // i++;

       }*/
            String orderid = "";
            orderid =""+ DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString();
            Random eh = new Random();
            
            orderid+=eh.Next(1000, 9999).ToString();

            try {
                // int oid = Convert.ToInt32(orderid.ToString());
                String check = "select count(*) from cart where email='"+ Session["email"]+"'";
                SqlCommand cm = new SqlCommand(check, con);
                // SqlDataReader re = cmd.ExecuteReader();
                int len = Convert.ToInt32(cm.ExecuteScalar().ToString());
                cm.Dispose();
                int[] sid = new int[len];
                int[] qu = new int[len];

                int i = 0;
                String insert = "select modelid,quality from cart where email='" + Session["email"] + "'";
                SqlCommand ind = new SqlCommand(insert, con);
                SqlDataReader re = ind.ExecuteReader();
                while (re.Read()) {
                    sid[i] = Convert.ToInt32( re["modelid"].ToString());
                    qu[i] = Convert.ToInt32(re["quality"].ToString());
                    i++;

                }
                re.Close();
                ind.Dispose();
                i = 0; 
                int che = 0;
                while (i<len)
                {
                    String k = "select stock from productinfo where id='"+sid[i].ToString()+"'";
                    SqlCommand kc = new SqlCommand(k,con);
                    int stock = Convert.ToInt32(kc.ExecuteScalar().ToString());
                    if (stock < qu[i])
                    {
                        String dis = "" + sid[i].ToString()+"is out of stock please remove it to make payment";
                        Label5.Text = dis.ToString();
                        che=1;
                        break;
                    }
                    kc.Dispose();
                    i++;
                }

                if (che == 0)
                {
                    String ins = "insert into solditems(id,email,productname,producttype,modelid,price,quality,img,company,status,tid)select id,email,productname,producttype,modelid,price,quality,img,company,'waiting for confirmation','" + orderid.ToString() + "' from cart where email='" + Session["email"] + "'";

                    SqlCommand cmd = new SqlCommand(ins, con);
                    //cmd.Parameters.AddWithValue()
                    cmd.ExecuteNonQuery();
                    Response.Write("insert");
                    Response.Write(orderid);
                    cmd.Dispose();

                    String del = "delete cart where email='" + Session["email"] + "'";
                    SqlCommand d = new SqlCommand(del, con);
                    d.ExecuteNonQuery();
                    d.Dispose();
                    
                    i = 0;
                    while (i < len)
                    {
                        String k = "select stock from productinfo where id='" + sid[i] + "'";
                        SqlCommand kc = new SqlCommand(k, con);
                        int stock = Convert.ToInt32(kc.ExecuteScalar().ToString());
                        stock = stock - qu[i];
                        kc.Dispose();
                        String up = "update productinfo set stock='" + stock.ToString() + "' where id='" + sid[i] + "'";
                        SqlCommand upd = new SqlCommand(up, con);
                        upd.ExecuteNonQuery();
                        i++;
                        upd.Dispose();

                        //temp.Parameters.AddWithValue
                    }
                    if (len>0) {
                        int total = Convert.ToInt32(Label2.Text.ToString());
                        String td = "insert into [transaction] (transactionid,money) values('" + orderid + "','" + total + "')";
                        SqlCommand temp = new SqlCommand(td, con);

                        temp.ExecuteNonQuery();
                        Response.Redirect("success.aspx?id=" + orderid);

                    }

                    con.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //String l=  getprice();
           String k="";
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            k = cell.Text;
           // Response.Write(k);
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=store;Integrated Security=True");
            con.Open();
            String ins = "delete cart where id='" + k + "'";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Label2.Text= getprice();
            
           // Page_Load(null, EventArgs.Empty);
        }
    }
}