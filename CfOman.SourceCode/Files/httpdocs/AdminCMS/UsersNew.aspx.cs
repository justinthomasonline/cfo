using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
using System.Text.RegularExpressions;
public partial class cms_UsersNew : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Pass = true;
        string Message = "";

        if (UserNameTextBox.Text.Replace("'", "").Length < 4 || UserNameTextBox.Text.Replace("'", "").Length > 12)
        {
            Pass = false;
            Message = "<b>Username</b> Length must be 4 characters minimum, 12 characters maximum";
        }

        if (!Regex.IsMatch(PasswordTextBox.Text.Replace("'", ""), @"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}$"))
        {
            Pass = false;
            if (Message == "")
                Message = "<b>Password</b> must be alphanumeric, Lower and upper case combined, length is minimum 6 characters and maximum 15 characters";
            else
                Message += "<br /><b>Password</b> must be alphanumeric, Lower and upper case combined, length is minimum 6 characters and maximum 15 characters";
        }

        if (UserNameTextBox.Text.Replace("'", "") == PasswordTextBox.Text.Replace("'", ""))
        {
            Pass = false;
            Message = "<b>Password</b> should not be the same as username";
        }

        if (Pass)
        {
            string UserName = UserNameTextBox.Text.Replace("'", "");
            string sql = "select * from CMSUsers where Username='" + UserName + "'";
            DataSet ds = MemoDataAccess.GetData(sql, "CMSUsers");

            if (ds.Tables["CMSUsers"].Rows.Count == 0)
            {
                string Permissions = "";
                
                if (MenusCheckBox.Checked) Permissions += "Menus.aspx,MenusNew.aspx,MenusEdit.aspx,";
                if (HomePageCheckBox.Checked) Permissions += "HomePage.aspx,";
                if (EventsCheckBox.Checked) Permissions += "Events.aspx,";
                if (LogsCheckBox.Checked) Permissions += "Logs.aspx,LogsView.aspx,";
                if (UsersCheckBox.Checked) Permissions += "Users.aspx,UsersNew.aspx,UsersEdit.aspx,";
                if (ContactUsCheckBox.Checked) Permissions += "ContactUs.aspx,";
                if (NewsletterCheckBox.Checked) Permissions += "Newsletter.aspx,";
                if (PastEventsCheckBox.Checked) Permissions += "PastEvents.aspx,";

                if (Permissions != "")
                    Permissions = Permissions.Substring(0, Permissions.Length - 1);

                MemoDataAccess.InsertRow("CMSUsers",
                  DisplayNameTextBox.Text.Replace("'", "`"),
                  UserNameTextBox.Text.Replace("'", "`"),
                  md5(PasswordTextBox.Text.Replace("'", "")),
                  md5(PasswordTextBox.Text.Replace("'", "")),
                  DateTime.Now, DateTime.Now,
                  Permissions,ActiveCheckBox.Checked,
                  EmailIDTextBox.Text.Replace("'", "`"),
                  PhoneNoTextBox.Text.Replace("'", "`"),
                  "",
                  "",
                  Session["UserSession"].ToString(), "");

                string paramnew1 =
                  DisplayNameTextBox.Text.Replace("'", "`") + "<br/>" +
                  UserNameTextBox.Text.Replace("'", "`") + "<br/>" +
                  md5(PasswordTextBox.Text.Replace("'", "")) + "<br/>" +
                  md5(PasswordTextBox.Text.Replace("'", "")) + "<br/>" +
                  DateTime.Now + "<br/>" +
                  DateTime.Now + "<br/>" +
                  Permissions + "<br/>" + 
                  ActiveCheckBox.Checked + "<br/>" +
                  EmailIDTextBox.Text.Replace("'", "`") + "<br/>" +
                  PhoneNoTextBox.Text.Replace("'", "`");

                MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "CMSUsers", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);

                Response.Redirect("Users.aspx?Message=Successful Operation...&Color=Green");
            }
            else
            {
                ErrorLabel.Visible = true;
                ErrorLabel.Text = "Duplicate User was found !";
            }
        }
        else
        {
            ErrorLabel.Visible = true;
            ErrorLabel.Text = Message;
        }
    }
    private string md5(string sPassword)
    {
        System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(sPassword);
        bs = x.ComputeHash(bs);
        System.Text.StringBuilder s = new System.Text.StringBuilder();
        foreach (byte b in bs)
        {
            s.Append(b.ToString("x2").ToLower());
        }
        return s.ToString();
    }
}