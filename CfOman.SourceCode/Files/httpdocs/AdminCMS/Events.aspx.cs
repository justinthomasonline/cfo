﻿using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_Events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        string sql = "SELECT id,Sort,CONVERT(VARCHAR(10), EventsDate, 103) as EventsDate FROM [dbo].[CultureEvents] Order By Sort";
        DataSet ds = MemoDataAccess.GetData(sql, "CultureEvents");
        ds.Tables["CultureEvents"].Columns.Add("Edit");
        ds.Tables["CultureEvents"].Columns.Add("Delete");
        DataGrid1.DataSource = ds;
        DataBind();

        if (Request.QueryString["DelID"] != null)
        {
            sql = "Select * from [dbo].[CultureEvents] where id='" + Request.QueryString["DelID"].ToString() + "'";
            ds = MemoDataAccess.GetData(sql, "CultureEvents");
            DataRow row = ds.Tables["CultureEvents"].Rows[0];

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "CultureEvents", "Delete", row["Title"].ToString(), DateTime.Now, Request.UserHostAddress);
            MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "CultureEvents");

            Response.Redirect("Events.aspx?Message=Successful Operation...&Color=Green");
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
            string Edit = "EventsAddEdit.aspx?id=" + e.Item.Cells[0].Text;
            string Delete = PageName + "?DelID=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 2].Text = "<a href='" + Edit + "' class='grid-link'><img src='assets/img/edit.png'/></a>";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + Delete + "' onclick='Delete(this.href);return false;' class='grid-link'><img src='assets/img/delete.png'/></a>";
        }
    }
}