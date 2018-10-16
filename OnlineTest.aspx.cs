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
using System.Data.SqlClient;
using System.Data;
using conn;

public partial class OnlineTest : System.Web.UI.Page
{
    Connection c = new Connection();
    DataTable dt = new System.Data.DataTable();
    string Ans, selectAns;

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnilneTest.mdf;Integrated Security=True;User Instance=True");

    protected void Timer1_IntervalReached(object sender, CodeControls.TimerEventArgs e)
    {

    }
    protected void Timer1_TimeOutOccurred(object sender, CodeControls.TimerEventArgs e)
    {
        string qr = "insert into result values(" + Session["TestId"] + "," + Session["User_id"] + "," + Session["true"] + "," + Session["false"] + ")";
        SqlCommand cmd = new SqlCommand(qr, con);
        cmd.ExecuteNonQuery();

        Response.Redirect("Test_Result.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        if (Page.IsPostBack == false)
        {

            Session["false"] = "0";
            Session["true"] = "0";

            if (Convert.ToInt16(Session["i"]) == 0)
            {
                //fetching question number

                string str1 = "Select QuestionId from Question_Master where TestId=" + Convert.ToInt16(Session["TestId"]) + "";

                SqlCommand cmd1 = new SqlCommand(str1, con);

                int k = Convert.ToInt16(cmd1.ExecuteScalar());

                Session["i"] = k;

                string str;

                str = "Select * from Question_Master where  TestId=" + Convert.ToInt32(Session["TestId"]) + " and QuestionId=" + Convert.ToInt16(Session["i"]) + "  ";

                SqlCommand cmd = new SqlCommand(str, con);

                SqlDataReader dr;

                dr = cmd.ExecuteReader();

                    dr.Read();
                    lblQuestionNumber.Text = dr["Question_Name"].ToString();
                    ViewState["RightAnswer"] = dr["Right_Answer"].ToString();
                    Session["Ans"] = dr["Right_Answer"].ToString();
                             

                dt = c.gettable("Select A,B,C,D,QuestionId from Question_Master where  TestId=" + Convert.ToInt32(Session["TestId"]) + " and QuestionId=" + Convert.ToInt16(Session["i"]) + " ");


                RadioButtonList1.Text = dt.Rows[0][0].ToString();
                RadioButtonList2.Text = dt.Rows[0][1].ToString();
                RadioButtonList3.Text = dt.Rows[0][2].ToString();
                RadioButtonList4.Text = dt.Rows[0][3].ToString();
                
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //save

        if (RadioButtonList1.Checked)
        {
            selectAns = "A";
        }
        else if (RadioButtonList2.Checked)
        {
            selectAns = "B";
        }
        else if (RadioButtonList3.Checked)
        {
            selectAns = "C";
        }
        else if (RadioButtonList4.Checked)
        {
            selectAns = "D";
        }

        
       
        if (Session["Ans"] == selectAns) //ViewState["RightAnswer"].ToString() == selectAns)
        {
       
            Session["true"] = Convert.ToInt16(Session["true"]) + 1;

        }
        else
        {
            Session["false"] = Convert.ToInt16(Session["false"]) + 1;
       
        }


        //SqlCommand cmd2 = new SqlCommand(str2, con);
        //cmd2.ExecuteNonQuery();

        Session["i"] = Convert.ToInt16(Session["i"]) + 1;
        //Session["QuestionId"] = Convert.ToInt16(Session["QuestionId"]) + 1;

        string str = "Select * from Question_Master where  TestId=" + Convert.ToInt16(Session["TestId"]) + " and QuestionId=" + Convert.ToInt16(Session["i"]) + " ";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lblQuestionNumber.Text = dr["Question_Name"].ToString();
            ViewState["RightAnswer"] = dr["Right_Answer"].ToString();
            Session["Ans"] = dr["Right_Answer"].ToString();
        }
        
        dt = c.gettable("Select A,B,C,D,QuestionId from Question_Master where  TestId=" + Convert.ToInt32(Session["TestId"]) + " and QuestionId=" + Convert.ToInt16(Session["i"]) + " ");
        
        RadioButtonList1.Text = dt.Rows[0][0].ToString();
        RadioButtonList2.Text = dt.Rows[0][1].ToString();
        RadioButtonList3.Text = dt.Rows[0][2].ToString();
        RadioButtonList4.Text = dt.Rows[0][3].ToString();



        RadioButtonList1.Checked = false;
        RadioButtonList2.Checked = false;
        RadioButtonList3.Checked = false;
        RadioButtonList4.Checked = false;
    }


    protected void btnfinish_Click(object sender, EventArgs e)
    {
        //data inserted 
        string qr = "insert into result values("+ Session["TestId"] +","+ Session["User_id"]+"," + Session["true"] + "," + Session["false"] + ")";
        SqlCommand cmd = new SqlCommand(qr, con);
        cmd.ExecuteNonQuery();
        
        Response.Redirect("Test_Result.aspx");
    }
}