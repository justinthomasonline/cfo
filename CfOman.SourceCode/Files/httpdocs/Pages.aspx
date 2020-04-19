<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Pages.aspx.cs" Inherits="_Default" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%  
        string Alian = Page.RouteData.Values["Alias"].ToString();
        DataSet ds = DataAccess.GetData("select id,Title,parent_id from Menus where Alias=@Alias", "Menu", new string[] { "@Alias" }, new string[] { Alian });

        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow drmenu = ds.Tables[0].Rows[0];
            DataSet dspages = DataAccess.GetData("select *,(select count(1) from section where Page_ID = pages.id) as SectionCount from pages where Menuid=@Menuid", "Menu", new string[] { "@Menuid" }, new string[] { drmenu["id"].ToString() });
            DataRow drpage = dspages.Tables[0].Rows[0];

            string bannerImgSrc = (!string.IsNullOrEmpty(drpage["FileName"].ToString())) ? "UploadsAll/Pages/" + drpage["FileName"].ToString() : string.Empty;
            string contentFileNameSrc = string.Empty;

    %>
    <div class="inner-page-title">
        <div class="banner-text">
            <div class="banner-title">
                <h1><%=drmenu["Title"].ToString() %></h1>
            </div>
        </div>
        <div class="overlay"></div>
        <img src="<%=bannerImgSrc %>" alt="">
    </div>
    <div class="clearfix"></div>
    <div class="inner-main" data-wow-delay=".4s">
        <section class="wow flipInX">
            <div class="container">
                <div class="<%=(drpage["SectionCount"].ToString()) == "0" ? "exam-page" : "exam-page-new"%>">
                    <div class="row">
                        <% 
                            string isFull = string.Empty;
                            if (!string.IsNullOrEmpty(drpage["ContentFileName"].ToString()))
                            {
                                contentFileNameSrc = "UploadsAll/Pages/" + drpage["ContentFileName"].ToString();
                                isFull = "col-sm-9";
                        %>
                        <div class="col-sm-3">
                            <img src="<%=contentFileNameSrc %>" class="img-responsive" alt="" />
                        </div>
                        <%
                            }
                            else
                            {
                                isFull = "col-sm-12";
                            }
                        %>


                        <div class="<%=isFull %>">
                            <div class="left-title wow fadeInLeft">
                                <h2><%=drpage["Title"].ToString() %></h2>
                                <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                            </div>

                            <% 
                                if (!string.IsNullOrEmpty(drpage["Description2"].ToString()))
                                {
                            %>
                            <div class="row mt-20">
                                <div class="col-sm-6">
                                    <%=drpage["Description"].ToString() %>
                                </div>
                                <div class="col-sm-6">
                                    <%=drpage["Description2"].ToString() %>
                                </div>
                            </div>
                            <%

                                }
                                else
                                {
                            %>
                            <div class="">
                                <br>
                                <%=drpage["Description"].ToString() %>
                            </div>
                            <%
                                }

                            %>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <% 
            DataSet dsSection = DataAccess.GetData("SELECT * FROM Section Where Page_ID ='" + drpage["id"] + "' and Active = 'True' Order By Sort", "Section", new string[] { }, new string[] { });
            string isBox = string.Empty;
            int k = 1;
            foreach (DataRow rowSection in dsSection.Tables["Section"].Rows)
            {
                isBox = string.Empty;
                if (Convert.ToBoolean(rowSection["IsContentInBox"]))
                {
                    isBox = "white-box-left ";
                }

                if (Convert.ToBoolean(rowSection["IsContentInBlueBackground"]))
                {
        %>
        <section class="wow flipInX bg-info">
            <div class="container">
                <div class="adults-page">
                    <div class="row">
                        <div class="col-sm-12 ">
                            <% 
                                if (!string.IsNullOrEmpty(rowSection["Title"].ToString()))
                                {
                            %>
                            <div class="left-title wow fadeInLeft">
                                <h2><%=rowSection["Title"].ToString() %></h2>
                                <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                            </div>
                            <%
                                }
                            %>

                            <div class="row mt-20">
                                <div class="col-sm-12">
                                    <%=rowSection["Description"] %>
                                </div>
                                <%=rowSection["Details"] %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%
            }
            else
            {
        %>
        <section class="wow flipInX">
           
            <div class="container">
                <div class="<%=(int.Parse(drpage["SectionCount"].ToString()) == k) ? "exam-page-down" : "adults" %>">
                    <div class="row">
                       
                                <div class="col-sm-12 mt-20">
                                    <% 
                                        if (!string.IsNullOrEmpty(rowSection["Title"].ToString()))
                                        {
                                    %>
                                    <div class="left-title wow fadeInLeft">
                                        <h2><%=rowSection["Title"].ToString() %></h2>
                                        <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                                    </div>
                                    <%
                                        }
                                    %>
                                    <div class="<%=isBox %>">
                                        <%=rowSection["Description"] %>
                                    </div>
                                </div>
                           
                        </div>
                 
                </div>
            </div>
           
        </section>
        <%
                }
                k++;
            }
        %>
    </div>
    <%

        }
    %>
</asp:Content>




