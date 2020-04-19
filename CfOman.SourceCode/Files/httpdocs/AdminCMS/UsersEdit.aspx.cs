using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
using System.Text.RegularExpressions;
public partial class cms_UsersEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool check = true;
            string UserId = MemoSqlInjection.CancellationOfNonAcceptableSqlStatements(Request.QueryString["id"], ref check);

            string sql = "Select * From CMSUsers Where id='" + UserId + "'";
            DataSet ds = MemoDataAccess.GetData(sql, "CMSUsers");

            DataRow row = ds.Tables["CMSUsers"].Rows[0];

            UserNameTextBox.Text = row["Username"].ToString();
            PasswordTextBox.Text = row["Password"].ToString();

            string[] Permissions = row["Permissions"].ToString().Split(',');

            if (Permissions.Contains("Menus.aspx")) MenusCheckBox.Checked = true;                      
            if (Permissions.Contains("HomePage.aspx")) HomePageCheckBox.Checked = true;
            if (Permissions.Contains("Events.aspx")) EventsCheckBox.Checked = true;
            if (Permissions.Contains("Logs.aspx")) LogsCheckBox.Checked = true;
            if (Permissions.Contains("Users.aspx")) UsersCheckBox.Checked = true;
            if (Permissions.Contains("ContactUs.aspx")) ContactUsCheckBox.Checked = true;
            if (Permissions.Contains("Newsletter.aspx")) NewsletterCheckBox.Checked = true;
            if (Permissions.Contains("PastEvents.aspx")) PastEventsCheckBox.Checked = true;

            DisplayNameTextBox.Text = row["Name"].ToString();
            EmailIDTextBox.Text = row["EmailID"].ToString();
            PhoneNoTextBox.Text = row["PhoneNo"].ToString();
           
            ActiveCheckBox.Checked = bool.Parse(row["Active"].ToString());          
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

        if (PasswordTextBox.Text != "")
        {
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
        }

        if (Pass)
        {
            string sql = "Select * From CMSUsers Where id !='" + Request.QueryString["id"] + "' and Username='" + UserNameTextBox.Text.Replace("'", "") + "'";
            DataSet ds = MemoDataAccess.GetData(sql, "Users");
            if (ds.Tables["Users"].Rows.Count == 0)
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

                if (PasswordTextBox.Text != "")
                {
                    MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "CMSUsers",
                        "Name", DisplayNameTextBox.Text.Replace("'", "`"),
                        "Username", UserNameTextBox.Text.Replace("'", "`"),
                        "Password", md5(PasswordTextBox.Text.Replace("'", "")),
                        "History", md5(PasswordTextBox.Text.Replace("'", "")),
                        "Permissions", Permissions,
                        "Active",ActiveCheckBox.Checked,
                        "EmailID",EmailIDTextBox.Text.Replace("'", ""),
                        "PhoneNo", PhoneNoTextBox.Text.Replace("'", "`"),
                       
                        "AddedBy", Session["UserSession"].ToString(),
                        "Mo_Date",DateTime.Now
                        );

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
                 PhoneNoTextBox.Text.Replace("'", "`") + "<br/>" +
               
                 Request.QueryString["id"];

               MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "CMSUsers", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);
                }
                else
                {
                    MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "CMSUsers",
                        "Name", DisplayNameTextBox.Text.Replace("'", "`"),
                        "Username", UserNameTextBox.Text.Replace("'", "`"),
                        "Permissions", Permissions,
                        "Active", ActiveCheckBox.Checked,
                        "EmailID", EmailIDTextBox.Text.Replace("'", ""),
                        "PhoneNo", PhoneNoTextBox.Text.Replace("'", "`"),
                       
                        "AddedBy", Session["UserSession"].ToString(),
                        "Mo_Date", DateTime.Now);

                    string paramnew1 =
               DisplayNameTextBox.Text.Replace("'", "`") + "<br/>" +
               UserNameTextBox.Text.Replace("'", "`") + "<br/>" +
               DateTime.Now + "<br/>" +
               DateTime.Now + "<br/>" +
               Permissions + "<br/>" +
               ActiveCheckBox.Checked + "<br/>" +
               EmailIDTextBox.Text.Replace("'", "`") + "<br/>" +
               PhoneNoTextBox.Text.Replace("'", "`") + "<br/>" +

               Request.QueryString["id"];
              

               MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "CMSUsers", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);

                }
               

               
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