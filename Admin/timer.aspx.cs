using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class timer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Timer1.Visible = false;
        
    }
    protected void Timer1_IntervalReached(object sender, CodeControls.TimerEventArgs e)
    {

    }
    protected void Timer1_TimeOutOccurred(object sender, CodeControls.TimerEventArgs e)
    {
        Response.Redirect("LoginPage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Timer1.Visible = true;
       // Timer1.ManualStart();
    }
}