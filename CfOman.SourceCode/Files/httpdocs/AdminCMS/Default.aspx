<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .col-md-12 {
            margin-bottom: 20px;
        }

        .table > tbody > tr > td > a:hover, .table > tfoot > tr > td > a:hover {
            color: #d6e028 !important;
        }

        .table > thead > tr > th, .table > tbody > tr > th {
            padding: 8px 8px;
        }

        .table > tbody > tr > td, .table > tfoot > tr > td {
            padding: 8px 8px;
        }

        .panel-heading {
            padding-bottom: 4px;
            padding-top: 4px;
        }
    </style>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Dashboard</h4>
                        </div>
                        <div class="box-body" style="margin-top: 10px;">

                            <div id="accordion" class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background-color: #fff;">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            <h4 class="panel-title" style="color: #42d0ed; font-weight: bold; font-size: 14px;">LOGGED-IN USERS
                                            </h4>
                                        </a>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in" aria-expanded="true">
                                        <div class="panel-body">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr style="background-color: #f5f5f5;">
                                                        <th style="color: #ffa800;">User Name</th>
                                                        <th style="color: #ffa800;">Date</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                 <% 
                                                        string sql = "select * from CMSUsers where id='" + Session["UserSession"].ToString() + "'";
                                                        DataSet dspro1 = MemoDataAccess.GetData(sql, "CMSUsers");
                                                        if (dspro1.Tables["CMSUsers"].Rows.Count != 0)
                                                        {
                                                            DataRow row = dspro1.Tables["CMSUsers"].Rows[0];

                                                    %>
                                                    <tr>
                                                        <td><%=row["Username"].ToString() %></td>
                                                        <td><%=DateTime.Now.ToString("dd/MMM/yyyy") %></td>
                                                    </tr>
                                                    <%} %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        

                         
                                        </div>
                                    </div>
                                </div>
                            </div>
    </div>
    </div>
    <script type="text/javascript">
        $("#homeli").addClass("active");
    </script>
</asp:Content>

