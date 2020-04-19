<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true"
    CodeFile="PagesEdit.aspx.cs" Inherits="cms_PagesEdit" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%    
        string sql = "Select * From Pages where Menuid='" + Request.QueryString["id"] + "'";
        DataSet ds = MemoDataAccess.GetData(sql, "Pages");
        DataRow row = ds.Tables["Pages"].Rows[0];

        bool showadnew = true;

        //DataSet menuds = MemoDataAccess.GetData("select parent_id from menus where id="+Request.QueryString["id"] , "Pages");
        //if (Request.QueryString["id"]=="1")
        //{
        //    showadnew = false;
        //}
        //if (menuds.Tables[0].Rows.Count>0)
        //{
        //    if (menuds.Tables[0].Rows[0]["parent_id"].ToString()=="1")
        //    {
        //        showadnew = false;
        //    }

        //}


    %>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header ">
                            <h4 class="title titleborder">Edit Page - <%=row["Title"].ToString() %> </h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <asp:TextBox ID="TitleTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description</label>
                                        <ce:editor id="EWDescriptionEditor" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description 2</label>
                                        <ce:editor id="Description2Editor" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Banner Image(Size : 1920 x 470)</label>
                                        <asp:FileUpload ID="FileUpload" runat="server" />
                                        <asp:Image ID="Image1" Visible="false" runat="server" Width="650px" />
                                    </div>
                                </div>
                                <div class="col-md-12 hidden">
                                    <div class="form-group">
                                        <label>Content Image(Size : 400 x 400)</label>
                                        <asp:FileUpload ID="ContentFileUpload" runat="server" />
                                        <asp:Image ID="Image2" Visible="false" runat="server" Width="350px" />
                                        <asp:HiddenField ID="ContentFileName" runat="server" Value="" />
                                    </div>
                                </div>
                                <div class="col-md-12 hide">
                                    <div class="form-group">
                                        <label>Is Main Content divide into two</label>
                                        <asp:CheckBox ID="IsContentDivideTwo" runat="server" Checked="false" />
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Theme</label>
                                        <asp:DropDownList ID="ModuleDropDownList" CssClass="form-control" runat="server">
                                            <asp:ListItem Text="Page" Value="Page"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <a class="btn btn-primary" href="SectionsAddEdit.aspx?pageid=<%=Request.QueryString["id"]  %>">Add New Section</a>
                                    </div>
                                    <asp:DataGrid ID="Data_Services" runat="server" OnItemDataBound="Data_Services_ItemDataBound" CssClass="table table-striped table-bordered table-hover dataTable no-footer" UseAccessibleHeader="true">
                                        <ItemStyle />
                                    </asp:DataGrid>
                                </div>
                                <div style="clear: both; height: 10px;"></div>
                                <div style="clear: both; height: 10px;"></div>
                                <div style="clear: both; height: 10px;"></div>



                                <%string sqlP = "Select *,CONVERT(VARCHAR(10), Mo_Date, 103) as Date_New,(SElect CONVERT(VARCHAR(10), Mo_Date, 103) from Pages where id='" + Request.QueryString["id"] + "') as Pub_Date, (SElect name from CMSUsers where CMSUsers.id=Pages.Added_By) as displayname From Pages Where Menuid='" + Request.QueryString["id"] + "'";

                                    DataSet dsP = MemoDataAccess.GetData(sqlP, "Pages");

                                    DataRow rowP = dsP.Tables["Pages"].Rows[0]; %>
                                <div class="card card1">
                                    <div class="header header3">
                                        <div style="width: 40%; float: left;">
                                            <h4 class="title title4">Publish</h4>
                                            <div class="date1">
                                                Last Published Date: <span style="font-weight: bold;">
                                                    <%if (rowP["Pub_Date"].ToString() != "")
                                                        { %>
                                                    <%=rowP["Pub_Date"].ToString() %>
                                                    <%}
                                                        else
                                                        { %>Not Yet Published
                                         <%} %>                           </span>
                                            </div>
                                        </div>
                                        <div style="width: 60%; float: left;">
                                            <div class="date">Last Modified Date:<span style="font-weight: bold;"> <%=rowP["Date_New"].ToString() %></span></div>
                                            <div class="date" style="margin-right: 10px;">Last Modified By:<span style="font-weight: bold;"> <%=rowP["displayname"].ToString() %></span></div>
                                        </div>
                                    </div>
                                    <div class="box-body">
                                        <div class="row">

                                            <div style="clear: both; height: 14px;"></div>
                                            <div class="col-md-12">
                                                <div class="form-group" style="text-align: center;">

                                                    <asp:Button ID="btnPublish" runat="server" Text="Publish" Style="margin-left: 20px;" class="btn-primary" OnClick="btnPublish_Click" />
                                                    <a href="javascript:history.go(-1)" class="btn-primary" style="margin-left: 20px;">Back</a>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <div style="clear: both; height: 10px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $("#pagesli").addClass("active");
        </script>
</asp:Content>

