using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo.adonet
{
    public partial class UpdatePrice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string cs = WebConfigurationManager
                          .ConnectionStrings["msdbConnectionString"]
                          .ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand
                 ("update products set price = @price where prodid = @id", con);
            cmd.Parameters.AddWithValue("@id", txtId.Text);
            cmd.Parameters.AddWithValue("@price", txtPrice.Text);
            try
            {
                int count = cmd.ExecuteNonQuery();
                if (count == 1)
                    lblMsg.Text = "Update Price Successfully!";
                else
                    lblMsg.Text = "Sorry! Product Id Not Found!";
            }
            catch (Exception ex)
            {
                Trace.Write("UpdatePrice ->" + ex.Message);
                lblMsg.Text = "Sorry! Could not update price due to error!";
            }
            con.Close();
        }
    }
}