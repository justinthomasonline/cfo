<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
                <div class="contact-page">

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="left-title wow fadeInLeft">
                                <h2><%=drpage["Title"].ToString() %></h2>
                                <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                            </div>
                            <ul class="contact-details">
                                <% 
                                    DataSet dsContact = DataAccess.GetData("SELECT * FROM [dbo].[ContactUs]", "ContactUs", new string[] { }, new string[] { });

                                    if (dsContact.Tables["ContactUs"].Rows.Count > 0)
                                    {
                                        DataRow rowContact = dsContact.Tables["ContactUs"].Rows[0];

                                %>
                                <li><i>
                                    <img src="images/map.png" alt=""></i><%=rowContact["Address"] %></li>
                                <li><i>
                                    <img src="images/call.png" alt=""></i><%=rowContact["MobileNo"] %></li>
                                <li><i>
                                    <img src="images/whats.png" alt=""></i><%=rowContact["WhatsappNo"] %></li>
                                <li><i>
                                    <img src="images/mail.png" alt=""></i><a href="<%=rowContact["Email"] %>" class="yellow-link"><%=rowContact["Email"] %></a></li>
                                <li><i>
                                    <img src="images/facebook.png" alt=""></i><%=rowContact["FacebookTitle"] %></li>
                                <li><i>
                                    <img src="images/instagram.png" alt=""></i><%=rowContact["InstaTitle"] %></li>
                                <li>
                                    <i>
                                        <img src="images/clock.png" alt=""></i><h4>Working hours</h4>
                                    <p>
                                        <%=rowContact["WorkingHours"] %>
                                    </p>
                                </li>
                                

                                <%
                                    }

                                %>
                            </ul>

                        </div>
                        <div class="col-sm-6">
                            <div class="white-box">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1827.9804261544343!2d58.45345177334221!3d23.605736890424378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e91f8b539c8109f%3A0x525c861649e15787!2z2KfZhNmF2LHZg9iyINin2YTYudmF2KfZhtmKINin2YTZgdix2YbYs9mK!5e0!3m2!1sen!2som!4v1561438339646!5m2!1sen!2som" width="100%" height="400px" frameborder="0" style="border: 0" allowfullscreen></iframe>
                                <!--<img src="images/contact-map.png" class="img-responsive" alt=""></div>-->
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </section>
        <section class="wow flipInX contact-form">
            <div class="container">
                <div class="left-title wow fadeInLeft">
                    <h2>General Information</h2>
                    <span class="underline-b"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                </div>
                <p class="mt-20">
                    LEAVE US A MESSAGE</p>

                <div class="form-section">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-row">
                                <label>Your Name</label>
                                <asp:TextBox ID="FullName" MaxLength="500" runat="server" placeholder="Enter Your Name" autocomplete="off" CssClass="form-control"></asp:TextBox>                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Contact" ErrorMessage="Required Field" ControlToValidate="FullName" Display="Dynamic" ForeColor="Red" Enabled="true" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-row">
                                <label>Your Email</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Contact" ErrorMessage="Required Field" ControlToValidate="EmailIDTextBox" Display="Dynamic" ForeColor="Red" Enabled="true" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Contact" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="EmailIDTextBox" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="true"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="EmailIDTextBox" MaxLength="255" placeholder="Enter Your Email" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-row">
                                <label>Your Phone Number</label>
                                <asp:TextBox ID="PhoneNoTextBox" placeholder="Enter Your Contact Number" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator MaxLength="50" ID="RequiredFieldValidator1" ValidationGroup="Contact" SetFocusOnError="true" runat="server" ErrorMessage="Required Field" ControlToValidate="PhoneNoTextBox" Display="Dynamic" ForeColor="Red" Enabled="true"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                    ControlToValidate="PhoneNoTextBox" runat="server"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+" ValidationGroup="Contact" SetFocusOnError="true" ForeColor="Red">
                                </asp:RegularExpressionValidator>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="form-row">
                                <label>Your Message</label>
                                <asp:TextBox ID="CommentTextBox" TextMode="MultiLine" placeholder="Enter Your Message" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-row">
                                <label>Security Code</label>
                                <asp:TextBox ID="SecurityCodeLoginTextBox" runat="server" CssClass="form-control securitytxt" autocomplete="off" Width="120px"></asp:TextBox>
                                <span class="wpcf7-form-control-wrap your-message">
                                    <asp:Image ID="ImgCaptcha" runat="server" ImageUrl="captcha.ashx" CssClass="securityimg" />
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Required Field" ControlToValidate="SecurityCodeLoginTextBox" ValidationGroup="Contact" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                            <div class="form-row">
                                <div class="form-btn">
                                    <asp:Button ID="Submit" runat="server" Text="Submit" ValidationGroup="Contact" class="blue-btn" OnClick="Submit_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </section>
    </div>
    <%

        }
    %>
</asp:Content>

