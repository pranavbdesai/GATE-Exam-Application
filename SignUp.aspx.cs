using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data;

//this block of code for globally connection class for use in whole project
public partial class SignUp: System.Web.UI.Page
{
    Connection c = new Connection();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();

    //during the session of user is start at that time no new registration is allow
    // Redirect to home page
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Branchname();
        }
    }

    //selecting the branch name in registration from the database
    void Branchname()
    {
        DataTable dt = new DataTable();
        dt = c.gettable("select BranchId,BranchName from Branch");
        if (dt.Rows.Count != 0)
        {
            drpBranch.DataValueField = dt.Columns[0].ColumnName;
            drpBranch.DataTextField = dt.Columns[1].ColumnName;
            drpBranch.DataSource = dt;
            drpBranch.DataBind();
        }
        drpBranch.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }

    //this code show the process of registration of new user to the site
    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {

        c.insert("insert into user_Master(user_name,password,FullName,Gender,BranchId,security_question,answer,email) values ('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtFullName.Text + "','" + rbtGender.SelectedItem.Text + "'," + drpBranch.SelectedItem.Value + ",'" + dplSecQuestion.SelectedValue.ToString() + "','" + txtAnswer.Text + "','" + txtEmail.Text + "') ");
        Response.Write("<script>alert('User Information Submit sucessfully...')</script>");
        Response.Redirect("Home Page1.aspx");


    }

   
    //this code show the cancel button process
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        cleartextbox();
        txtUsername.Focus();
    }

    //this code show the how to clean the form
    void cleartextbox()
    {
        drpBranch.Items.Insert(0, new ListItem("--SELECT--", "0"));
        txtAnswer.Text = "";
        txtEmail.Text = "";
        txtFullName.Text = "";
        txtPassword.Text = "";
        txtReenterPassword.Text = "";
        txtUsername.Text = "";
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }

}