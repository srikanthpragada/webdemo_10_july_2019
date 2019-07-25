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

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            try
            {
                int amount = Int32.Parse(txtAmount.Text);
                amount = amount / 70;
                lblUSD.Text = amount + " USD";
            }
            catch(FormatException ex)
            {
                lblUSD.Text = "Sorry! Invalid number. Please enter valid number!";
            }
        }
    }
}