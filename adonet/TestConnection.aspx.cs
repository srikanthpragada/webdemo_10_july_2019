using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo
{
    public partial class TestConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection
               (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial Catalog=msdb");
            con.Open();
            lblMsg.Text = "Connected Successfully!";
            con.Close();
        }
    }
}