using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
public partial class cms_MenusEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (Session["NeedsApproval"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            ChildsDropDownList.Items.Insert(0, new ListItem("-- Select --", ""));
            if (Session["NeedsApproval"].ToString() == "True")
            {
                btnPublish.Enabled = false;
                btnPublish.Style.Add("background-color", "grey");
                btnPublish.Style.Add("color", "white");
                btnPublish.Style.Add("border", "none");
            }


            string sql = "Select * From Menus Where id='" + Request.QueryString["id"] + "'";

            DataSet ds = MemoDataAccess.GetData(sql, "Menus");

            DataRow row = ds.Tables["Menus"].Rows[0];
            if (row["Parent_ID"].ToString() != "0")
            {
                sql = "Select * From Menus Where id='" + row["Parent_ID"].ToString() + "'";
                ds = MemoDataAccess.GetData(sql, "Menus");
                DataRow ParentRow = ds.Tables["Menus"].Rows[0];

                sql = "Select * From Menus Where Parent_ID='" + ParentRow["Parent_ID"].ToString() + "' Order by id";
                ds = MemoDataAccess.GetData(sql, "Menus");

                ParentMenuDropDownList.DataSource = ds;
                ParentMenuDropDownList.DataTextField = "Title";
                ParentMenuDropDownList.DataValueField = "id";

                sql = "Select * From Menus Where Parent_ID='" + row["Parent_ID"].ToString() + "' And id!=" + Request.QueryString["id"] + " Order by id";
                ds = MemoDataAccess.GetData(sql, "Menus");

                ChildsDropDownList.DataSource = ds;
                ChildsDropDownList.DataTextField = "Title";
                ChildsDropDownList.DataValueField = "id";


                DataBind();

                ParentMenuDropDownList.Items.FindByValue(row["Parent_ID"].ToString()).Selected = true;

                if (Request.QueryString["Parent"] == null)
                {
                    string PID = ParentRow["Parent_ID"].ToString();
                    string List = "";
                    for (int i = 0; i <= int.Parse(row["LevelNo"].ToString()) - 1; i++)
                    {
                        sql = "Select * From Menus Where id='" + PID + "'";
                        ds = MemoDataAccess.GetData(sql, "Menus");
                        if (ds.Tables["Menus"].Rows.Count != 0)
                        {
                            DataRow R = ds.Tables["Menus"].Rows[0];
                            List = R["Parent_ID"].ToString() + "-" + PID + "-" + R["Title"].ToString() + "-" + R["LevelNo"].ToString() + "," + List;
                            PID = R["Parent_ID"].ToString();
                        }
                    }

                    PID = ParentRow["Parent_ID"].ToString();
                    for (int i = 0; i <= int.Parse(row["LevelNo"].ToString()) - 1; i++)
                    {
                        sql = "Select * From Menus Where id='" + PID + "'";
                        ds = MemoDataAccess.GetData(sql, "Menus");
                        if (ds.Tables["Menus"].Rows.Count != 0)
                        {
                            DataRow R = ds.Tables["Menus"].Rows[0];
                            LinkLabel.Text = "&nbsp;&nbsp;<a href='EditLink.aspx?id=" + Request.QueryString["id"] + "&Parent=" + R["Parent_ID"].ToString() + "&Child=" + R["id"].ToString() + "&Level=" + R["LevelNo"].ToString() + "&List=" + List + "' class='link'>" + R["Title"].ToString() + "</a> &raquo" + LinkLabel.Text;
                            PID = R["Parent_ID"].ToString();

                            string[] x = List.Split(',');
                            for (int j = 0; j < x.Length - 2; j++)
                            {
                                List = x[j] + ",";
                            }
                        }
                    }
                }
                else
                {
                    sql = "Select * From Menus Where Parent_ID='" + Request.QueryString["Parent"] + "'";
                    ds = MemoDataAccess.GetData(sql, "Menus");

                    ParentMenuDropDownList.DataSource = ds;
                    ParentMenuDropDownList.DataTextField = "Title";
                    ParentMenuDropDownList.DataValueField = "id";

                    sql = "Select * From Menus Where Parent_ID='" + Request.QueryString["Child"] + "' And id!=" + Request.QueryString["id"];
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
                        LinkLabel.Text += "&nbsp;&nbsp;<a href='DepartmentEdit.aspx?id=" + Request.QueryString["id"] + "&Parent=" + values[0] + "&Child=" + values[1] + "&Level=" + values[3] + "&List=" + List + "' class='link'>" + values[2] + "</a> &raquo";
                        Level = values[3];
                    }
                    LevelLabel.Text = Level;
                }


                LevelLabel.Text = row["LevelNo"].ToString();
            }
            else
            {
                sql = "Select * From Menus Where Parent_ID=0 And id!=" + Request.QueryString["id"] + " Order by id";
                ds = MemoDataAccess.GetData(sql, "Menus");

                ParentMenuDropDownList.DataSource = ds;
                ParentMenuDropDownList.DataTextField = "Title";
                ParentMenuDropDownList.DataValueField = "id";
                DataBind();
                ParentMenuDropDownList.Items.Insert(ParentMenuDropDownList.Items.Count, new ListItem("-- root --", "0"));
                ParentMenuDropDownList.Items.FindByValue("0").Selected = true;
            }

            sql = "Select * From Menus Where id='" + row["Parent_ID"].ToString() + "'";
            DataSet ds1 = MemoDataAccess.GetData(sql, "Menus");
            if (ds1.Tables["Menus"].Rows.Count != 0)
            {
                DataRow rowAlias = ds1.Tables["Menus"].Rows[0];
                if (rowAlias["Alias"].ToString() != "")
                {
                   // lblParentAlias.Text = rowAlias["Alias"].ToString() + "&nbsp;/&nbsp;";
                }
            }
            MenuTypeDropDown.Items.FindByValue(row["MenuType"].ToString()).Selected = true;
            ParentMenuDropDownList.Items.FindByValue(row["Parent_ID"].ToString()).Selected = true;


            TitleTextBox.Text = row["Title"].ToString();
           // TitleArTextBox.Text = row["ArTitle"].ToString();
            TypeDropDownList.Items.FindByValue(row["Type"].ToString()).Selected = true;
            if (row["Type"].ToString() == "Module"|| row["Type"].ToString() == "Internal")
            {
                //if (ModuleTypeDropDownList.Items.Contains(ModuleTypeDropDownList.Items.FindByValue(row["Link"].ToString())))
                //{
                //    ModuleTypeDropDownList.Items.FindByValue(row["Link"].ToString()).Selected = true;
                //    if (row["ModuleID"].ToString().Contains("&"))
                //    {
                //        ModuleLinkID.Text = row["ModuleID"].ToString().Split('&')[1];
                //    }
                //}

                ModuleTypeDropDownList.Text = row["Link"].ToString();
            }
            if (row["Type"].ToString() == "External")
            {
                ModuleLinkID.Text = row["ModuleID"].ToString();
            }
            if (row["ExtLinkNewWindow"].ToString() != "")
            {
                externalCheckBox.Checked = bool.Parse(row["ExtLinkNewWindow"].ToString());
            }
            SortTextBox.Text = row["Sort"].ToString();
            ActiveCheckBox.Checked = bool.Parse(row["Active"].ToString());
           
            //txtmenuicon.Text = row["MenuIcon"].ToString();

            AliasTextBox.Text = row["Alias"].ToString();

            if (row["Type"].ToString() == "Module")
            {
                string Script = "<script>$('#ModulePage').css('display', 'block');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", Script);               
            }
            if (row["Type"].ToString() == "External")
            {
                string Script = "<script>$('#ModulePage').css('display', 'block');$('#ModulePage label').html('Link');$('#external').css('display', 'block');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", Script);
            }
            if (row["Type"].ToString() == "Internal")
            {
                string Script = "<script>$('#ModulePage').css('display', 'block');$('#ModulePage label').html('Page Link');$('#external').css('display', 'none');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", Script);
            }



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
    {//save into main table

        //check for status

        string sql = "Select * From Menus Where id='" + Request.QueryString["id"] + "'";


        DataSet ds = MemoDataAccess.GetData(sql, "Menus");
        DataRow row = ds.Tables[0].Rows[0];

        string LinkID = ModuleLinkID.Text.Replace("'", "`");
        string LinkIdNew = "";
        if (LinkID == "")
        {
            LinkIdNew = Request.QueryString["id"].ToString();
        }
        else
        {
            if (ModuleTypeDropDownList.Text.ToString() == "Gallery")
            {
                LinkIdNew = Request.QueryString["id"].ToString() + "&" + LinkID;
            }
            else
            {
                LinkIdNew = LinkID;
            }
        }


        //string FileName1 = "";
        //if (SFileUpload.FileName != "")
        //{
        //    FileName1 = System.IO.Path.GetFileName(SFileUpload.FileName);
        //    string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
        //    SFileUpload.SaveAs(Server.MapPath("../UploadsAll/Pages/" + Date + "" + FileName1));
        //    FileName1 = Date + "" + FileName1;
        //}
        //else
        //{
        //    FileName1 = row["FileName"].ToString();
        //}

        //string FileName2 = "";
        //if (IFileUpload.FileName != "")
        //{
        //    FileName2 = System.IO.Path.GetFileName(IFileUpload.FileName);
        //    string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
        //    IFileUpload.SaveAs(Server.MapPath("../UploadsAll/Pages/" + Date + "" + FileName2));
        //    FileName2 = Date + "" + FileName2;
        //}
        //else
        //{
        //    FileName2 = row["IconFile"].ToString();
        //}



        MemoDataAccess.UpdateRow(int.Parse(Request.QueryString["id"]), "id", "Menus",
            "Parent_ID", ParentMenuDropDownList.SelectedValue.Trim(),
            "Title", TitleTextBox.Text.Replace("'", "`").Trim(),
           // "ArTitle", TitleArTextBox.Text.Replace("'", "`"),
            "Type", TypeDropDownList.SelectedValue.Trim(),
            "Link", ModuleTypeDropDownList.Text,
            "Sort", SortTextBox.Text,
            "Active", ActiveCheckBox.Checked,
            "Mo_Date", DateTime.Now,
            "Added_By", Session["UserSession"].ToString(),
            "ExtLinkNewWindow", externalCheckBox.Checked,
            "Alias", AliasTextBox.Text.Replace("'", "`"),
            "ModuleID", LinkIdNew,
            "MenuType", MenuTypeDropDown.SelectedValue.ToString(),"LevelNo", LevelLabel.Text
            );



        string paramnew1 =
      ParentMenuDropDownList.SelectedValue + "<br/>" +
      TitleTextBox.Text.Replace("'", "`") + "<br/>" +
     // TitleArTextBox.Text.Replace("'", "`") + "<br/>" +
      TypeDropDownList.SelectedValue + "<br/>" +
        "" + "<br/>" +
        int.Parse(SortTextBox.Text) + "<br/>" +
      ActiveCheckBox.Checked + "<br/>" + externalCheckBox.Checked + "<br/>" + AliasTextBox.Text.Replace("'", "`") + "<br/>" +
    LinkIdNew;

        MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Menus", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);

        sql = "Select * From Pages Where MenuID='" + Request.QueryString["id"] + "'";


        ds = MemoDataAccess.GetData(sql, "Pages");
        row = ds.Tables[0].Rows[0];

        string ExtLink = "False";
        if (ParentMenuDropDownList.SelectedValue == "External" || ParentMenuDropDownList.SelectedValue == "Chat" || ParentMenuDropDownList.SelectedValue == "Internal")
        {
            ExtLink = "True";
        }

        //MemoDataAccess.UpdateRow(int.Parse(row["id"].ToString()), "id", "Pages",
        //  "MenuID", int.Parse(Request.QueryString["id"]),
        //  "Parent_ID", int.Parse(ParentMenuDropDownList.SelectedValue),
        //  "Title", TitleTextBox.Text.Replace("'", "`"),
        //  "Mo_Date", DateTime.Now,
        //  "Added_By", Session["UserSession"].ToString(),
        //  "ExtLinkNewWindow", ExtLink);

        //paramnew1 =
        //   int.Parse(row["id"].ToString()) + "<br/>" +
        //   int.Parse(ParentMenuDropDownList.SelectedValue) + "<br/>" +
        //   TitleTextBox.Text.Replace("'", "`") + "<br/>" +
        //     //  TitleArTextBox.Text.Replace("'", "`") + "<br/>" +
        //     int.Parse(SortTextBox.Text)
        //  ;
        //MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Pages", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);


        Response.Redirect("Menus.aspx?Message=Successful Operation...&Color=Green");

    }






}