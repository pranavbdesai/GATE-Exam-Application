using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using conn;

public partial class Admin_Question_master : System.Web.UI.Page
{
    Connection c = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Subject();
        }
        
    }
    void Subject()
    {
        DataTable dt = new DataTable();
        dt = c.gettable("select TestId,TestName from Test_Master");
        if (dt.Rows.Count != 0)
        {
            ddlSubject.DataValueField = dt.Columns[0].ColumnName;
            ddlSubject.DataTextField = dt.Columns[1].ColumnName;
            ddlSubject.DataSource = dt;
            ddlSubject.DataBind();
        }
        ddlSubject.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //DataTable dt = new DataTable();
        //dt = c.gettable("select count(TestId) from Question_Master where TestId='" + ddlSubject.SelectedValue + "'");

        //txtQueNum.Text = (Convert.ToInt16(dt.Rows[0][0].ToString()) + 1).ToString();

        c.insert("insert into Question_Master(TestID, QuestionNumber, Question_Name, Right_Answer, A, B, C, D)values('" + ddlSubject.SelectedValue + "','" + txtQueNum.Text + "','" + txtQueName.Text + "','" + txtRightAns.Text + "','" + txtAnsA.Text + "','" + txtAnsB.Text + "','" + txtAnsC.Text + "','" + txtAnsD.Text + "') ");
        Response.Write("<script>alert('Question Submit sucessfully...')</script>");
    }
    protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = c.gettable("select count(TestId) from Question_Master where TestId='"+ddlSubject.SelectedValue+"'");
        txtQueNum.Text = (Convert.ToInt16(dt.Rows[0][0].ToString())+1).ToString();
    }
}