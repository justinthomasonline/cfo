using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MemoDataManagement;
using System.IO;
using System.Text;
using System.Data;

/// <summary>
/// Summary description for CMSHelper
/// </summary>
public class CMSHelper
{
    public CMSHelper()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string UploadFile(FileUpload file, string folder)
    {

        string filename = "";

        if (file.FileName != "")
        {

            filename =  Guid.NewGuid().ToString() + Path.GetExtension(file.FileName);
            file.SaveAs(HttpContext.Current.Server.MapPath("~/Uploadsall/" + folder + "/" + filename));
        }
        return filename;
    }

    public static string UploadFile(HttpPostedFile file, string folder)
    {

        string filename = "";

        if (file.FileName != "")
        {

            filename = CleanFileName(Path.GetFileNameWithoutExtension(file.FileName)) + Guid.NewGuid().ToString() + Path.GetExtension(file.FileName);
            file.SaveAs(HttpContext.Current.Server.MapPath("~/Uploadsall/" + folder + "/" + filename));
        }
        return filename;
    }

    public static string CleanFileName(string fileName)
    {
        return Path.GetInvalidFileNameChars().Aggregate(fileName, (current, c) => current.Replace(c.ToString(), string.Empty));
    }


    public static string RemoveSpecialCharacters(string str)
    {
        StringBuilder sb = new StringBuilder();
        foreach (char c in str)
        {
            if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || c == '.' || c == '_')
            {
                sb.Append(c);
            }
        }
        return sb.ToString();
    }


    public static string GetIpAddress()
    {
        var request = HttpContext.Current.Request;
        // Look for a proxy address first
        var ip = request.ServerVariables["HTTP_X_FORWARDED_FOR"];

        // If there is no proxy, get the standard remote address
        if (string.IsNullOrWhiteSpace(ip)
            || string.Equals(ip, "unknown", StringComparison.OrdinalIgnoreCase))
            ip = request.ServerVariables["REMOTE_ADDR"];
        else
        {
            //extract first IP
            var index = ip.IndexOf(',');
            if (index > 0)
                ip = ip.Substring(0, index);

            //remove port
            index = ip.IndexOf(':');
            if (index > 0)
                ip = ip.Substring(0, index);
        }

        return ip;
    }
    public static string getmoduledescription(string module)
    {
        string description = "";
        DataSet ds = DataAccess.GetData("select id from Menus where Link=@Link", "Menu", new string[] { "@Link" }, new string[] { module + ".aspx" });
        if (ds.Tables[0].Rows.Count > 0)
        {

            DataSet dspages = DataAccess.GetData("select * from pages where Menuid=@Menuid", "Menu", new string[] { "@Menuid" }, new string[] { ds.Tables[0].Rows[0]["id"].ToString() });
            DataRow drpage = dspages.Tables[0].Rows[0];
            description = drpage["Description"].ToString();
        }

        return description;
    }

    public static void GetMenuLink(string Type,string Alias,string ModuleId,string ExtLinkNewWindow,string internallink, ref string Target, ref string link)
    {
        if (Type == "WebPage")
        {
            link = "/" + Alias;
        }
        else if (Type == "Module")
        {
            link = "/" + Alias ;
        }
        else if (Type == "Internal")
        {
            link = internallink;
        }
        else if (Type == "External")
        {
            link = ModuleId;
            Target = "target='_self'";
            if (ExtLinkNewWindow == "True")
            {
                Target = "target='_blank'";
            }
        }
        else if (Type == "None")
        {
            link = "#";
        }
    }
}