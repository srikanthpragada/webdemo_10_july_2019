using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo
{
    public partial class selectlang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("lang", txtLang.Text);
            c.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(c); // Send cookie to client
            Response.Redirect("listtopics.aspx");  // redirect to listtopics.aspx
        }
    }
}