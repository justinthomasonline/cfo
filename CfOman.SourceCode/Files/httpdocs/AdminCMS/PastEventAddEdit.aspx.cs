using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_PastEventAddEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            if (Request.QueryString["DelID"] != null)
            {
                string sqlIcon = "SElect * from PastEventImages where id='" + Request.QueryString["DelID"].ToString() + "'";
                DataSet dsIcon = MemoDataAccess.GetData(sqlIcon, "PastEventImages");
                DataRow rowIcon = dsIcon.Tables["PastEventImages"].Rows[0];
                MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "PastEventImages");
                Response.Redirect("PastEventAddEdit.aspx?id=" + Request.QueryString["id"] + "&Message =Successful Operation...&Color=Green");
            }

            if (Request.QueryString["Id"] != null)
            {

                string sql = "Select * From [dbo].[PastEvents] Where id='" + Request.QueryString["id"] + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "PastEvents");

                if (ds.Tables["PastEvents"].Rows.Count > 0)
                {
                    DataRow row = ds.Tables["PastEvents"].Rows[0];
                    SortTextBox.Text = row["Sort"].ToString();
                    TitleTextBox.Text = row["Title"].ToString();
                    ActiveCheckBox.Checked = bool.Parse(row["Active"].ToString());
                    EWDescriptionEditor.Text = row["Description"].ToString();

                    string sqlImage = "Select id,FileName From PastEventImages Where PastEventId ='" + row["id"].ToString() + "'";
                    DataSet dsImage = MemoDataAccess.GetData(sqlImage, "Images");

                    if (dsImage.Tables["Images"].Rows.Count > 0)
                    {
                        dsImage.Tables["Images"].Columns.Add("Delete");
                        DataGrid1.DataSource = dsImage;
                        DataGrid1.DataBind();
                    }
                }
            }
        }
    }

    protected void btnPublish_Click(object sender, EventArgs e)
    {
        int LastId = 0;
        string subPath = "../UploadsAll/PastEvents"; // your code goes here

        bool exists = System.IO.Directory.Exists(Server.MapPath(subPath));

        if (!exists)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath));

        string paramnew1 =
           TitleTextBox.Text.Replace("'", "`").Trim() + "<br/>" +
           EWDescriptionEditor.Text.Replace("'", "`").Trim() + "<br/>" +
             int.Parse(SortTextBox.Text) + "<br/>";

        if (Request.QueryString["id"] != null)
        {
            MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "PastEvents",
           "Title", TitleTextBox.Text.Replace("'", "`").ToString(),
           "Description", EWDescriptionEditor.Text.Replace("'", "`").ToString(),
            "Active", ActiveCheckBox.Checked,
           "Sort", int.Parse(SortTextBox.Text),
            "Mo_Date", DateTime.Now,
            "AddedBy", Session["UserSession"].ToString()
            );
            LastId = Convert.ToInt32(Request.QueryString["id"]);
            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "PastEvents", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);
        }
        else
        {
            //insert into menu table
            MemoDataAccess.InsertRow("PastEvents",
                TitleTextBox.Text.Replace("'", "`").Trim(),
                EWDescriptionEditor.Text.Replace("'", "`").Trim(),
                 ActiveCheckBox.Checked,
                  int.Parse(SortTextBox.Text),
                DateTime.Now, DateTime.Now, Session["UserSession"].ToString());

            string sql = "Select * From PastEvents Order By id desc";
            DataSet ds = MemoDataAccess.GetData(sql, "PastEvents");
            //row menu

            if (ds.Tables["PastEvents"].Rows.Count > 0)
            {
                DataRow row = ds.Tables["PastEvents"].Rows[0];
                LastId = Convert.ToInt32(row["id"].ToString());
            }

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "PastEvents", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);
        }

        if (MultipleFileUploads.HasFile)
        {
            foreach (var file in MultipleFileUploads.PostedFiles)
            {
                string FileName2 = System.IO.Path.GetFileName(file.FileName);
                string fileNamewithoutExt = System.IO.Path.GetFileNameWithoutExtension(file.FileName);
                string ext = System.IO.Path.GetExtension(file.FileName);
                string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;

                file.SaveAs(Server.MapPath("../UploadsAll/PastEvents/" + Date + "" + FileName2));
                FileName2 = Date + "" + FileName2;

                MemoDataAccess.InsertRow("PastEventImages",
                FileName2, LastId);
            }
        }

        Response.Redirect("PastEvents.aspx?Message=Successful Operation...&Color=Green");
    }

    protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[e.Item.Cells.Count - 2].Width = 100;
        e.Item.Cells[e.Item.Cells.Count - 1].Width = 60;

        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string imageSrc = "../UploadsAll/PastEvents/" + e.Item.Cells[1].Text;
            string Delete = PageName + "?DelID=" + e.Item.Cells[0].Text + "&id=" + Request.QueryString["id"];
            e.Item.Cells[1].Text = "<img src='" + imageSrc + "' style='max-width:200px;'  />";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + Delete + "' onclick='Delete(this.href);return false;' class='grid-link'><img src='assets/img/delete.png'/></a>";
        }
    }
}