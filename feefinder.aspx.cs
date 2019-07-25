using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo
{
    public partial class feefinder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            int fee = Int32.Parse(ddlCourse.SelectedItem.Value);

            if (chkOldStudent.Checked && rbClassroom.Checked)
                fee = fee * 90 / 100;

            if (chkMaterial.Checked)
                fee += 300;

            lblFee.Text = "Course Fee : " + fee;

        }

        protected void rbOnline_CheckedChanged(object sender, EventArgs e)
        {
            chkOldStudent.Checked = false;
            chkOldStudent.Enabled = false;
        }

        protected void rbClassroom_CheckedChanged(object sender, EventArgs e)
        {
            chkOldStudent.Enabled = true;
        }

       
    }
}