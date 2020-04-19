using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;

public partial class cms_PagesEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");
        if (Session["NeedsApproval"].ToString() == "True")
        {
            btnPublish.Enabled = false;
            btnPublish.Style.Add("background-color", "grey");
            btnPublish.Style.Add("color", "white");
        }

        if (!IsPostBack)
        {
            string sql = "Select * from Pages where Menuid='" + Request.QueryString["id"] + "'";
            DataSet ds = MemoDataAccess.GetData(sql, "Pages");

            if (ds.Tables["Pages"].Rows.Count > 0)
            {
                DataRow row = ds.Tables["Pages"].Rows[0];
                TitleTextBox.Text = row["Title"].ToString();
                EWDescriptionEditor.Text = row["Description"].ToString();
                Description2Editor.Text = row["Description2"].ToString();

                IsContentDivideTwo.Checked = Convert.ToBoolean(row["IsContentDivideTwo"].ToString());
                Image1.ImageUrl = "../Uploadsall/Pages/" + row["FileName"].ToString();
                HiddenField1.Value = row["FileName"].ToString();
                if (HiddenField1.Value != "")
                    Image1.Visible = true;

                if (!string.IsNullOrEmpty(row["ContentFileName"].ToString()))
                {
                    Image2.Visible = true;
                    Image2.ImageUrl = "../Uploadsall/Pages/" + row["ContentFileName"].ToString();
                }
                else
                {
                    Image2.Visible = false;
                }

                ds = MemoDataAccess.GetData("select id,Sort,Title from Section where Page_ID=" + Request.QueryString["id"] + " order by Sort", "Section");
                ds.Tables[0].Columns.Add("Edit");
                ds.Tables[0].Columns.Add("Delete");
                Data_Services.DataSource = ds;
                Data_Services.DataBind();

            }
        }
    }

    protected void btnPublish_Click(object sender, EventArgs e)
    {
        //insert into main table
        string sql = "Select * From Pages Where Menuid='" + Request.QueryString["id"] + "'";

        string FileName = "";
        if (FileUpload.FileName != "")
        {

            FileName = CMSHelper.UploadFile(FileUpload, "Pages");
        }
        else
        {
            FileName = HiddenField1.Value;
        }

        string fileName1 = string.Empty;
        if (ContentFileUpload.FileName != "")
        {

            fileName1 = CMSHelper.UploadFile(ContentFileUpload, "Pages");
        }
        else
        {
            fileName1 = ContentFileName.Value;
        }

        DataSet ds = MemoDataAccess.GetData(sql, "Menus");
        DataRow row = ds.Tables[0].Rows[0];
        DataAccess.Update("Pages", "Menuid", Request.QueryString["id"],
            new string[] {

         "Title", TitleTextBox.Text,
         "Description", EWDescriptionEditor.Text.Trim(),
         "FileName", FileName,
         "IsContentDivideTwo",IsContentDivideTwo.Checked ? "1" : "0",
         "ContentFileName",fileName1,
         "Description2",Description2Editor.Text.Trim()
         }
            );

        Response.Redirect("Menus.aspx?Message=Successful Operation...&Color=Green");
    }

    protected void Data_Services_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[0].Visible = false;

        e.Item.Cells[e.Item.Cells.Count - 1].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 2].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string Delete = "SectionsAddEdit.aspx?pageid=" + Request.QueryString["id"] + "&Delid=" + e.Item.Cells[0].Text;
            string Edit = "SectionsAddEdit.aspx?pageid=" + Request.QueryString["id"] + "&id=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 2].Text = "<a class='grid - link' href='" + Edit + "'><img src='images/edit.png' /></a>";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a class='grid - link' href='" + Delete + "'><img src='images/delete.png' /></a>";

        }
    }
}