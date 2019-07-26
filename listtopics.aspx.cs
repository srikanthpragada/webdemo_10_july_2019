using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemo
{
    public partial class listtopics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // findout whether cookie lang is present 
            HttpCookie c = Request.Cookies["lang"];
            if (c == null) // cookie not found 
                Response.Redirect("selectlang.aspx");

            lblTopics.Text = "Topics of " + c.Value;
        }
    }
}