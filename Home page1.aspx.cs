using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data;

//this block of code for globally connection class for use in whole project
public partial class Home_page : System.Web.UI.Page
{
    Connection c = new Connection();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        dt = c.gettable("SELECT User_id, User_name FROM User_Master WHERE User_name='" + txtUsname.Text + "' and Password='" + txtPswd.Text +"' ");
        dt1 = c.gettable("SELECT AdminId, User_name FROM Admin WHERE (User_name = '" + txtUsname.Text + "') AND (Password = '" + txtPswd.Text + "')");

        if (dt.Rows.Count != 0)
        {
            Session["User_Id"] = dt.Rows[0][0].ToString();
            Session["UserName"] = dt.Rows[0][1].ToString();
            Response.Redirect("~/Exam.aspx");
        }
        else if (dt1.Rows.Count != 0)
        {
            Session["User_Id"] = dt1.Rows[0][0].ToString();
            Session["UserName"] = dt1.Rows[0][1].ToString();
            Response.Redirect("~/Admin/AdminHomePage.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invelid EmailId and Password...')</script>");
            txtUsname.Text = "";
            txtUsname.Text = "";
            txtUsname.Focus();
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        cleartextbox();
        txtUsname.Focus();
    }

    //this code show the how to clean the form
    void cleartextbox()
    {
       
        txtUsname.Text = "";
        
        txtPswd.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //}
    }
}