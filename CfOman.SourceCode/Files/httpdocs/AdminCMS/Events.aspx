<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCMS/Site.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="AdminCMS_Events" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header ">
                            <h4 class="title header1" style="float: left;">Events</h4>
                            <a href="EventsAddEdit.aspx" class="btn btn-info btn-fill pull-right">
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
        $("#eventsli").addClass("active");
    </script>
</asp:Content>

