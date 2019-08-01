using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo.adonet
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection
               (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial Catalog=msdb");
            con.Open();
            SqlCommand cmd = new SqlCommand
                 ("insert into categories values(@code,@desc)", con);
            cmd.Parameters.AddWithValue("@code", txtCode.Text);
            cmd.Parameters.AddWithValue("@desc", txtDesc.Text);
            try
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Added Category Successfully!";
            }
            catch(Exception ex)
            {
                Trace.Write("AddCategory ->" + ex.Message);
                lblMsg.Text = "Sorry! Could not add category due to error!";
            }
            con.Close();
        }


    }
}