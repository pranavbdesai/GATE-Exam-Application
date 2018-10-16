using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Test_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnilneTest.mdf;Integrated Security=True;User Instance=True");

        string str;

        str = "Select true from result where TestId=" + Session["TestId"] + " and User_Id=" + Session["User_Id"] + "   ";

        SqlCommand cmd = new SqlCommand(str, con);
       // int y = Convert.ToInt16(cmd.ExecuteScalar());

        con.Open();
        lblCorrectAnswers.Text = (cmd.ExecuteScalar().ToString());

        ////////////////////////////////////////////////////////

        //SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnilneTest.mdf;Integrated Security=True;User Instance=True");

        string str1;

        str1 = "Select false from result where TestId=" + Session["TestId"] + " and User_Id=" + Session["User_Id"] + "   ";

        SqlCommand cmd1 = new SqlCommand(str1, con);

        //con.Open();


        lblWrongAnswers.Text = cmd1.ExecuteScalar().ToString();

        /////////////////////////////////////////////////////////




        int j;
        j = Convert.ToInt16(lblCorrectAnswers.Text);

        if (j == 15)
        {
            lblgrade.Text = " Congratulation! You have passed this exam GRADE IS ";
            lblgrade1.Text = "AA ";

        }
        else if ((j >= 10) && (j < 15))
        {
            lblgrade.Text = "Congratulation! You have passed this exam  GRADE IS ";
            lblgrade1.Text = "BB ";

        }
        else if ((j >= 5) && (j < 10))
        {
            lblgrade.Text = "Congratulation! You have passed this exam  GRADE IS ";
            lblgrade1.Text = "CC";

        }

        else
        {
            lblgrade.Text = " Sorry! You have not cleared this exam  GRADE IS ";
            lblgrade1.Text = "FF";

        }





        SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnilneTest.mdf;Integrated Security=True;User Instance=True");

        string str2;

        // str2 = "Select Count(*) from Result_Master where TestId=" + Session["TestId"] + " and Result='False' and User_Id=" + Session["User_Id"] + "   ";

        str2 = "insert into Result_Grade(TestId,User_Id,User_name,Grade)values(" + Session["TestId"] + "," + Session["User_Id"] + ",'" + Session["UserName"] + "','" + lblgrade1.Text + "')  ";

        SqlCommand cmd2 = new SqlCommand(str2, con2);

       con2.Open();

        cmd2.ExecuteNonQuery();






    }
}