using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (Session["CAPTCHA"].ToString().Equals(SecurityCodeTextBox.Text))
        //{
        //    string tomail = "info@frontiertech.om";

        //    string body = "<html><body>";
        //    body += "<p style='color:#333092;font-weight:bold;'>Feedback Form</p>";
        //    body += "<table width='500' border='0' cellspacing='0' cellpadding='4' style='font-family:Verdana, Geneva, sans-serif; font-size:12px;'>";

        //    body += "<tr><td style='background-color:#d9d8fa;height:30px;width:200px;border-left:solid 1px #333092;border-right:solid 1px #333092;border-top:solid 1px #333092;'>Name: </td><td style='background-color:#ffffff;border-right:solid 1px #333092;border-top:solid 1px #333092;'>" + NameTextBox.Text + "</td></tr>";
        //    body += "<tr><td style='background-color:#d9d8fa;height:30px;width:200px;border-left:solid 1px #333092;border-right:solid 1px #333092;border-top:solid 1px #333092;'>Telephone: </td><td style='background-color:#ffffff;border-right:solid 1px #333092;border-top:solid 1px #333092;'>" + TelephoneTextBox.Text + "</td></tr>";
        //    body += "<tr><td style='background-color:#d9d8fa;height:30px;width:200px;border-left:solid 1px #333092;border-right:solid 1px #333092;border-top:solid 1px #333092;'>Company: </td><td style='background-color:#ffffff;border-right:solid 1px #333092;border-top:solid 1px #333092;'>" + CompanyTextBox.Text + "</td></tr>";
        //    body += "<tr><td style='background-color:#d9d8fa;height:30px;width:200px;border-left:solid 1px #333092;border-right:solid 1px #333092;border-top:solid 1px #333092;'>Email: </td><td style='background-color:#ffffff;border-right:solid 1px #333092;border-top:solid 1px #333092;'>" + emailTextBox.Text + "</td></tr>";
        //    body += "<tr><td style='background-color:#d9d8fa;height:30px;width:200px;border-left:solid 1px #333092;border-right:solid 1px #333092;border-top:solid 1px #333092;'>Country: </td><td style='background-color:#ffffff;border-right:solid 1px #333092;border-top:solid 1px #333092;'>" + CountryDropDown.Value + "</td></tr>";
        //    body += "<tr><td style='background-color:#d9d8fa;height:30px;width:200px;border-left:solid 1px #333092;border-right:solid 1px #333092;border-top:solid 1px #333092;'>Message: </td><td style='background-color:#ffffff;border-right:solid 1px #333092;border-top:solid 1px #333092;'>" + Message.Value + "</td></tr>";
        //    body += "<tr><td style='background-color:#d9d8fa;height:30px;width:200px;border-left:solid 1px #333092;border-right:solid 1px #333092;border-top:solid 1px #333092;border-bottom:solid 1px #333092;'>IP Address: </td><td style='background-color:#ffffff;border-right:solid 1px #333092;border-top:solid 1px #333092;border-bottom:solid 1px #333092;'>" + Request.UserHostName + "</td></tr>";

        //    body += "</table>";
        //    body += "</body>";
        //    body += "</html>";

        //    EmailHelper.SendEmail("", tomail, "techsupport1@gulfcybertech.com", "", "Contact US Form", body);

        //    DataAccess.InsertRow("ContactForm", new string[]{
        //        NameTextBox.Text,
        //        TelephoneTextBox.Text,
        //        CompanyTextBox.Text,
        //        emailTextBox.Text,
        //        CountryDropDown.Value,
        //        Message.Value

        //    });

        //    ClientScript.RegisterStartupScript(this.GetType(), "alert" + Guid.NewGuid().ToString(), "ShowPopup();", true);
        //    this.lblMessage.Text = "Your feedback is sent successfully.Thank You";


        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "alert" + Guid.NewGuid().ToString(), "ShowPopup();", true);
        //    this.lblMessage.Text = "Invalid Security Code";

        //}
    }
}