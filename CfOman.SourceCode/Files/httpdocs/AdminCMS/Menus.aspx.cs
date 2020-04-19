using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
public partial class cms_Menus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["DelID"] != null)
        {
            MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "Menus");
            Response.Redirect("Menus.aspx?Message=Successful Operation...&Color=Green");
        }
    }
}