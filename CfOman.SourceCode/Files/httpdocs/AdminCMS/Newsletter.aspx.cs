using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_Newsletter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        string sql = "SELECT id,FooerEmail FROM [dbo].[FooterContactEmail]";
        DataSet ds = MemoDataAccess.GetData(sql, "FooterContactEmail");
        ds.Tables["FooterContactEmail"].Columns.Add("Delete");
        DataGrid1.DataSource = ds;
        DataBind();

        NGrid.DataSource = ds;
        NGrid.DataBind();

        if (Request.QueryString["DelID"] != null)
        {
            sql = "Select * from [dbo].[FooterContactEmail] where id='" + Request.QueryString["DelID"].ToString() + "'";
            ds = MemoDataAccess.GetData(sql, "FooterContactEmail");
            DataRow row = ds.Tables["FooterContactEmail"].Rows[0];

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "FooterContactEmail", "Delete", row["FooerEmail"].ToString(), DateTime.Now, Request.UserHostAddress);
            MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "FooterContactEmail");

            Response.Redirect("Newsletter.aspx?Message=Successful Operation...&Color=Green");
        }
    }

    protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[0].Visible = false;

        //e.Item.Cells[e.Item.Cells.Count - 2].Width = 100;
        e.Item.Cells[e.Item.Cells.Count - 1].Width = 60;

        //e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");


        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string Delete = PageName + "?DelID=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + Delete + "' onclick='Delete(this.href);return false;' class='grid-link'><img src='assets/img/delete.png'/></a>";
        }
    }

    protected void btnExportToExcel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=NewsLetter.xls");
        Response.Charset = "";
        Response.ContentType = "application/ms-excel";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        NGrid.AllowPaging = false;
        NGrid.DataBind();
        NGrid.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        return;
    }
}