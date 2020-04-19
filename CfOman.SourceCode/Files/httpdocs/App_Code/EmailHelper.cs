using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Configuration;


public class EmailHelper
{

    public static string EmailHost = "192.185.105.199";
    public static string EmailPort = "25";
    public static string EmailUserName = "sender@gctoman.com";
    public static string EmailPassword = "sender2015";



    public static void SendEmail(string From_Email, string To_Email, string CC_Email, string BCC_Email, string subject, string emailbody)
    {
        if (To_Email.Trim() != "")
        {
            try
            {
                MailMessage message = new MailMessage();
                MailAddress fromAddress = new MailAddress(EmailUserName, "CFO");
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Host = EmailHost;
                smtpClient.Port = int.Parse(EmailPort);
                System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential(EmailUserName, EmailPassword);
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = SMTPUserInfo;
                message.From = fromAddress;
                message.To.Add(To_Email);
                if (BCC_Email != "")
                    message.Bcc.Add(BCC_Email);
                if (CC_Email != "")
                    message.CC.Add(CC_Email);
                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = emailbody;
                smtpClient.Send(message);
            }
            catch (Exception ex)
            {
            }
        }
    }    

}