<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCMS/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="AdminCMS_ContactUs" %>

<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Contact Us</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="AddressTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required Field" ControlToValidate="EmailIDTextBox" Display="Dynamic" ForeColor="Red" Enabled="true"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="EmailIDTextBox" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="EmailIDTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Telephone Number</label>
                                        <ce:editor id="TelTextbox" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ControlToValidate="TelTextbox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Whatsapp Number</label>
                                        <ce:editor id="WhatsappEditor" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="WhatsappEditor" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Facebook Link</label>
                                        <ce:editor id="FacebookTextbox" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Facebook Title</label>
                                        <asp:TextBox ID="FacebookTitle" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Instagram Link</label>
                                        <ce:editor id="InstagramTextbox" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Instagram Title</label>
                                        <asp:TextBox ID="InstagramTitle" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Youtube Link</label>
                                        <ce:editor id="YoutubeTextbox" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Youtube Title</label>
                                        <asp:TextBox ID="YoutubeTitle" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Working hours</label>
                                        <ce:editor id="WorkingHoursEditor" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="WorkingHoursEditor" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both; height: 10px;"></div>
                        <div class="card card1">
                            <div class="header header3">
                                <h4 class="title title4">Publish</h4>
                            </div>
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-12" style="margin-top: 16px; margin-bottom: 16px; text-align: center;">
                                        <a href="javascript:history.go(-1)" class="btn-primary" style="margin-left: 20px;">Back</a>
                                        <asp:Button ID="btnPublish" runat="server" Text="Submit" class="btn-primary" OnClick="btnPublish_Click" Style="margin-left: 20px;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both; height: 10px;"></div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <script type="text/javascript">
        $("#contactli").addClass("active");
    </script>
</asp:Content>

