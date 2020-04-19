<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>


    <div id="myCarousel" class="carousel banners wow zoomInLeft slide" data-wow-delay=".2s" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            <% 
                string active = string.Empty;
                int i = 1;
                DataSet dsHomeSlider = DataAccess.GetData("SELECT * FROM [dbo].[HomeSliderSection] Where Active = 'True' ORDER BY SORT", "HomeSlider", new string[] { }, new string[] { });

                foreach (DataRow item in dsHomeSlider.Tables["HomeSlider"].Rows)
                {
                    string sliderImgSrc = "UploadsAll/HomeSlider/" + item["FileName"].ToString();

                    active = (i == 1) ? "active" : string.Empty;
            %>
            <div class="banner-bar item <%=active %>">
                <img src="<%=sliderImgSrc %>" alt="" />
                <div class="banner-text">
                    <div class="banner-title">
                        <h1><%=item["Title"].ToString() %></h1>
                    </div>
                    <div class="banner-descreption"><%=item["Description"].ToString() %></div>
                </div>
            </div>
            <%
                    i++;
                }
            %>
        </div>
        <div class="ro_al"><a class="previous" href="#myCarousel" role="button" data-slide="prev"><span class=" " aria-hidden="true"></span><span class="sr-only"><i style="font-size: 24px" class="fa">&#xf053;</i></span> </a><a class="next" href="#myCarousel" role="button" data-slide="next"><span class=" " aria-hidden="true"></span><span class="sr-only"><i style="font-size: 24px" class="fa">&#xf054;</i></span> </a></div>
        <div class="down-arrow">
            <a href="">
                <img src="images/arrow.png" alt="" /></a>
        </div>
    </div>
    <div class="clearfix"></div>
    <% 
        DataSet dsHome = DataAccess.GetData("SELECT * FROM [dbo].[Home] Where id = 1", "Home", new string[] { }, new string[] { });

        if (dsHome.Tables["Home"].Rows.Count > 0)
        {
            DataRow rowHome = dsHome.Tables["Home"].Rows[0];

    %>
    <div class="home-main" data-wow-delay=".4s">
        <section class="about-us wow flipInX">
            <div class="container">
                <div class="row">
                    <div class="about">
                        <h2 class="wow fadeInRight" data-wow-delay=".4s">ABOUT US</h2>
                        <center>
                            <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                        </center>
                        <div class="about-text wow fadeInLeft" data-wow-delay=".6s">
                            <%=rowHome["AboutDescription"] %>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="courses-section">
            <div class="courses">
                <div class="container">
                    <div class="courses-contents">
                        <h2 class="wow flipInY">COURSES</h2>
                        <center>
                            <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                        </center>
                        <div class="boxes">
                            <div class="row">
                                <% 
                                    int j = 2;
                                    DataSet dsCourses = DataAccess.GetData("SELECT * FROM [dbo].[HomeCourses] Where Active = 'True' Order By Sort", "HomeCourses", new string[] { }, new string[] { });

                                    foreach (DataRow Courses in dsCourses.Tables["HomeCourses"].Rows)
                                    {
                                        string coursesImgSrc = "UploadsAll/HomeCourses/" + Courses["FileName"].ToString();
                                %>
                                <div class="col-sm-6 col-md-3">
                                    <div class="box wow zoomIn" data-wow-delay=".<%=j %>s">
                                        <div class="box-image">

                                            <img src="<%=coursesImgSrc %>"  />

                                        </div>
                                        <div class="top-sec">
                                            <img src="images/boxes.png" />
                                        </div>
                                        <div class="box-text">
                                            <h3><%=Courses["Title"] %></h3>
                                            <p style="font-size: 14px; line-height: 21px;"><%=Courses["Description"] %></p>
                                            <a href="<%=Courses["Alias"] %>" class="button">KNOW MORE</a>
                                        </div>
                                    </div>
                                </div>
                                j++;
                                <%
                                    }

                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <% 
            DataSet dsCheck = DataAccess.GetData("SELECT COUNT(1) as IsExist FROM [dbo].[HomeCultureEvents] Where Active = 'True'", "CheckCultureEvents", new string[] { }, new string[] { });
            if (dsCheck.Tables["CheckCultureEvents"].Rows.Count > 0)
            {
                DataRow rowCheck = dsCheck.Tables["CheckCultureEvents"].Rows[0];

                if (Convert.ToInt32(rowCheck["IsExist"]) > 0)
                {
        %>
        <section class="whats-events-sec">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="whats-on">
                            <div class="whats-on-title wow fadeInLeft">
                                <h2>WHAT’S ON</h2>
                            </div>
                            <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                            <div class="whatsOn slider">
                                <% 
                                    DataSet dsWhats = DataAccess.GetData("SELECT * FROM [dbo].[HomeImages]", "HomeImages", new string[] { }, new string[] { });

                                    foreach (DataRow images in dsWhats.Tables["HomeImages"].Rows)
                                    {
                                        string imgSrc = "UploadsAll/HomeWhatson/" + images["FileName"].ToString();
                                %>
                                <div class="slick-item">
                                    <%--<img src="<%=imgSrc %>" />--%>
                                    <a class="" href="#" data-image-id="" data-toggle="modal" data-title="" data-image="<%=imgSrc %>" data-target="#<%=images["Id"] %>">
                                        <img src="<%=imgSrc %>" alt="Another alt text">
                                    </a>
                                </div>

                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="cultural-events">
                            <div class="cultural-events-title wow fadeInRight">
                                <h2>CULTURAL EVENTS</h2>
                                <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                            </div>
                            <% 
                                DataSet dsCultureEvents = DataAccess.GetData("SELECT *,FORMAT([EventsDate],'dddd ' +'d' + IIF(DAY([EventsDate]) IN (1,21,31),'''st''' ,IIF(DAY([EventsDate]) IN (2,22),'''nd''' ,IIF(DAY([EventsDate]) IN (3,23),'''rd''','''th'''))) +' MMMM yyyy hh:mm tt') As [FormattedDate] FROM [dbo].[HomeCultureEvents] Where Active = 'True' Order By Sort", "CultureEvents", new string[] { }, new string[] { });

                                foreach (DataRow cultureEvents in dsCultureEvents.Tables["CultureEvents"].Rows)
                                {
                                    string cultureEventsimgSrc = "UploadsAll/HomeEvents/" + cultureEvents["FileName"].ToString();
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
                                                <%=cultureEvents["Description"] %>
                                            </div>
                                            <div class="event-date">
                                                <p><%=cultureEvents["FormattedDate"] %></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
            }
            else
            {
        %>
        <section class="our-parteners">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="whats-on">
                            <div class="whats-on-title wow fadeInLeft">
                                <h2>WHAT’S ON</h2>
                            </div>
                            <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                            <div class="whatsOn1 slider">
                                <% 
                                    DataSet dsWhats = DataAccess.GetData("SELECT * FROM [dbo].[HomeImages]", "HomeImages", new string[] { }, new string[] { });

                                    foreach (DataRow images in dsWhats.Tables["HomeImages"].Rows)
                                    {
                                        string imgSrc = "UploadsAll/HomeWhatson/" + images["FileName"].ToString();
                                         string imgSrcLarge = "UploadsAll/HomeWhatson/" + images["LargeFileName"].ToString();
                                %>
                                <div class="slick-item">
                                   
                                    
                                <a data-fancybox="gallery" href="<%=imgSrcLarge %>"><img src="<%=imgSrc %>"></a>

                                   <!--  <a class="" href="#" data-image-id="" data-toggle="modal" data-title="" data-image="<%=imgSrc %>" data-target="#<%=images["Id"] %>">
                                        <img src="<%=imgSrc %>" alt="Another alt text">
                                    </a> -->
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%
                }
            }
        %>


        <section class="our-parteners">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="our-parteners-sec">
                            <h2>OUR PARTNERS</h2>
                            <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                        </div>
                        <div class="our-partner slider">
                            <% 
                                DataSet dsourPatner = DataAccess.GetData("SELECT * FROM [dbo].[OurPatner]", "OurPatner", new string[] { }, new string[] { });

                                foreach (DataRow patner in dsourPatner.Tables["OurPatner"].Rows)
                                {
                                    string patnerEventsimgSrc = "UploadsAll/HomePatner/" + patner["FileName"].ToString();
                            %>
                            <div class="slick-item">
                                <a href="#">
                                    <img src="<%=patnerEventsimgSrc %>" style="width:188px;height:135px" /></a>
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

            DataSet dsWhatsModel = DataAccess.GetData("SELECT * FROM [dbo].[HomeImages]", "HomeImages", new string[] { }, new string[] { });

            foreach (DataRow imagesModel in dsWhatsModel.Tables["HomeImages"].Rows)
            {
                string imgSrc = "UploadsAll/HomeWhatson/" + imagesModel["LargeFileName"].ToString();

        %>
        <div class="modal fade img_gal" id="<%=imagesModel["Id"] %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <img id="image-gallery-image" src="<%=imgSrc %>">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
    %>
</asp:Content>

