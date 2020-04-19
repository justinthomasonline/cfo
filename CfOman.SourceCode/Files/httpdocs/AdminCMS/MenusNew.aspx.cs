using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
public partial class cms_MenusNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");
        if (!IsPostBack)
        {
            string sql = "Select * From Menus Where Parent_ID=0 Order by id";
        DataSet ds = MemoDataAccess.GetData(sql, "Menus");

        ParentMenuDropDownList.DataSource = ds;
        ParentMenuDropDownList.DataTextField = "Title";
        ParentMenuDropDownList.DataValueField = "id";

        sql = "Select * From Menus Where Parent_ID=1 Order by id";
        ds = MemoDataAccess.GetData(sql, "Menus");

        ChildsDropDownList.DataSource = ds;
        ChildsDropDownList.DataTextField = "Title";
        ChildsDropDownList.DataValueField = "id";
        DataBind();
        //ParentMenuDropDownList.Items.Insert(ParentMenuDropDownList.Items.Count, new ListItem("-- root --", "0"));           
        DataBind();

        if (Request.QueryString["Parent"] != null)
        {
            sql = "Select * From Menus Where Parent_ID='" + Request.QueryString["Parent"] + "'";
            ds = MemoDataAccess.GetData(sql, "Menus");

            ParentMenuDropDownList.DataSource = ds;
            ParentMenuDropDownList.DataTextField = "Title";
            ParentMenuDropDownList.DataValueField = "id";

            sql = "Select * From Menus Where Parent_ID='" + Request.QueryString["Child"] + "'";
            ds = MemoDataAccess.GetData(sql, "Menus");

            ChildsDropDownList.DataSource = ds;
            ChildsDropDownList.DataTextField = "Title";
            ChildsDropDownList.DataValueField = "id";
            DataBind();

            ParentMenuDropDownList.Items.FindByValue(Request.QueryString["Child"]).Selected = true;

            string[] x = Request.QueryString["List"].Split(',');
            string Level = "0";
            string List = "";
            for (int i = 0; i < x.Length - 2; i++)
            {
                string[] values = x[i].Split('-');
                List += x[i] + ",";
                // LinkLabel.Text += "&nbsp;&nbsp;<a href='NewLink.aspx?Parent=" + values[0] + "&Child=" + values[1] + "&Level=" + values[3] + "&List=" + List + "' class='link'>" + values[2] + "</a> &raquo";
                Level = values[3];
            }
            LevelLabel.Text = Level;
        }

        ParentMenuDropDownList.Items.Insert(ParentMenuDropDownList.Items.Count, new ListItem("-- root --", "0"));
        ChildsDropDownList.Items.Insert(0, new ListItem("-- Select --", ""));
    }
    }

    protected void ParentMenuDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ParentMenuDropDownList.SelectedValue != "0")
        {
            string[] x = ParentMenuDropDownList.SelectedValue.Split('-');
            if (x.Length >= 2)
            {
                string ParentID = ChildsDropDownList.SelectedValue;

                string sql = "Select * From Menus Where Parent_ID='" + x[1] + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "Menu");

                ParentMenuDropDownList.DataSource = ds;
                ParentMenuDropDownList.DataTextField = "Title";
                ParentMenuDropDownList.DataValueField = "id";

                sql = "Select * From Menus Where Parent_ID='" + ParentID + "'";
                ds = MemoDataAccess.GetData(sql, "Menu");

                ChildsDropDownList.DataSource = ds;
                ChildsDropDownList.DataTextField = "Title";
                ChildsDropDownList.DataValueField = "id";
                DataBind();
                ChildsDropDownList.Items.Insert(0, new ListItem("-- Select --", ""));
            }
            else
            {
                string sql = "Select * From Menus Where Parent_ID='" + ParentMenuDropDownList.SelectedValue + "'";
                DataSet ds = MemoDataAccess.GetData(sql, "Menu");

                ChildsDropDownList.DataSource = ds;
                ChildsDropDownList.DataTextField = "Title";
                ChildsDropDownList.DataValueField = "id";
                DataBind();
                ChildsDropDownList.Items.Insert(0, new ListItem("-- Select --", ""));
            }
        }
        else
        {
            ChildsDropDownList.Items.Clear();
            ChildsDropDownList.Items.Insert(0, new ListItem("-- None --", ""));
        }
    }
    protected void ChildsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        int Level = int.Parse(LevelLabel.Text) + 1;
        LevelLabel.Text = Level.ToString();

        string sql = "Select * From Menus Where id='" + ParentMenuDropDownList.SelectedValue + "'";
        DataSet ds = MemoDataAccess.GetData(sql, "Menu");

        string ParentLinkID = "";
        if (ds.Tables["Menu"].Rows.Count != 0)
        {
            DataRow row = ds.Tables["Menu"].Rows[0];
            ParentLinkID = row["Parent_ID"].ToString();
        }

        ListLabel.Text += ParentLinkID + "-" + ParentMenuDropDownList.SelectedValue + "-" + ParentMenuDropDownList.SelectedItem + "-" + Level + ",";

        LinkLabel.Text += "&nbsp;&nbsp;<a href='MenusNew.aspx?Parent=" + ParentLinkID + "&Child=" + ParentMenuDropDownList.SelectedValue + "&Level=" + Level + "&List=" + ListLabel.Text + "' class='link'>" + ParentMenuDropDownList.SelectedItem + "</a> &raquo";

        string ChildID = ChildsDropDownList.SelectedValue;

        sql = "Select * From Menus Where Parent_ID='" + ParentMenuDropDownList.SelectedValue + "'";
        ds = MemoDataAccess.GetData(sql, "Menu");

        ParentMenuDropDownList.DataSource = ds;
        ParentMenuDropDownList.DataTextField = "Title";
        ParentMenuDropDownList.DataValueField = "id";

        sql = "Select * From Menus Where Parent_ID='" + ChildsDropDownList.SelectedValue + "'";
        ds = MemoDataAccess.GetData(sql, "Menu");

        ChildsDropDownList.DataSource = ds;
        ChildsDropDownList.DataTextField = "Title";
        ChildsDropDownList.DataValueField = "id";
        DataBind();
        ChildsDropDownList.Items.Insert(0, new ListItem("-- Select --", ""));

        ParentMenuDropDownList.Items.FindByValue(ChildID).Selected = true;
    }

    protected void btnPublish_Click(object sender, EventArgs e)
    {
        
        //insert into menu table
        MemoDataAccess.InsertRow("Menus",
            ParentMenuDropDownList.SelectedValue.Trim(),
            TitleTextBox.Text.Replace("'", "`").Trim(),
            //TitleArTextBox.Text.Replace("'", "`"),
            TypeDropDownList.SelectedValue.Trim(),
            ModuleTypeDropDownList.SelectedValue.Trim(),
            int.Parse(SortTextBox.Text),
            ActiveCheckBox.Checked,          
            DateTime.Now, DateTime.Now,
            Session["UserSession"].ToString(), externalCheckBox.Checked,
            AliasTextBox.Text.Replace("'", "`"),"", MenuTypeDropDown.SelectedValue.ToString().Trim(), LevelLabel.Text,"","","");

        string sql = "Select * From Menus Order By id desc";
        DataSet ds = MemoDataAccess.GetData(sql, "Menus");
        //row menu
        DataRow row = ds.Tables["Menus"].Rows[0];

        string LinkID = "";
        string LinkIdNew = "";
        if (ModuleTypeDropDownList.SelectedValue == "Module")
        {
            LinkID = ModuleLinkID.Text.Replace("'", "`");

            if (LinkID == "")
            {
                LinkIdNew = row["id"].ToString();
            }
            else
            {
                if (ModuleTypeDropDownList.SelectedItem.ToString() == "Gallery")
                {
                    LinkIdNew = row["id"].ToString() + "&" + LinkID;
                }
                else
                {
                    LinkIdNew = LinkID;
                }
            }
        }

        MemoDataAccess.UpdateRow(int.Parse(row["id"].ToString()), "id", "Menus", "ModuleID", LinkIdNew);

        string paramnew1 =
          ParentMenuDropDownList.SelectedValue + "<br/>" +
          TitleTextBox.Text.Replace("'", "`") + "<br/>" +
         // TitleArTextBox.Text.Replace("'", "`") + "<br/>" +
          TypeDropDownList.SelectedValue + "<br/>" +
          ModuleTypeDropDownList.SelectedValue + "<br/>" +
          int.Parse(SortTextBox.Text) + "<br/>" +
          ActiveCheckBox.Checked + "<br/>" +
         AliasTextBox.Text.Replace("'", "`") + "<br/>" + LinkIdNew + "<br/>" + MenuTypeDropDown.SelectedValue.ToString();
        MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Menus", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);

      

       string ExtLink = "False";
        if(ParentMenuDropDownList.SelectedValue== "External" || ParentMenuDropDownList.SelectedValue== "Chat" || ParentMenuDropDownList.SelectedValue == "Internal")
        {
            ExtLink = "True";
        }

        //insert into pages 
        MemoDataAccess.InsertRow
           ("Pages",
            int.Parse(row["id"].ToString()),
            int.Parse(ParentMenuDropDownList.SelectedValue),
            TitleTextBox.Text.Replace("'", "`"),
            "",
            DateTime.Now, DateTime.Now, Session["UserSession"].ToString(), ExtLink, "", "", "Page", false, string.Empty, string.Empty);

        paramnew1 =
           int.Parse(row["id"].ToString()) + "<br/>" +
           int.Parse(ParentMenuDropDownList.SelectedValue) + "<br/>" +
           TitleTextBox.Text.Replace("'", "`") + "<br/>" +
         //  TitleArTextBox.Text.Replace("'", "`") + "<br/>" +
             int.Parse(SortTextBox.Text)           ;
        MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Pages", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);

 
        Response.Redirect("Menus.aspx?Message=Successful Operation...&Color=Green");
    }
}