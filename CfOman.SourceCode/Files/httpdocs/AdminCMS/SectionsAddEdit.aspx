<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="SectionsAddEdit.aspx.cs" Inherits="cms_BannerEdit" %>

<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        ul, li {
            list-style: none outside none;
            margin: 0;
            padding: 0;
        }
    </style>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Section</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <asp:TextBox ID="MainTitleTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Sort</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="SortTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Numbers" Display="Dynamic" ControlToValidate="SortTextBox" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="SortTextBox" runat="server" Width="150px" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description</label>
                                        <ce:editor id="Description" editorwysiwygmodecss="../css/font-awesome.min.css,../css/styles.css" runat="server"
                                            autoconfigure="Simple" width="100%" height="100px" usephysicalformattingtags="true">
                                                    </ce:editor>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ControlToValidate="Description" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Details</label>
                                        <ce:editor id="DetailEditor" editorwysiwygmodecss="../css/font-awesome.min.css,../css/styles.css" runat="server"
                                            autoconfigure="Simple" width="100%" height="100px" usephysicalformattingtags="true">
                                                    </ce:editor>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 hidden">
                                    <div class="form-group">
                                        <label runat="server" id="lblimage">Image (Size : 340 x 206)</label>
                                        <asp:FileUpload ID="InnerPageFileUpload" AllowMultiple="true" runat="server" />
                                        <br />
                                        <img runat="server" id="InnerImage" visible="false" width="310" />
                                        <asp:HiddenField ID="FileName" runat="server" />
                                    </div>
                                </div>
                                <div class="col-lg-6 hidden">
                                    <div class="form-group">
                                        <label runat="server" id="Label1">Upload File</label>
                                        <asp:FileUpload ID="FileUpload" AllowMultiple="true" runat="server" />
                                        <br />
                                        <a href="#" runat="server" id="File" visible="false" target="_blank">Download Files</a>
                                        <asp:HiddenField runat="server" ID="hf_UploadFile" Value="" />
                                    </div>
                                </div>
                            </div>
                            <div class="row hidden">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Source</label>
                                        <ce:editor id="SourceEditor" editorwysiwygmodecss="../css/font-awesome.min.css,../css/styles.css" runat="server"
                                            autoconfigure="Simple" width="100%" height="100px" usephysicalformattingtags="true">
                                                    </ce:editor>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Is Content In Blue Background</label>
                                        <asp:CheckBox ID="IsContentInBlueBackground" runat="server" Checked="false" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Is Content In Box</label>
                                        <asp:CheckBox ID="IsContentInBox" runat="server" Checked="false" />
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

                                        <div class="col-md-12" style="margin-top: 16px; margin-bottom: 16px;">

                                            <a href="javascript:history.go(-1)" class="btn-primary" style="margin-left: 20px;">Back</a>

                                            <asp:Button ID="btnPublish" runat="server" Text="Publish" class="btn-primary" OnClick="btnPublish_Click" Style="margin-left: 20px;" />

                                            <label style="margin-left: 20px;">
                                                <asp:CheckBox ID="ActiveCheckBox" runat="server" Text="Active" CssClass="minimal" />
                                            </label>
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
            $("#pagesli").addClass("active");
        </script>
</asp:Content>

