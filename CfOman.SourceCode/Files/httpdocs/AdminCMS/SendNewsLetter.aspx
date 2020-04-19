<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCMS/Site.master" AutoEventWireup="true" CodeFile="SendNewsLetter.aspx.cs" Inherits="AdminCMS_SendNewsLetter" %>

<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Send News Letter</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <asp:TextBox ID="SubjectTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field"
                                            CssClass="error" ForeColor="Red" ControlToValidate="SubjectTextBox" SetFocusOnError="true"
                                            ValidationGroup="newb"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Message</label>
                                        <ce:editor id="EWDescriptionEditor" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="EWDescriptionEditor" Display="Dynamic" ValidationGroup="newb" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both; height: 10px;"></div>
                        <div class="card card1">
                            <div class="header header3">
                                <h4 class="title title4">Send</h4>
                            </div>
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-12" style="margin-top: 16px; margin-bottom: 16px; text-align: center;">
                                        <a href="javascript:history.go(-1)" class="btn-primary" style="margin-left: 20px;">Back</a>
                                        <asp:Button ID="btnPublish" ValidationGroup="newb" runat="server" Text="Submit" class="btn-primary" OnClick="btnPublish_Click" Style="margin-left: 20px;" />
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
        $("#newsletterli").addClass("active");
    </script>
</asp:Content>

