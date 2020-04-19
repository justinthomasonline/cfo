using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_HomeOtherAddEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            bindAlias();
            TitleTextBox.Focus();

            if (Request.QueryString["DelID"] != null)
            {
                string sql = "SElect * from HomeCourses where id='" + Request.QueryString["DelID"].ToString() + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "HomeCourses");
                DataRow row = ds.Tables["HomeCourses"].Rows[0];
                MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "HomeCourses");
                Response.Redirect("HomePage.aspx?Message=Successful Operation...&Color=Green");
            }

            if (Request.QueryString["Id"] != null)
            {
                string sql = "Select * From [dbo].[HomeCourses] Where id='" + Request.QueryString["id"] + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "HomeCourses");

                if (ds.Tables["HomeCourses"].Rows.Count > 0)
                {
                    DataRow row = ds.Tables["HomeCourses"].Rows[0];
                    SortTextBox.Text = row["Sort"].ToString();
                    TitleTextBox.Text = row["Title"].ToString();
                    ActiveCheckBox.Checked = bool.Parse(row["Active"].ToString());
                    EWDescriptionEditor.Text = row["Description"].ToString();

                    Alias.ClearSelection(); //making sure the previous selection has been cleared
                    Alias.Items.FindByText(row["Alias"].ToString()).Selected = true;
                    
                    if (!string.IsNullOrEmpty(row["FileName"].ToString()))
                    {
                        SliderImage.Visible = true;
                        SliderImage.Src = "../Uploadsall/HomeCourses/" + row["FileName"].ToString();
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
        string subPath = "../UploadsAll/HomeCourses"; // your code goes here

        bool exists = System.IO.Directory.Exists(Server.MapPath(subPath));

        if (!exists)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath));

        string FileName1 = "";
        if (SliderFileUpload.FileName != "")
        {
            FileName1 = System.IO.Path.GetFileName(SliderFileUpload.FileName);
            string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
            SliderFileUpload.SaveAs(Server.MapPath("../UploadsAll/HomeCourses/" + Date + "" + FileName1));
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
            MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "HomeCourses",
           "Title", TitleTextBox.Text.Replace("'", "`").ToString(),
           "Description", EWDescriptionEditor.Text.Replace("'", "`").ToString(),
           "FileName", FileName1,
           "Sort", int.Parse(SortTextBox.Text),
           "Alias", Alias.SelectedItem,
           "Active", ActiveCheckBox.Checked
           );

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "HomeCourses", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);
        }
        else
        {
            //insert into menu table
            MemoDataAccess.InsertRow("HomeCourses",
                TitleTextBox.Text.Replace("'", "`").Trim(),
                EWDescriptionEditor.Text.Replace("'", "`").Trim(),
                 FileName1,
                  int.Parse(SortTextBox.Text),
                  Alias.SelectedItem,
                ActiveCheckBox.Checked);

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "HomeCourses", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);
        }

        Response.Redirect("HomePage.aspx?Message=Successful Operation...&Color=Green");
    }

    private void bindAlias()
    {
        string sql = "Select * from Menus";
        DataSet ds = MemoDataAccess.GetData(sql, "Menus");

        if (ds.Tables.Count > 0)
        {
            Alias.Items.Clear();
            foreach (DataRow rows in ds.Tables["Menus"].Rows)
            {
                Alias.Items.Add(new ListItem(rows["Alias"].ToString(), rows["id"].ToString()));
            }
        }
        Alias.Items.Insert(0, new ListItem("#", "#"));
    }
}