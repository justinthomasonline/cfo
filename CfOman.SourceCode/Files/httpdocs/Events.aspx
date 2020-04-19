<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%  

        string Alian = Page.RouteData.Values["Alias"].ToString();
        DataSet ds = DataAccess.GetData("select id,Title,parent_id from Menus where Alias=@Alias", "Menu", new string[] { "@Alias" }, new string[] { Alian });

        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow drmenu = ds.Tables[0].Rows[0];
            DataSet dspages = DataAccess.GetData("select * from pages where Menuid=@Menuid", "Menu", new string[] { "@Menuid" }, new string[] { drmenu["id"].ToString() });
            DataRow drpage = dspages.Tables[0].Rows[0];
            string bannerImgSrc = "UploadsAll/Pages/" + drpage["FileName"].ToString();
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
                <div class="exam-page event-list-page">
                    <div class="left-title wow fadeInLeft">
                        <h2><%=drpage["Title"].ToString() %></h2>
                        <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                    </div>
                    <% 
                        if (Request.QueryString["id"] != null)
                        {
                            if (Request.QueryString["id"].ToString() == "1")
                            {
                    %>



                    <div class="cultural-events">
                        <% 
                            DataSet dsCultureEvents = DataAccess.GetData("SELECT *,FORMAT([EventsDate],'dddd ' +'d' + IIF(DAY([EventsDate]) IN (1,21,31),'''st''' ,IIF(DAY([EventsDate]) IN (2,22),'''nd''' ,IIF(DAY([EventsDate]) IN (3,23),'''rd''','''th'''))) +' MMMM yyyy hh:mm tt') As [FormattedDate] FROM [dbo].[CultureEvents] Where CONVERT(DATE,EventsDate,103) >= CONVERT(DATE,GETDATE(),103) AND Active = 'True' Order By Sort", "CultureEvents", new string[] { }, new string[] { });

                            foreach (DataRow events in dsCultureEvents.Tables["CultureEvents"].Rows)
                            {
                                string cultureEventsimgSrc = "UploadsAll/Events/" + events["FileName"].ToString();
                        %>
                        <div class="culture-contents">
                            <div class="event">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="event-img">
                                            <img src="<%=cultureEventsimgSrc %>" />
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="event-desc">
                                            <%=events["Description"] %>
                                        </div>
                                        <div class="event-date">
                                            <p><%=events["FormattedDate"] %></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }

                        %>
                    </div>
                    <%
                        }
                        else
                        {
                    %>
                    <div class="cultural-events">
                        <%

                            DataSet dsPastCultureEvents = DataAccess.GetData("SELECT *,FORMAT([EventsDate],'dddd ' +'d' + IIF(DAY([EventsDate]) IN (1,21,31),'''st''' ,IIF(DAY([EventsDate]) IN (2,22),'''nd''' ,IIF(DAY([EventsDate]) IN (3,23),'''rd''','''th'''))) +' MMMM yyyy hh:mm tt') As [FormattedDate] FROM [dbo].[CultureEvents] Where CONVERT(DATE,EventsDate,103) < CONVERT(DATE,GETDATE(),103) AND Active = 'True' Order By Sort", "CultureEvents", new string[] { }, new string[] { });

                            foreach (DataRow pastEvents in dsPastCultureEvents.Tables["CultureEvents"].Rows)
                            {
                                string culturePastimgSrc = "UploadsAll/Events/" + pastEvents["FileName"].ToString();
                        %>
                        <div class="culture-contents">
                            <div class="event">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="event-img">
                                            <img src="<%=culturePastimgSrc %>" />
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="event-desc">
                                            <%=pastEvents["Description"] %>
                                        </div>
                                        <div class="event-date">
                                            <p><%=pastEvents["FormattedDate"] %></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }

                        %>
                    </div>
                    <%
                    %>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
    </section>
    </div>
    <%

        }
    %>
</asp:Content>

