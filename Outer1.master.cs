using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Outer1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["UserName"] == null)
        //{
        //    // Session["msg"] = "Please first logout after then Register User...";

        //    Response.Redirect(@"~/Home page.aspx");
        //    Response.Write("<script>alert('PLease Login......')</script>");
        //}
    }
}
