<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="cms_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title header1" style="float: left;">Users</h4>
                            <%
                                string PageName = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
                                string AddNew = PageName.Split('.')[0] + "New.aspx";
                            %>
                            <a href="<%=AddNew %>" class="btn btn-info btn-fill pull-right">
                                <div class="new">Add New</div>
                            </a>
                        </div>
                        <div style="clear: both; height: 10px;"></div>
                   
                        <div class="content table-responsive table-full-width">
                            <asp:DataGrid ID="DataGrid1" runat="server" OnItemDataBound="DataGrid1_ItemDataBound" CssClass="table table-hover table-striped" UseAccessibleHeader="true" BorderWidth="0">
                                <ItemStyle />
                            </asp:DataGrid>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
      <script type="text/javascript">
          $("#usersli").addClass("active");
    </script>
</asp:Content>