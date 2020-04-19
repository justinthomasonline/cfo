using MemoDataManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCMS_SendNewsLetter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPublish_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(SubjectTextBox.Text.Trim()))
        {
            string sql = "Select * From FooterContactEmail";
            DataSet ds = MemoDataAccess.GetData(sql, "FooterContactEmail");

            foreach (DataRow row in ds.Tables["FooterContactEmail"].Rows)
            {
                EmailHelper.SendEmail(string.Empty, row["FooerEmail"].ToString(), "", "", SubjectTextBox.Text.Trim(), EWDescriptionEditor.Text.Trim());
            }
        }

        Response.Redirect("Newsletter.aspx?Message=Successful Sent Email..&Color=Green");
    }
}