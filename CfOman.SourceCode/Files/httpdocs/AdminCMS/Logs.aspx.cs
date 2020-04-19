using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
public partial class Administrator_Pages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            DataSet ds = MemoDataAccess.GetData("select id,Username from CMSUSers order by id", "CMSUSers");
            UserDropDownList.DataSource = ds;
            UserDropDownList.DataTextField = "Username";
            UserDropDownList.DataValueField = "id";
            UserDropDownList.DataBind();
            UserDropDownList.Items.Insert(0, new ListItem("-- All --", ""));

           ds = MemoDataAccess.GetData("select distinct(TableName) from Tracking", "Tracking");
           SectionDropDownList.DataSource = ds;
           SectionDropDownList.DataTextField = "TableName";
           SectionDropDownList.DataValueField = "TableName";
           SectionDropDownList.DataBind();
           SectionDropDownList.Items.Insert(0, new ListItem("-- All --", ""));

            ds = MemoDataAccess.GetData("select distinct(Operation) from Tracking", "Tracking");
            ActionDropDownList.DataSource = ds;
            ActionDropDownList.DataTextField = "Operation";
            ActionDropDownList.DataValueField = "Operation";
            ActionDropDownList.DataBind();
            ActionDropDownList.Items.Insert(0, new ListItem("-- All --", ""));


            ds = MemoDataAccess.GetData("select top 100 a.id, b.Username, a.TableName as Section, a.Operation, a.Date, a.IPAddress from Tracking a, CMSUSers b where a.userid=b.id order by Date desc", "Tracking");
            ds.Tables[0].Columns.Add("View");
            DataGrid1.DataSource = ds.Tables[0];
            DataGrid1.DataBind();  

        }
    }

    protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[0].Visible = false;

         
        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 1].Width = 60;
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string View = PageName.Split('.')[0] + "View.aspx?id=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + View + "' class='grid-link'><img src='Images/view.png' /></a>";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string From = "";
        string To = "";
        if (FromTextBox.Text != "")
         From = DateTime.ParseExact(FromTextBox.Text, "d/M/yyyy", null).ToString("dd/MM/yyyy").Replace('-', '/');
        if(ToTextBox.Text !="")
         To = DateTime.ParseExact(ToTextBox.Text, "d/M/yyyy", null).ToString("dd/MM/yyyy").Replace('-', '/');

        string sql = "select a.id, b.Username, a.TableName as Section, a.Operation, a.Date, a.IPAddress from Tracking a, CMSUSers b where a.userid=b.id";

              if (ActionDropDownList.SelectedIndex != 0)
            sql += " And Operation='" + ActionDropDownList.SelectedValue + "' ";

        if (UserDropDownList.SelectedIndex != 0)
            sql += " And userId='" + UserDropDownList.SelectedValue + "' ";

        if (SectionDropDownList.SelectedIndex != 0)
            sql += " And Tablename='" + SectionDropDownList.SelectedValue + "' ";

        if(From != "" && To != "")
        sql += " And (convert(varchar(10),Date,103) between '" + From + "' And '" + To + "' ) ";

        if (From != "" && To == "")
            sql += " And (convert(varchar(10),Date,103) = '" + From + "') ";

        sql += " Order By Date desc";

        DataSet ds = MemoDataAccess.GetData(sql, "Tracking");
        ds.Tables[0].Columns.Add("View");
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
    }



    protected void Button2_Click(object sender, EventArgs e)
    {


        DataSet ds = MemoDataAccess.GetData("select  a.id, b.Username, a.TableName as Section, a.Operation, a.Date, a.IPAddress from Tracking a, CMSUSers b where a.userid=b.id order by Date desc", "Tracking");
        ds.Tables[0].Columns.Add("View");
        DataGrid1.DataSource = ds.Tables[0];
        DataGrid1.DataBind();
    }
}