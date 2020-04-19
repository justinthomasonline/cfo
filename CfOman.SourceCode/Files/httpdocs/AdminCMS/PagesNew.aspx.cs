using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;

public partial class cms_PagesNew : System.Web.UI.Page
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
            btnPublish.Style.Add("border", "none");
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        //insert into main table
        MemoDataAccess.InsertRow("Pages",
            "-1",
            "-1",
            TitleTextBox.Text.Replace("'", "`").Trim(),
            EWDescriptionEditor.Text.Replace("'", "`").Trim(),
            DateTime.Now, DateTime.Now, Session["UserSession"].ToString(),
            "False", "", "","Page","","");
        string paramnew1 =
            "-1" + "<br/>" +
            "-1" + "<br/>" +
            TitleTextBox.Text.Replace("'", "`");
        MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Pages", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);
    }


}
