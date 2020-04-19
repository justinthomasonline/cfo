using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
public partial class cms_Users : System.Web.UI.Page
{   
     protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "Select id,Name,Username,EmailID from CMSUsers order by id asc";
        DataSet ds = MemoDataAccess.GetData(sql, "CMSUsers");
        ds.Tables["CMSUsers"].Columns.Add("Edit");
        ds.Tables["CMSUsers"].Columns.Add("Delete");
        DataGrid1.DataSource = ds;
        DataBind();
        if (Request.QueryString["DelID"] != null)
        {
             sql = "SElect * from CMSUsers where id='" + Request.QueryString["DelID"].ToString() + "'";
             ds = MemoDataAccess.GetData(sql, "CMSUsers");
            DataRow row = ds.Tables["CMSUsers"].Rows[0];
            string paramnew1 =
                row["Name"].ToString() + " < br/>" +
                row["Username"].ToString() + " < br/>" +
                row["Password"].ToString() + " < br/>" +
                row["Permissions"].ToString() + " < br/>" +
                row["EmailID"].ToString() + " < br/>" +
                row["PhoneNo"].ToString() + " < br/>" +
                row["NeedsApproval"].ToString() + " < br/>" +
                row["Approver"].ToString() + " < br/>" +              
                row["Department"].ToString() + " < br/>" +
                row["AddedBy"].ToString();
            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "CMSUsers", "Delete", paramnew1, DateTime.Now, Request.UserHostAddress);
            MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "CMSUsers");
            Response.Redirect("Users.aspx?Message=Successful Operation...&Color=Green");
        }
    }
    protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[0].Visible = false;

        e.Item.Cells[e.Item.Cells.Count - 2].Width = 100;
        e.Item.Cells[e.Item.Cells.Count - 1].Width = 60;

        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string Edit = PageName.Split('.')[0] + "Edit.aspx?id=" + e.Item.Cells[0].Text;
            string Delete = PageName + "?DelID=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 2].Text = "<a href='" + Edit + "' class='grid-link'><img src='assets/img/edit.png'/></a>";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + Delete + "' onclick='Delete(this.href);return false;' class='grid-link'><img src='assets/img/delete.png'/></a>";
        }
    }
}