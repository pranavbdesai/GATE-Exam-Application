using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SelectTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUser.Text = Session["UserName"].ToString();
        


        if (Page.IsPostBack == false)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnilneTest.mdf;Integrated Security=True;User Instance=True");

            string str = "select * from Test_Master";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();

            SqlDataReader dr;

            dr = cmd.ExecuteReader();

            RadioButtonList1.DataSource = dr;

            RadioButtonList1.DataTextField = "TestName";

            RadioButtonList1.DataValueField = "TestId";

            RadioButtonList1.DataBind();
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        lblMsg.Text = "";

        int i = Convert.ToInt32(RadioButtonList1.SelectedItem.Value);



        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnilneTest.mdf;Integrated Security=True;User Instance=True");

        String str = "Select Count(TestId) from Result_Master where User_id=" + Convert.ToInt16(Session["User_Id"]) + " and TestId=" + i + "";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();

        int j = Convert.ToInt16(cmd.ExecuteScalar());

        if (j == 0)
        {
            Session["TestId"] = i;

        }
        else
        {
            lblMsg.Text = "You have already given this test Please choose another one..";
        }

        Session["TestId"] = i;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {


        Response.Redirect("OnlineTest.aspx");


        if (RadioButtonList1.SelectedItem.Value == null)
        {
            lblMsg.Text = "Please select any Test Category";
        }
        else
        {
            if (lblMsg.Text == "You have already given this test Please choose another one..")
            {
                lblMsg.Text = "You can not start this test plz choose another test...";
            }
            else
            {

            }
        }




    }
}