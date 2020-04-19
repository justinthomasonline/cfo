using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "Select * From Home Where id = 1";
            DataSet ds = MemoDataAccess.GetData(sql, "Home");

            string sql1 = "SELECT COUNT(1) as IsExist FROM [dbo].[HomeCultureEvents] Where Active = 'True'";
            DataSet ds1 = MemoDataAccess.GetData(sql1, "HomeCultureEvents");

            if(ds1.Tables["HomeCultureEvents"].Rows.Count > 0)
            {
                DataRow row1 = ds1.Tables["HomeCultureEvents"].Rows[0];
                if (Convert.ToInt32(row1["IsExist"]) > 0)
                {
                    hfWhatonCount.Value = "0";
                }
                else
                {
                    hfWhatonCount.Value = "1";
                }
            }

            if (ds.Tables["Home"].Rows.Count > 0)
            {
                DataRow row = ds.Tables["Home"].Rows[0];

                if (Convert.ToBoolean(row["IsVisibleNewsLetter"]))
                {
                    NewsLetterSection.Visible = true;
                }
                else
                {
                    NewsLetterSection.Visible = false;
                }
            }
        }
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
                        string id = DataAccess.Insert("FooterContactEmail", new string[] {
                                  EmailIDTextBox.Text.Trim().Replace("'", ""),
                                  DateTime.Now.ToString()
                                 });

                        string body1 = "";
                        body1 += "";

                        body1 += @"    
                      <p style='font-size:18px;color:rgb(214, 224, 40);'><strong>Contact Us Form</strong></p>
        <table cellpadding='1' width='100%' border='1' style='border-collapse:collapse' cellspacing='1'>
        <tr><td width='34%' height='35'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'><strong>Email</strong></font></td><td width='63%' bgcolor='#ffffff'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'>" + EmailIDTextBox.Text.Trim().Replace("'", "") + @"</font></td></tr>
        <tr><td colspan='2' width='63%' bgcolor='#ffffff'><font color=000000 size=2 face='Verdana, Arial, Helvetica, sans-serif'>we will contact you shortly</font></td></tr>
        </table>";

                        EmailHelper.SendEmail(EmailIDTextBox.Text.Trim().Replace("'", ""), "techsupport1@gulfcybertech.com", "", "", "Contact", body1);

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
