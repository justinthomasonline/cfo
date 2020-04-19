<%@ Application Language="C#" %>
<%@ Import Namespace="MemoDataManagement" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Data" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
         
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    void RegisterRoutes(RouteCollection routes)
    {
        routes.Ignore("{resource}.axd/{*pathInfo}");
        routes.Ignore("AdminCMS/{*pathInfo}");
        routes.MapPageRoute("Home", "home", "~/Default.aspx");

        try
        {
            string sql = "Select * From Menus where Active='True'  and Type='Module'";
            DataSet ds = DataAccess.GetData(sql, "Menus");
            foreach (DataRow row in ds.Tables[0].Rows)
            {

                string paramVal = row["ModuleID"].ToString();

                if (paramVal.Contains("&"))
                {
                    string[] paramVals = paramVal.Split('&');
                    routes.MapPageRoute("", row["Alias"].ToString(), "~/" + row["Link"].ToString(), false, new RouteValueDictionary { { "id", paramVals[0] }, { "id2", paramVals[1] } });
                }
                else
                {
                    routes.MapPageRoute("", row["Alias"].ToString(), "~/" + row["Link"].ToString(), false, new RouteValueDictionary { { "Alias", row["Alias"].ToString() } });                    
                }

            }
        }
        catch (Exception ex)
        {
            throw;
        }
        routes.MapPageRoute("", "{PAlias1}/{PAlias}/{Alias}", "~/Pages.aspx");
        routes.MapPageRoute("", "{PAlias}/{Alias}", "~/Pages.aspx");
        routes.MapPageRoute("", "{Alias}", "~/Pages.aspx");

    }

</script>
