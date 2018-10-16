using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using conn;
using System.Data;

public partial class Admin_ManageBranch : System.Web.UI.Page
{
    Connection c = new Connection();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        dt = c.gettable("select * from Branch where BranchName='" + txtBranch.Text + "'  ");
        if (dt.Rows.Count != 0)
        {
            Response.Write("<script>alert('This branch is already exist plz choose another branch..')</script>");
        }
        else
        {
            c.insert("insert into Branch(BranchName)values('" + txtBranch.Text + "') ");
            Response.Write("<script>alert('Branch Added successfully...')</script>");
        }
        txtBranch.Text = "";
        txtBranch.Focus();
        GridView1.DataBind();
    }
}