using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            string sql = "SELECT * FROM [dbo].[ContactUs] Where Id = 1 Order by id desc";
            DataSet ds = MemoDataAccess.GetData(sql, "ContactUs");

            if (ds.Tables["ContactUs"].Rows.Count > 0)
            {
                DataRow row = ds.Tables["ContactUs"].Rows[0];
                AddressTextBox.Text = row["Address"].ToString();
                EmailIDTextBox.Text = row["Email"].ToString();
                TelTextbox.Text = row["MobileNo"].ToString();
                WhatsappEditor.Text = row["WhatsappNo"].ToString();
                FacebookTextbox.Text = row["FacebookLink"].ToString();
                FacebookTitle.Text = row["FacebookTitle"].ToString();
                InstagramTextbox.Text = row["InstaLink"].ToString();
                InstagramTitle.Text = row["InstaTitle"].ToString();
                YoutubeTextbox.Text = row["YoutubeLink"].ToString();
                YoutubeTitle.Text = row["YoutubeTitle"].ToString();
                WorkingHoursEditor.Text = row["WorkingHours"].ToString();
            }
        }
    }

    protected void btnPublish_Click(object sender, EventArgs e)
    {
        int id = 0;
        string sql = "SELECT * FROM [dbo].[ContactUs] Where Id = 1 Order by id desc";
        DataSet ds = MemoDataAccess.GetData(sql, "ContactUs");

        if (ds.Tables["ContactUs"].Rows.Count > 0)
        {
            DataRow row = ds.Tables["ContactUs"].Rows[0];
            id = Convert.ToInt32(row["id"].ToString());
        }

        string paramnew1 =
            AddressTextBox.Text.Replace("'", "`").Trim() + "<br/>" +
             EmailIDTextBox.Text.Replace("'", "`").Trim() + "<br/>" +
             TelTextbox.Text.Replace("'", "`").Trim() + "<br/>" +
             WhatsappEditor.Text.Replace("'", "`").Trim() + "<br/>" +
                FacebookTextbox.Text.Replace("'", "`").Trim() + "<br/>" +
                FacebookTitle.Text.Replace("'", "`").Trim() + "<br/>" +
                InstagramTextbox.Text.Replace("'", "`").Trim() + "<br/>" +
                InstagramTitle.Text.Replace("'", "`").Trim() + "<br/>" +
                YoutubeTextbox.Text.Replace("'", "`").Trim() + "<br/>" +
                YoutubeTitle.Text.Replace("'", "`").Trim() + "<br/>" + WorkingHoursEditor.Text.Replace("'", "`").Trim();

        if (id != 0)
        {
            MemoDataAccess.UpdateRow(id, "id", "ContactUs",
           "Address", AddressTextBox.Text.Replace("'", "`").ToString(),
           "Email", EmailIDTextBox.Text.Replace("'", "`").Trim(),
           "MobileNo", TelTextbox.Text.Replace("'", "`").ToString(),
           "WhatsappNo", WhatsappEditor.Text.Replace("'", "`").Trim(),
           "FacebookLink", FacebookTextbox.Text.Replace("'", "`").ToString(),
           "FacebookTitle", FacebookTitle.Text.Replace("'", "`").Trim(),
           "InstaLink", InstagramTextbox.Text.Replace("'", "`").ToString(),
           "InstaTitle", InstagramTitle.Text.Replace("'", "`").Trim(),
           "YoutubeLink", YoutubeTextbox.Text.Replace("'", "`").Trim(),
           "YoutubeTitle", YoutubeTitle.Text.Replace("'", "`").Trim(),
           "WorkingHours", WorkingHoursEditor.Text.Replace("'", "`").Trim(),
           "Mo_Date", DateTime.Now,
           "AddedBy", Session["UserSession"].ToString()
           );

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "ContactUs", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);
        }
        else
        {
            //insert into menu table
            MemoDataAccess.InsertRow("ContactUs",
                AddressTextBox.Text.Replace("'", "`").Trim(),
                EmailIDTextBox.Text.Replace("'", "`").Trim(),
                TelTextbox.Text.Replace("'", "`").Trim(),
                 WhatsappEditor.Text.Replace("'", "`").Trim(),
                FacebookTextbox.Text.Replace("'", "`").Trim(),
                FacebookTitle.Text.Replace("'", "`").Trim(),
                InstagramTextbox.Text.Replace("'", "`").Trim(),
                InstagramTitle.Text.Replace("'", "`").Trim(),
                YoutubeTextbox.Text.Replace("'", "`").Trim(),
                YoutubeTitle.Text.Replace("'", "`").Trim(),
                WorkingHoursEditor.Text.Replace("'", "`").Trim(),
                DateTime.Now,
                Session["UserSession"].ToString());

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "ContactUs", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);
        }

        Response.Redirect("ContactUs.aspx?Message=Successful Operation...&Color=Green");
    }
}