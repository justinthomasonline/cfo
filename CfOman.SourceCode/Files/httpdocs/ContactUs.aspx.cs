using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["CAPTCHA"] != null)
            {
                if (Session["CAPTCHA"].ToString() != "")
                {
                    if (Session["CAPTCHA"].ToString().Equals(SecurityCodeLoginTextBox.Text))
                    {
                        string id = DataAccess.Insert("FrontContactUs", new string[] {
                                  FullName.Text.Trim().Replace("'", ""),
                                  EmailIDTextBox.Text.Trim().Replace("'", ""),
                                  PhoneNoTextBox.Text.Trim().Replace("'", ""),
                                  CommentTextBox.Text.Trim().Replace("'", ""),
                                  DateTime.Now.ToString()
                                 });


                        string body1 = "";
                        body1 += "";

                        body1 += @"    
                      <p style='font-size:18px;color:rgb(214, 224, 40);'><strong>Contact Us Form</strong></p>
        <table cellpadding='1' width='100%' border='1' style='border-collapse:collapse' cellspacing='1'>
        <tr><td width='34%' height='35'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'><strong>Full Name</strong></font></td><td width='63%' bgcolor='#ffffff'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'>" + FullName.Text.Trim().Replace("'", "") + @"</font></td></tr>
        <tr><td width='34%' height='35'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'><strong>Email</strong></font></td><td width='63%' bgcolor='#ffffff'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'>" + EmailIDTextBox.Text.Trim().Replace("'", "") + @"</font></td></tr>
        <tr><td width='34%' height='35'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'><strong>Telephone</strong></font></td><td width='63%' bgcolor='#ffffff'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'>" + PhoneNoTextBox.Text.Trim().Replace("'", "") + @"</font></td></tr>
        <tr><td width='34%' height='35'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'><strong>Comment </strong></font></td><td width='63%' bgcolor='#ffffff'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'>" + CommentTextBox.Text.Trim().Replace("'", "") + @"</font></td></tr>
        </table>";

                        EmailHelper.SendEmail(EmailIDTextBox.Text.Trim().Replace("'", ""), "techsupport1@gulfcybertech.com", "", "", "Contact Form", body1);

                        Response.Write("<script>alert('Thank you for submitting your details');window.location='home';</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Security Code!');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Security Code!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Security Code!');</script>");
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
}