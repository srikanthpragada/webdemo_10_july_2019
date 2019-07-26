using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo
{
    public partial class currency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                Response.Write("Postback request");
            else
                Response.Write("Direct request");
        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            try
            {
                int amount = Int32.Parse(txtAmount.Text);
                int rate = Int32.Parse(ddlCurrency.SelectedItem.Value);
                amount = amount / rate;
                lblUSD.Text = amount + " " + ddlCurrency.SelectedItem.Text;
            }
            catch(FormatException ex)
            {
                lblUSD.Text = "Sorry! Invalid number. Please enter valid number!";
            }
        }
    }
}