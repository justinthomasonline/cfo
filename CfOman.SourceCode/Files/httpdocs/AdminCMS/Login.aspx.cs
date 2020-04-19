using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;


public partial class gctcms_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (Session["CAPTCHA"].ToString().Equals(SecurityCodeTextBox.Text))
        {
            bool check = true;
        string UserName = MemoSqlInjection.CancellationOfNonAcceptableSqlStatements(usernameInput.Value, ref check);
        string Password = passwordInput.Value;

        string sql = "select * from CMSUsers where Username='" + UserName + "' and Password='" + md5(Password) + "'";
        DataSet ds = MemoDataAccess.GetData(sql, "CMSUsers");

        if (ds.Tables[0].Rows.Count != 0)
        {
            DataRow row = ds.Tables[0].Rows[0];

            if (row["Active"].ToString() == "True")
            {
                    MemoDataAccess.DeleteRow(int.Parse(row["id"].ToString()), "UserID", "CMSLoginAttempts");                              
                    Session["UserSession"] = row["id"].ToString();
                if (row["Name"].ToString() != "")
                {
                    Session["UsernameSession"] = row["Name"].ToString();
                }
                else
                {
                    Session["UsernameSession"] = row["Username"].ToString();
                }
                    Session["NeedsApproval"]= row["NeedsApproval"].ToString();             
                    
                    //track login

                   string Param="cms"+"<br/>"+Session["UserSession"].ToString()+"<br/>"+Session["UsernameSession"].ToString()
                       +"<br/>"+DateTime.Now.ToString("dd/MMM/yyyy hh:mm:ss tt")
                       +"<br/>"+Request.UserHostAddress ;


                //MemoDataAccess.InsertRow("CMSLOGSLOGIN1", Param);
                MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Login", "Login", Param, DateTime.Now, Request.UserHostAddress);

                Response.Redirect("Default.aspx");
                //}
            }
            else
                MessageLabel.Text = "Your account has been blocked, please contact the administrator";
        }
        else
        {
            MessageLabel.Text = "Invalid User Name or Password";

            sql = "select * from CMSUsers where Username='" + UserName + "'";
            ds = MemoDataAccess.GetData(sql, "CMSUsers");

            if (ds.Tables[0].Rows.Count != 0)
            {
                if (ds.Tables[0].Rows[0]["Active"].ToString() == "True")
                {
                    string UserID = ds.Tables[0].Rows[0]["id"].ToString();
                    string sqlAtt = "SElect count(*) as Attempts from CMSLoginAttempts where UserID='" + UserID + "'";
                    DataSet dsAtt = MemoDataAccess.GetData(sqlAtt, "CMSLoginAttempts");
                    if (dsAtt.Tables[0].Rows.Count > 0)
                    {
                        if (int.Parse(dsAtt.Tables[0].Rows[0]["Attempts"].ToString()) >= 2)
                        {
                            MemoDataAccess.UpdateRow(int.Parse(UserID), "id", "CMSUsers", "Active", "False");
                            MemoDataAccess.DeleteRow(int.Parse(UserID), "UserID", "CMSLoginAttempts");
                            MessageLabel.Text = "Your account has been blocked, please contact the administrator";
                        }
                        else
                            MemoDataAccess.InsertRow("CMSLoginAttempts", UserID, DateTime.Now.ToString("dd/MMM/yyyy"));
                    }
                    else
                        MemoDataAccess.InsertRow("CMSLoginAttempts", UserID, DateTime.Now.ToString("dd/MMM/yyyy"));        
                        
                }
                else
                    MessageLabel.Text = "Your account has been blocked, please contact the administrator";
            }
        }
        }
        else
        {
            MessageLabel.Text = "Invalid Security Code entered !";
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