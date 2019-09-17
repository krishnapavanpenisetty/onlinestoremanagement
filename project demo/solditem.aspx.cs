using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_demo
{
    public partial class solditem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Gridview_update(object sender, GridViewUpdateEventArgs e)
        {
            TableCell cell = GridView2.Rows[e.RowIndex].Cells[0];
           String k = cell.Text;
            // Response.Write(k+"keelelle");
        }
    }
}