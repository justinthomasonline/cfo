using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
public partial class cms_BannerEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserSession"] == null)
                Response.Redirect("Login.aspx");


            if (Request.QueryString["DelID"] != null)
            {
                string sql = "SElect * from Section where id='" + Request.QueryString["DelID"].ToString() + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "Sections");
                DataRow row = ds.Tables["Sections"].Rows[0];
                MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "Section");
                Response.Redirect("PagesEdit.aspx?id=" + Request.QueryString["pageid"] + "&Message=Successful Operation...&Color=Green");
            }

            if (Request.QueryString["Id"] != null)
            {
                string sql = "Select * From Section Where id='" + Request.QueryString["id"] + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "Sections");
                DataRow row = ds.Tables["Sections"].Rows[0];

                SortTextBox.Text = row["Sort"].ToString();
                MainTitleTextBox.Text = row["Title"].ToString();
                DetailEditor.Text = row["Details"].ToString();
                Description.Text = row["Description"].ToString();
                IsContentInBox.Checked = Convert.ToBoolean(row["IsContentInBox"]);
                IsContentInBlueBackground.Checked = Convert.ToBoolean(row["IsContentInBlueBackground"]);
                ActiveCheckBox.Checked = Convert.ToBoolean(row["Active"]);
                SourceEditor.Text = row["Sources"].ToString();
                if (!string.IsNullOrEmpty(row["FileName"].ToString()))
                {
                    InnerImage.Visible = true;
                    InnerImage.Src = "../Uploadsall/Pages/" + row["FileName"].ToString();
                    FileName.Value = row["FileName"].ToString();
                }
                else
                {
                    FileName.Value = "";
                }

                if (!string.IsNullOrEmpty(row["UploadFile"].ToString()))
                {
                    File.Visible = true;
                    File.HRef = "../Uploadsall/PagesFiles/" + row["UploadFile"].ToString();
                    hf_UploadFile.Value = row["UploadFile"].ToString();
                }
                else
                {
                    hf_UploadFile.Value = "";
                }
            }
        }
    }
    protected void btnPublish_Click(object sender, EventArgs e)
    {
        string subPath = "../UploadsAll/Pages"; // your code goes here
        string subPath1 = "../UploadsAll/PagesFiles"; // your code goes here

        bool exists = System.IO.Directory.Exists(Server.MapPath(subPath));
        bool exists1 = System.IO.Directory.Exists(Server.MapPath(subPath1));

        if (!exists)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath));
        if (!exists1)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath1));

        string FileName1 = "";
        if (InnerPageFileUpload.FileName != "")
        {
            FileName1 = System.IO.Path.GetFileName(InnerPageFileUpload.FileName);
            string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
            InnerPageFileUpload.SaveAs(Server.MapPath("../UploadsAll/Pages/" + Date + "" + FileName1));
            FileName1 = Date + "" + FileName1;
        }
        else
        {
            FileName1 = FileName.Value;
        }

        string UploadFileName1 = "";
        if (FileUpload.FileName != "")
        {
            UploadFileName1 = System.IO.Path.GetFileName(FileUpload.FileName);
            string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
            FileUpload.SaveAs(Server.MapPath("../UploadsAll/PagesFiles/" + Date + "" + UploadFileName1));
            UploadFileName1 = Date + "" + UploadFileName1;
        }
        else
        {
            UploadFileName1 = hf_UploadFile.Value;
        }

        if (Request.QueryString["id"] != null)
        {
            MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "Section",
           "Title", MainTitleTextBox.Text.Replace("'", "`").Trim(),
                 "Details", DetailEditor.Text.Replace("'", "`").Trim(),
                "Description", Description.Text.Replace("'", "`").Trim(),
                "Sort", SortTextBox.Text.ToString(),
                "FileName", FileName1,
                "UploadFile", UploadFileName1,
                "IsContentInBlueBackground", IsContentInBlueBackground.Checked,
                "IsContentInBox", IsContentInBox.Checked,
                "Sources", SourceEditor.Text.Replace("'", "`").Trim(),
                "Active", ActiveCheckBox.Checked
           );
        }
        else
        {
            //insert into menu table
            MemoDataAccess.InsertRow("Section",
                Request.QueryString["pageid"],
                MainTitleTextBox.Text.Replace("'", "`").Trim(),
                DetailEditor.Text.Replace("'", "`").Trim(),
                Description.Text.Replace("'", "`").Trim(),
                int.Parse(SortTextBox.Text),
                FileName1,
                UploadFileName1,
                IsContentInBlueBackground.Checked,
                IsContentInBox.Checked,
                SourceEditor.Text.Replace("'", "`").Trim(),
                ActiveCheckBox.Checked);
        }
        Response.Redirect("PagesEdit.aspx?id=" + Request.QueryString["pageid"] + "&Message=Successful Operation...&Color=Green");
    }

    protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        // e.Item.Cells[0].Visible = true;

        e.Item.Cells[e.Item.Cells.Count - 2].Width = 100;
        e.Item.Cells[e.Item.Cells.Count - 1].Width = 60;
        e.Item.Cells[1].Style.Add("text-align", "left");
        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string imageSrc = "../UploadsAll/Pages/" + e.Item.Cells[1].Text;
            string Delete = PageName + "?DelImageID=" + e.Item.Cells[0].Text + "&id=" + Request.QueryString["id"] + "&pageid=" + Request.QueryString["pageid"];
            e.Item.Cells[1].Text = "<img src='" + imageSrc + "' style='max-width:350px;'  />";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + Delete + "' onclick='Delete(this.href);return false;' class='grid-link'><img src='images/delete.png'/></a>";
        }
    }
}