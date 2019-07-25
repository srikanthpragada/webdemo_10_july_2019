using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo
{
    public partial class tripcost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int totalkm = Int32.Parse(txtTotalKM.Text);
            int kmperleter = Int32.Parse(txtKMPerLeter.Text);
            int rate;

            if (rbPetrol.Checked)
                rate = 77;
            else
                rate = 70;

            int cost = (totalkm / kmperleter) * rate;

            lblCost.Text = "Cost of Trip : " + cost;

        }
    }
}