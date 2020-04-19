<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="Pages.aspx.cs" Inherits="cms_Pages" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header ">
                            <h4 class="title header1" style="float: left;">Pages</h4>
                            <%
                                string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
                                string AddNew = PageName.Split('.')[0] + "New.aspx";
                            %>
                            <a href="<%=AddNew %>" class="btn btn-info btn-fill pull-right">
                                <div class="new">Add New</div>
                            </a>
                        </div>
                        <div style="clear: both; height: 10px;"></div>
                        <!-- /.box-header -->
                        <div class="content table-responsive table-full-width">
                            <table class="table table-hover table-striped">
                                <thead>

                                    <th width="28%">Title</th>
                                    <th width="15%">Last Modified Date</th>
                                    <th width="8%" style="text-align: center;">Edit</th>
                                    <th width="8%" style="text-align: center;">Delete</th>
                                </thead>
                                <tbody>
                                    <% int index = 1;
                                        string bgcolor = "style='background-color:#f9f9f9;'";

                                        string sql = "select id,Title,CONVERT(VARCHAR(10), Mo_Date, 103) as Date_New from Pages as MM where Parent_ID=0 and ExtLinkNewWindow!='True'";
                                        DataSet ds = MemoDataAccess.GetData(sql, "Sections");
                                        foreach (DataRow row in ds.Tables["Sections"].Rows)
                                        {
                                            bgcolor = "style='background-color:#f9f9f9;'";
                                            if (index % 2 == 0)
                                            {
                                                bgcolor = "style='background-color:#fff;'";
                                            }
                                            string sql1 = "select id,Title,CONVERT(VARCHAR(10), Mo_Date, 103) as Date_New from Pages as MM where Parent_ID='" + row["id"].ToString() + "' and ExtLinkNewWindow!='True'";
                                            DataSet ds1 = MemoDataAccess.GetData(sql1, "LinkMaster");

                                            string Edit = "PagesEdit.aspx?id=" + row["id"].ToString();

                                            string Delete = PageName + "?DelID=" + row["id"].ToString();
                                            string Link = "Pages.aspx?id=" + row["id"].ToString();
                                            index++;
                                    %>
                                    <tr <%=bgcolor %>>

                                        <td>
                                            <%if (ds1.Tables["LinkMaster"].Rows.Count != 0)
                                                { %>
                        &nbsp;&nbsp;<img id='tv_M<%=row["id"].ToString() %>' src="assets/img/plus.png" onclick="javascript:SlidIt('Menu_M<%=row["id"].ToString() %>',this.id);"
                            style="cursor: pointer; vertical-align: bottom" />&nbsp;<a href="javascript:SlidIt('Menu_M<%=row["id"].ToString() %>','tv_M<%=row["id"].ToString() %>');"
                                class="alink"><%=row["Title"].ToString() %></a>
                                            <% }
                                                else
                                                {
                                            %>
                         &nbsp;&nbsp;<img src="assets/img/minus.png" />&nbsp;<%=row["Title"].ToString()%>
                                            <%
                                                } %>
                                        </td>

                                        <td>
                                            <%=row["Date_New"].ToString()%>
                                        </td>

                                        <td style="text-align: center;">
                                            <a class="grid-link" href="<%=Edit %>">
                                                <img src="assets/img/edit.png" /></a>
                                        </td>
                                        <td style="text-align: center;">

                                            <a class="grid-link" onclick='Delete(this.href);return false;' href="<%=Delete %>">
                                                <img src="assets/img/delete.png" /></a>

                                        </td>
                                    </tr>
                                    <%if (ds1.Tables["LinkMaster"].Rows.Count != 0)
                                        { %>
                                    <tr id='Menu_M<%=row["id"].ToString() %>' style="display: none;">
                                        <td colspan="7" style="padding-right: 0px; padding-left: 0px;">
                                            <table class="table table-hover table-striped" width="100%" cellpadding="0" cellspacing="0">
                                                <%                                      
    foreach (DataRow row1 in ds1.Tables["LinkMaster"].Rows)
    {
        string sql2 = "select id,Title,CONVERT(VARCHAR(10), Mo_Date, 103) as Date_New from Pages as MM where Parent_ID='" + row1["id"].ToString() + "' and ExtLinkNewWindow!='True'";
        DataSet ds2 = MemoDataAccess.GetData(sql2, "LinkMaster");
        Link = "Pages.aspx?id=" + row1["id"].ToString();
        //  Edit = PageName.Split('.')[0] + "Edit.aspx?id=" + row1["id"].ToString();
        Edit = PageName.Split('.')[0] + "Edit.aspx?id=" + row1["id"].ToString();
        Delete = PageName + "?DelID=" + row1["id"].ToString();
                                                %>
                                                <tr>

                                                    <td width="28%"> 
                                                         <%if (ds2.Tables["LinkMaster"].Rows.Count != 0)
                                                { %>
                        &nbsp;&nbsp;<img id='tv_M<%=row1["id"].ToString() %>' src="assets/img/plus.png" onclick="javascript:SlidIt('Menu_M<%=row1["id"].ToString() %>',this.id);"
                            style="cursor: pointer; vertical-align: bottom" />&nbsp;<a href="javascript:SlidIt('Menu_M<%=row1["id"].ToString() %>','tv_M<%=row1["id"].ToString() %>');"
                                class="alink"><%=row1["Title"].ToString() %></a>
                                            <% }
                                                else
                                                {
                                            %>
                         &nbsp;&nbsp;<img src="assets/img/minus.png" />&nbsp;<%=row1["Title"].ToString()%>
                                            <%
                                                } %></td>

                                                    <td width="15%"><%=row1["Date_New"].ToString() %></td>

                                                    <td width="8%" style="text-align: center;">
                                                        <a class="grid-link" href="<%=Edit %>">
                                                            <img src="assets/img/edit.png" /></a>
                                                    </td>
                                                    <td width="8%" style="text-align: center;">

                                                        <a class="grid-link" onclick='Delete(this.href);return false;' href="<%=Delete %>">
                                                            <img src="assets/img/delete.png" /></a>

                                                    </td>
                                                </tr>

                                                <%     if (ds2.Tables["LinkMaster"].Rows.Count != 0)
    { %>

                                                <tr id='Menu_M<%=row1["id"].ToString() %>' style="display: none;">
                                                    <td colspan="7" style="padding-right: 0px; padding-left: 0px;">
                                                        <table class="table table-hover table-striped" width="100%" cellpadding="0" cellspacing="0">
                                                            <%                                      
    foreach (DataRow row3 in ds2.Tables["LinkMaster"].Rows)
    {

        Link = "Pages.aspx?id=" + row3["id"].ToString();
        //  Edit = PageName.Split('.')[0] + "Edit.aspx?id=" + row1["id"].ToString();
        Edit = PageName.Split('.')[0] + "Edit.aspx?id=" + row3["id"].ToString();
        Delete = PageName + "?DelID=" + row3["id"].ToString();
                                                            %>
                                                            <tr>

                                                                <td width="28%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=row3["Title"].ToString() %></td>

                                                                <td width="15%"><%=row3["Date_New"].ToString() %></td>

                                                                <td width="8%" style="text-align: center;">
                                                                    <a class="grid-link" href="<%=Edit %>">
                                                                        <img src="assets/img/edit.png" /></a>
                                                                </td>
                                                                <td width="8%" style="text-align: center;">

                                                                    <a class="grid-link" onclick='Delete(this.href);return false;' href="<%=Delete %>">
                                                                        <img src="assets/img/delete.png" /></a>

                                                                </td>
                                                            </tr>
                                                            <%}%>
                                                           
                                                        </table>
                                                        </td>
                                                    </tr>
                                            <%}
                                                } %>
                                                </table>
                                        </td>
                                    </tr>
                                    <% }
                                        }%>
                                    <%  sql = "select id,Title,CONVERT(VARCHAR(10), Mo_Date, 103) as Date_New from Pages as MM where Parent_ID='-1' ";
                                        ds = MemoDataAccess.GetData(sql, "Sections");
                                        if (ds.Tables["Sections"].Rows.Count != 0)
                                        {
                                            foreach (DataRow rowM in ds.Tables["Sections"].Rows)
                                            {
                                                string Edit1 = PageName.Split('.')[0] + "Edit.aspx?id=" + rowM["id"].ToString();
                                                string Delete1 = PageName + "?DelID=" + rowM["id"].ToString();
                                                string PageLink1 = "Pages.aspx?id=" + rowM["id"].ToString() + "&M=F";
                                    %>
                                    <tr>

                                        <td style="color: #1DC7EA;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rowM["Title"].ToString()%>
                                     
                                        </td>

                                        <td>
                                            <%=rowM["Date_New"].ToString()%>
                                        </td>

                                        <td style="text-align: center;">
                                            <a class="grid-link" href="<%=Edit1 %>">
                                                <img src="assets/img/edit.png" /></a>
                                        </td>
                                        <td style="text-align: center;">

                                            <a class="grid-link" onclick='Delete(this.href);return false;' href="<%=Delete1 %>">
                                                <img src="assets/img/delete.png" /></a>

                                        </td>
                                    </tr>
                                    <%}
                                        } %>
                                </tbody>
                            </table>

                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function SlidIt(Mid, imgid) {
            if (document.getElementById(Mid).style.display == "none") {
                $("#" + Mid).slideDown("slow");
                document.getElementById(imgid).src = "assets/img/minus.png";
            }
            else {
                $("#" + Mid).slideUp("slow");
                document.getElementById(imgid).src = "assets/img/plus.png";
            }
        }
    </script>
    <script type="text/javascript">
        $("#pagesli").addClass("active");
    </script>
</asp:Content>

