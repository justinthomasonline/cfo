using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

       if(Session["NeedsApproval"]==null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            if (Request.QueryString["Message"] != null)
            {
                string Script = "<script>Message('" + Request.QueryString["Color"] + "');</script>";
                Page.RegisterStartupScript("Script", Script);
            }
        }
    }
}
