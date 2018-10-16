using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using conn;

public partial class ForgetPassword: System.Web.UI.Page
{

    Connection c = new Connection();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPass_Click(object sender, EventArgs e)
    {
        dt = c.gettable("SELECT User_name, Password, Email FROM User_Master WHERE Email='" + txtMail.Text + "'");


        if (dt.Rows.Count != 0)
        {
            string pass = dt.Rows[0][1].ToString();
            string user = dt.Rows[0][0].ToString();
            string email = dt.Rows[0][2].ToString();

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage("pranavbdesai20@gmail.com", email);
            mail.Subject = "GATE Guru Auto Password Recovery";
            mail.Body = "<b>" + "Thank You " + "</b>" + user + "<br><br><br>" + "<b>" + " Purpose of mail is: " + "</b>" + "<br><br><br> <h3>Your Forgotten Password Recovery </h3> <br><br><br>" + "Your Password is : <b>" + pass + "</b>";
            mail.IsBodyHtml = true;


            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("pranavbdesai20@gmail.com", "Pbdesai@1992");
            client.Port = 587; // Gmail works on this port
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true; //Gmail works on Server Secured Layer
            try
            {
                client.Send(mail);
                Response.Write("<script>alert('We had already sent mail of your password on id :" + email + "')</script>");

            }
            catch (Exception error)
            {
                throw error;
            }

        }
        else
        {
            Response.Write("<script>alert('Not a registerd User, Enter Your Registered Email only.')</script>");


        }
    }
}