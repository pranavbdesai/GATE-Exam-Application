using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using conn;
using System.Data;

public partial class Admin_ManageTest : System.Web.UI.Page
{
    Connection c = new Connection();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        dt = c.gettable("select * from Test_master where TestName='" + txtTestName.Text + "'  ");
        if (dt.Rows.Count != 0)
        {
            Response.Write("<script>alert('This Test is already exist plz choose another Test...')</script>");
        }
        else
        {
            c.insert("insert into Test_Master(TestName)values('" + txtTestName.Text + "')  ");
            Response.Write("<script>alert('Test Added successfully...')</script>");
        }
        txtTestName.Text = "";
        txtTestName.Focus();
        GridView1.DataBind();

    }
}