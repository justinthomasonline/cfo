using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MemoDataManagement;
using System.IO;
using System.Drawing;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserSession"] == null)
            Response.Redirect("Login.aspx");

        if (!IsPostBack)
        {
            if (Request.QueryString["DelID"] != null)
            {
                string sqlIcon = "SElect * from HomeImages where id='" + Request.QueryString["DelID"].ToString() + "'";
                DataSet dsIcon = MemoDataAccess.GetData(sqlIcon, "HomeImages");
                DataRow rowIcon = dsIcon.Tables["HomeImages"].Rows[0];
                MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID"]), "id", "HomeImages");
                Response.Redirect("HomePage.aspx?Message=Successful Operation...&Color=Green");
            }

            if (Request.QueryString["DelID1"] != null)
            {
                string sqlIcon = "SElect * from OurPatner where id='" + Request.QueryString["DelID1"].ToString() + "'";
                DataSet dsIcon = MemoDataAccess.GetData(sqlIcon, "OurPatner");
                DataRow rowIcon = dsIcon.Tables["OurPatner"].Rows[0];
                MemoDataAccess.DeleteRow(int.Parse(Request.QueryString["DelID1"]), "id", "OurPatner");
                Response.Redirect("HomePage.aspx?Message=Successful Operation...&Color=Green");
            }

            string sqlHome = "SElect * from Home where id=1";
            DataSet dsHome = MemoDataAccess.GetData(sqlHome, "Home");
            if (dsHome.Tables["Home"].Rows.Count > 0)
            {
                DataRow row = dsHome.Tables["Home"].Rows[0];
                AboutUsEditor.Text = row["AboutDescription"].ToString();
                chkNewsLetter.Checked = Convert.ToBoolean(row["IsVisibleNewsLetter"].ToString());
                string sqlImage = "Select id,FileName From HomeImages Where ModuleId ='" + row["id"].ToString() + "'";
                DataSet dsImage = MemoDataAccess.GetData(sqlImage, "Images");

                if (dsImage.Tables["Images"].Rows.Count > 0)
                {
                    dsImage.Tables["Images"].Columns.Add("Delete");
                    DataGrid1.DataSource = dsImage;
                    DataGrid1.DataBind();
                }

                string sqlPatner = "Select id,FileName From OurPatner Where ModuleId ='" + row["id"].ToString() + "'";
                DataSet dsPatner = MemoDataAccess.GetData(sqlPatner, "OurPatner");


                if (dsPatner.Tables["OurPatner"].Rows.Count > 0)
                {
                    dsPatner.Tables["OurPatner"].Columns.Add("Delete");
                    Data_Parner.DataSource = dsPatner;
                    Data_Parner.DataBind();
                }

            }

            DataSet ds = MemoDataAccess.GetData("select id,'Slider_' + CAST(Row_Number() Over(Order by Id) as varchar(20)) as Slider,Title from HomeSliderSection order by Sort", "HomeSliderSection");
            ds.Tables[0].Columns.Add("Edit");
            ds.Tables[0].Columns.Add("Delete");
            Data_Services.DataSource = ds;
            Data_Services.DataBind();

            DataSet dsOther = MemoDataAccess.GetData("select id,Title from HomeCourses order by Sort", "HomeCourses");
            dsOther.Tables[0].Columns.Add("Edit");
            dsOther.Tables[0].Columns.Add("Delete");
            Data_OtherSection.DataSource = dsOther;
            Data_OtherSection.DataBind();

            DataSet dsEvents = MemoDataAccess.GetData("SELECT id,CONVERT(VARCHAR(20),EventsDate,103) as [Event Date] FROM HomeCultureEvents Order by Sort", "HomeCultureEvents");
            dsEvents.Tables[0].Columns.Add("Edit");
            dsEvents.Tables[0].Columns.Add("Delete");
            Data_Events.DataSource = dsEvents;
            Data_Events.DataBind();
        }
    }

    protected void Data_Services_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[0].Visible = false;

        e.Item.Cells[e.Item.Cells.Count - 1].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 2].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string Delete = "HomeSliderAddEdit.aspx?Delid=" + e.Item.Cells[0].Text;
            string Edit = "HomeSliderAddEdit.aspx?id=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 2].Text = "<a class='grid - link' href='" + Edit + "'><img src='images/edit.png' /></a>";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a class='grid - link' href='" + Delete + "'><img src='images/delete.png' /></a>";
        }
    }

    protected void Data_OtherSection_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[0].Visible = false;

        e.Item.Cells[e.Item.Cells.Count - 1].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 2].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string Delete = "HomeOtherAddEdit.aspx?Delid=" + e.Item.Cells[0].Text;
            string Edit = "HomeOtherAddEdit.aspx?id=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 2].Text = "<a class='grid - link' href='" + Edit + "'><img src='images/edit.png' /></a>";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a class='grid - link' href='" + Delete + "'><img src='images/delete.png' /></a>";
        }
    }

    protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[e.Item.Cells.Count - 2].Width = 100;
        e.Item.Cells[e.Item.Cells.Count - 1].Width = 60;

        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");


        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string imageSrc = "../UploadsAll/HomeWhatson/" + e.Item.Cells[1].Text;
            string Delete = PageName + "?DelID=" + e.Item.Cells[0].Text + "&id=" + Request.QueryString["id"];
            e.Item.Cells[1].Text = "<img src='" + imageSrc + "' style='max-width:200px;'  />";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + Delete + "' onclick='Delete(this.href);return false;' class='grid-link'><img src='assets/img/delete.png'/></a>";
        }
    }

    protected void btnPublish_Click(object sender, EventArgs e)
    {
        string sql = string.Empty;
        DataSet ds = null;
        DataRow row = null;
        int LastId = 0;

        sql = "Select * From Home Where id = 1";
        ds = MemoDataAccess.GetData(sql, "Home");

        if (ds.Tables["Home"].Rows.Count > 0)
        {
            row = ds.Tables["Home"].Rows[0];
            LastId = Convert.ToInt32(row["id"].ToString());
        }

        string subPath = "../UploadsAll/HomeWhatson"; // your code goes here
        string subPath1 = "../UploadsAll/HomePatner";

        bool exists = System.IO.Directory.Exists(Server.MapPath(subPath));
        bool exists1 = System.IO.Directory.Exists(Server.MapPath(subPath1));

        if (!exists)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath));
        if (!exists1)
            System.IO.Directory.CreateDirectory(Server.MapPath(subPath1));

        string paramnew1 =
           AboutUsEditor.Text.Replace("'", "`").Trim();

        if (LastId != 0)
        {
            MemoDataAccess.UpdateRow(LastId, "id", "Home",
           "AboutDescription", AboutUsEditor.Text.Replace("'", "`").ToString(),
           "Mo_Date", DateTime.Now,
           "AddedBy", Session["UserSession"].ToString(),
           "IsVisibleNewsLetter", chkNewsLetter.Checked
           );

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Home", "Update", paramnew1, DateTime.Now, Request.UserHostAddress);
        }
        else
        {
            //insert into menu table
            MemoDataAccess.InsertRow("Home",
                AboutUsEditor.Text.Replace("'", "`").ToString(),
                "True",
                DateTime.Now,
                DateTime.Now,
                Session["UserSession"].ToString(), chkNewsLetter.Checked);

            MemoDataAccess.InsertRow("Tracking", Session["UserSession"].ToString(), "Home", "Insert", paramnew1, DateTime.Now, Request.UserHostAddress);

            LastId = 1;
        }

        if (MultipleFileUploads.HasFile)
        {
            foreach (var file in MultipleFileUploads.PostedFiles)
            {
                string FileName2 = System.IO.Path.GetFileName(file.FileName);
                string fileNamewithoutExt = System.IO.Path.GetFileNameWithoutExtension(file.FileName);
                string ext = System.IO.Path.GetExtension(file.FileName);
                string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;

                file.SaveAs(Server.MapPath("../UploadsAll/HomeWhatson/" + Date + "" + FileName2));
                FileName2 = Date + "" + FileName2;
                string thumbFile = GetThumbFileName(FileName2, Date, fileNamewithoutExt, ext);

                MemoDataAccess.InsertRow("HomeImages",
                thumbFile, LastId, FileName2);
            }
        }

        if (OurPatnerFileUpload.HasFile)
        {
            foreach (var file in OurPatnerFileUpload.PostedFiles)
            {
                string FileName3 = System.IO.Path.GetFileName(file.FileName);
                string Date = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + "-" + DateTime.Now.Second;
                file.SaveAs(Server.MapPath("../UploadsAll/HomePatner/" + Date + "" + FileName3));
                FileName3 = Date + "" + FileName3;

                MemoDataAccess.InsertRow("OurPatner",
                FileName3, LastId);
            }
        }

        Response.Redirect("HomePage.aspx?Message=Successful Operation...&Color=Green");
    }

    protected void Data_Events_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[0].Visible = false;

        e.Item.Cells[e.Item.Cells.Count - 1].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 2].Width = 40;
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string Delete = "HomeCultureEvents.aspx?Delid=" + e.Item.Cells[0].Text;
            string Edit = "HomeCultureEvents.aspx?id=" + e.Item.Cells[0].Text;

            e.Item.Cells[e.Item.Cells.Count - 2].Text = "<a class='grid - link' href='" + Edit + "'><img src='images/edit.png' /></a>";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a class='grid - link' href='" + Delete + "'><img src='images/delete.png' /></a>";
        }
    }

    protected void Data_Patnar_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[e.Item.Cells.Count - 2].Width = 100;
        e.Item.Cells[e.Item.Cells.Count - 1].Width = 60;

        e.Item.Cells[e.Item.Cells.Count - 2].Style.Add("text-align", "center");
        e.Item.Cells[e.Item.Cells.Count - 1].Style.Add("text-align", "center");


        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string imageSrc = "../UploadsAll/HomePatner/" + e.Item.Cells[1].Text;
            string Delete = PageName + "?DelID1=" + e.Item.Cells[0].Text + "&id=" + Request.QueryString["id"];
            e.Item.Cells[1].Text = "<img src='" + imageSrc + "' style='max-width:350px;'  />";
            e.Item.Cells[e.Item.Cells.Count - 1].Text = "<a href='" + Delete + "' onclick='Delete(this.href);return false;' class='grid-link'><img src='assets/img/delete.png'/></a>";
        }
    }

    private string GetThumbFileName(string FileName1, string Date, string fileNamewithoutExt, string ext)
    {
        try
        {
            byte[] thumbnailPhotoArray = null;
            string thumbFileName = "";
            string openPath = "../UploadsAll/HomeWhatson/" + FileName1;

            byte[] bytes = System.IO.File.ReadAllBytes(Server.MapPath(openPath));

            MemoryStream ms = new MemoryStream();
            ms.Write(bytes, 0, bytes.Length);
            System.Drawing.Image image = System.Drawing.Image.FromStream(ms);

            //create thumb image
            int width = 275, height = 382; // its static as of now
            var newImage = new Bitmap(width, height);
            Graphics.FromImage(newImage).DrawImage(image, 0, 0, width, height);
            Bitmap bmp = new Bitmap(newImage);
            ImageConverter converter = new ImageConverter();
            thumbnailPhotoArray = (byte[])converter.ConvertTo(bmp, typeof(byte[]));

            MemoryStream msThumb = new MemoryStream(thumbnailPhotoArray, 0, thumbnailPhotoArray.Length);
            msThumb.Write(thumbnailPhotoArray, 0, thumbnailPhotoArray.Length);
            System.Drawing.Image imageThumb = System.Drawing.Image.FromStream(msThumb, true);

            thumbFileName = Date + "" + fileNamewithoutExt + "_thumb" + ext;
            imageThumb.Save(Server.MapPath("../UploadsAll/HomeWhatson/" + thumbFileName));
            return thumbFileName;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}
