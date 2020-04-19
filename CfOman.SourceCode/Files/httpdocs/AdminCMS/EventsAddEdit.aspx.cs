using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_EventsAddEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {

                string sql = "Select * From [dbo].[CultureEvents] Where id='" + Request.QueryString["id"] + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "CultureEvents");

                if (ds.Tables["CultureEvents"].Rows.Count > 0)
                {
                    DataRow row = ds.Tables["CultureEvents"].Rows[0];
                    SortTextBox.Text = row["Sort"].ToString();
                    TitleTextBox.Text = row["Title"].ToString();
                    ActiveCheckBox.Checked = bool.Parse(row["Active"].ToString());
                    EWDescriptionEditor.Text = row["Description"].ToString();
                    EventDatetimeTextBox.Text = Convert.ToDateTime(row["EventsDate"]).ToString("dd/MM/yyyy HH:mm").Replace('-', '/');

                    if (!string.IsNullOrEmpty(row["FileName"].ToString()))
                    {
                        SliderImage.Visible = true;
                        SliderImage.Src = "../Uploadsall/Events/" + row["FileName"].ToString();
                        SliderfileName.Value = row["FileName"].ToString();
                    }
                    else
                    {
                        SliderfileName.Value = "";
                    }
                }
            }
        }
    }

    protected void btnPublish_Click(object sender, EventArgs e)
    {
        string subPath = "../UploadsAll/Events"; // your code goes here

        bool exists = System.IO.Directory.Exists(Server.MapPath(subPath));

        if (!exists)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath));

        string FileName1 = "";
        if (SliderFileUpload.FileName != "")
        {
            FileName1 = System.IO.Path.GetFileName(SliderFileUpload.FileName);
            string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
            SliderFileUpload.SaveAs(Server.MapPath("../UploadsAll/Events/" + Date + "" + FileName1));
            FileName1 = Date + "" + FileName1;
        }
        else
        {
            FileName1 = SliderfileName.Value;
        }

        string paramnew1 =
           TitleTextBox.Text.Replace("'", "`").Trim() + "<br/>" +
           EWDescriptionEditor.Text.Replace("'", "`").Trim() + "<br/>" +
             int.Parse(SortTextBox.Text) + "<br/>" + EventDatetimeTextBox.Text.Trim() + "<br/>" +
             FileName1;

        if (Request.QueryString["id"] != null)
        {
            MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "CultureEvents",
           "Title", TitleTextBox.Text.Replace("'", "`").ToString(),
           "Description", EWDescriptionEditor.Text.Replace("'", "`").ToString(),
           "FileName", FileName1,
           "Sort", int.Parse(SortTextBox.Text),
           "EventsDate", DateTime.ParseExact(EventDatetimeTextBox.Text.Trim(), "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture),
            "Active", ActiveCheckBox.Checked,
            "Mo_Date", DateTime.Now,
            "AddedBy", Session["UserSession"].ToString()
            );

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "CultureEvents", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);
        }
        else
        {
            //insert into menu table
            MemoDataAccess.InsertRow("CultureEvents",
                TitleTextBox.Text.Replace("'", "`").Trim(),
                EWDescriptionEditor.Text.Replace("'", "`").Trim(),
                 FileName1,
                  int.Parse(SortTextBox.Text),
                  DateTime.ParseExact(EventDatetimeTextBox.Text.Trim(), "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture),
                ActiveCheckBox.Checked, DateTime.Now, DateTime.Now, Session["UserSession"].ToString());

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "CultureEvents", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);
        }

        Response.Redirect("Events.aspx?Message=Successful Operation...&Color=Green");
    }
}