<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="LogsView.aspx.cs" Inherits="Administrator_PagesNew" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

      <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title header1" style="float: left;">Logs - View</h4>                            
                           
                        </div>
                     <%
        DataSet ds = MemoDataAccess.GetData("select a.tablename,a.operation,a.Record,a.Date,a.Ipaddress,b.username from tracking a, CMSusers b where a.userid=b.id and a.id='"+Request.QueryString["id"]+"'","Tracking");
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow row = ds.Tables[0].Rows[0];
         %>
            <table class="table table-striped table-bordered table-hover dataTable no-footer">
                <tr>
                    <td width="100px"><B>User Name</B></td>
                    <td><%=row["Username"] %></td>
                </tr>
                 <tr>
                    <td><B>Section</B></td>
                                       <td><%=row["TableName"] %></td>

                </tr>
                 <tr>
                    <td><B>Operation</B></td>
                                      <td><%=row["Operation"] %></td>

                </tr>
                 <tr>
                    <td><B>Record</B></td>
                                      <td><%=row["Record"] %></td>

                </tr>
                 <tr>
                    <td><B>Date</B></td>
                                       <td><%=row["Date"] %></td>

                </tr>
                 <tr>
                    <td><B>IP Address</B></td>
                                       <td><%=row["IPAddress"] %></td>

                </tr>
                <tr>
                    <td colspan="2">
                         <div class="card card1" style="margin-bottom:inherit !important">
                            <div class="box-body">
                                <div class="row">
                                    <div style="clear: both; height: 14px;"></div>
                                    <div class="col-md-12">
                                        <div class="form-group" style="text-align: center;">
                                            <a href="javascript:history.go(-1)" class="btn btn-info btn-fill" style="margin-left: 20px;">Back</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </td>
                </tr>
            </table>
    <%} %>

                               
                    </div>
                </div>
            </div>
        </div>
    </div>

      <script type="text/javascript">
            $("#userlogsli").addClass("active");
        </script>
      
</asp:Content>

