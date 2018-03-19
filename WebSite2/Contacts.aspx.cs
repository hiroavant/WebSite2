using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contacts : System.Web.UI.Page
{
    protected void btnContactSubmit_Click(object sender, EventArgs e)
    {
        //sends email usinig a mail server that requires login credentials and a secure connection e.g. email

        //create mail client and message with to and from address set message subject and body 
        SmtpClient smtpClient = new SmtpClient();
        MailMessage msg = new MailMessage("exploreravant@gmail.co", "");
        msg Subject = txtSubject_Text;
        msg Body = txtBody_Text;

        //settings specific to the mail service, e.g. server location, port number and that ssl is required
        smtpClient Host = "smtp.gmail.com";
        smtpClient Port = 587;
        smtpClient EnableSsl = true;

        //create credentials  - e.g. username and password for the account
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("exploreravant@gmail.com", "");
        smtpClient Credentials = credentials;
        msg = new MailMessage("exploreravant@gmail.com","");

        try
        {
            smtpClient.Send(msg);
            litResult.Text = "<p>Success. Mail sent using SMTP with secure connection and credentials</p>";
        }
        
        catch(Exception ex)
        {
            //display the full error to the user
            litResult.Text = "<p>" + ex.Message + "." + ex.InnerException + "</p>";
        }
    }
}