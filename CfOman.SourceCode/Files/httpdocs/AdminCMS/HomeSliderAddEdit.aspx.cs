using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_HomeSliderAddEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            TitleTextBox.Focus();

            if (Request.QueryString["DelID"] != null)
            {
                string sql = "SElect * from HomeSliderSection where id='" + Request.QueryString["DelID"].ToString() + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "HomeSliderSection");
                DataRow row = ds.Tables["HomeSliderSection"].Rows[0];
                MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "HomeSliderSection");
                Response.Redirect("HomePage.aspx?Message=Successful Operation...&Color=Green");
            }

            if (Request.QueryString["Id"] != null)
            {
                string sql = "Select * From [dbo].[HomeSliderSection] Where id='" + Request.QueryString["id"] + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "HomeSlider");

                if (ds.Tables["HomeSlider"].Rows.Count > 0)
                {
                    DataRow row = ds.Tables["HomeSlider"].Rows[0];
                    SortTextBox.Text = row["Sort"].ToString();
                    TitleTextBox.Text = row["Title"].ToString();
                    ActiveCheckBox.Checked = bool.Parse(row["Active"].ToString());
                    EWDescriptionEditor.Text = row["Description"].ToString();
                   
                    if (!string.IsNullOrEmpty(row["FileName"].ToString()))
                    {
                        SliderImage.Visible = true;
                        SliderImage.Src = "../Uploadsall/HomeSlider/" + row["FileName"].ToString();
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
        string subPath = "../UploadsAll/HomeSlider"; // your code goes here

        bool exists = System.IO.Directory.Exists(Server.MapPath(subPath));

        if (!exists)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath));

        string FileName1 = "";
        if (SliderFileUpload.FileName != "")
        {
            FileName1 = System.IO.Path.GetFileName(SliderFileUpload.FileName);
            string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
            SliderFileUpload.SaveAs(Server.MapPath("../UploadsAll/HomeSlider/" + Date + "" + FileName1));
            FileName1 = Date + "" + FileName1;
        }
        else
        {
            FileName1 = SliderfileName.Value;
        }

        string paramnew1 =
           TitleTextBox.Text.Replace("'", "`").Trim() + "<br/>" +
           EWDescriptionEditor.Text.Replace("'", "`").Trim() + "<br/>" +
             int.Parse(SortTextBox.Text) + "<br/>" +
             FileName1;

        if (Request.QueryString["id"] != null)
        {
            MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "HomeSliderSection",
           "Title", TitleTextBox.Text.Replace("'", "`").ToString(),
           "Description", EWDescriptionEditor.Text.Replace("'", "`").ToString(),
           "FileName", FileName1,
           "Sort", int.Parse(SortTextBox.Text),
           "Active", ActiveCheckBox.Checked,
           "Alias", string.Empty
           );

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "HomeSliderSection", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);
        }
        else
        {
            //insert into menu table
            MemoDataAccess.InsertRow("HomeSliderSection",
                TitleTextBox.Text.Replace("'", "`").Trim(),
                EWDescriptionEditor.Text.Replace("'", "`").Trim(),
                 FileName1,
                  int.Parse(SortTextBox.Text),
                ActiveCheckBox.Checked, string.Empty);

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "HomeSliderSection", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);
        }

        Response.Redirect("HomePage.aspx?Message=Successful Operation...&Color=Green");
    }
}