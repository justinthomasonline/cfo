<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        /*.search > h2 {
                margin-bottom: 0px;
                font-size: 24px;
                color: #bd983c;
                display: inline-block;
                margin-top: 0px;
                position: relative;
            }*/
    </style>
    <div class="inner-page-title">
        <div class="banner-text">
            <div class="banner-title">
                <h1>Search</h1>
            </div>
        </div>
        <div class="overlay"></div>
        <img src="images/about-bg.jpg" alt="">
    </div>
    <div class="inner-main">
        <section class="wow flipInX">
            <div class="container">
                <div class="exam-page">
                    <div class="row">
                        <div class="col-sm-12">
                            <% 
                                string search = string.Empty;

                                if (Request.QueryString["Keyword"] != null)
                                {
                            %>
                            <div class="left-title">
                                <h2>Search Result for <%=Request.QueryString["Keyword"].ToString() %></h2>
                                <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                            </div>
                            <div class="mt-30">
                                <% 
                                    search = Request.QueryString["Keyword"].ToString();
                                    string str = "SELECT Pages.Title,Menus.Alias FROM Pages inner join Menus on Pages.MenuID = Menus.id Where Pages.Title like '%" + search + "%' OR Pages.Description like '%" + search + "%'";
                                    DataSet ds = DataAccess.GetData(str, "Menu", new string[] { }, new string[] { });

                                    if (ds.Tables[0].Rows.Count > 0)
                                    {
                                        foreach (DataRow row in ds.Tables[0].Rows)
                                        {
                                %>
                                <div class="white-box-left mt-20">
                                    <h4><span class="blue"><a href="<%=row["Alias"] %>"><%=row["Title"] %></a></span></h4>
                                </div>
                                <%
                                        }
                                    }
                                    else
                                    {
                                %>
                                <div class="white-box-left mt-20">
                                    <h4><span>No Record Found for this <%=Request.QueryString["Keyword"].ToString() %></span></h4>
                                </div>
                                <%
                                    }

                                %>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

