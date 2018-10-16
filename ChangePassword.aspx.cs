using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using conn;
using System.Data;

public partial class ChangePassword : System.Web.UI.Page
{
    Connection c = new Connection();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            lblNames.Text = Convert.ToString(Session["User_name"]);
            lblLoginId.Text = Convert.ToString(Session["User_id"]);
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        string str = "SELECT User_id,User_name,Password FROM User_Master WHERE(User_id = '" + Convert.ToInt64(Session["User_id"]) + "')";
        dt = c.gettable(str);
        if (dt.Rows.Count != 0)
        {
            if (txtpassword.Text == dt.Rows[0][2].ToString())
            {
                c.update("UPDATE User_Master SET Password ='" + txtNewPass.Text + "' WHERE (User_id ='" + Convert.ToInt64(Session["User_id"].ToString()) + "')");
                Response.Write("<script>alert('Your Password has been changed...')</script>");
                Response.Redirect("Home page1.aspx");

            }
            else
            {
                Response.Write("<script>alert('Please enter true Pass Word...')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please enter true Email Id...')</script>");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home page1.aspx");
    }
}
