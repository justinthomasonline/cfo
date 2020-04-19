<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCMS/Site.master" AutoEventWireup="true" CodeFile="HomeOtherAddEdit.aspx.cs" Inherits="AdminCMS_HomeOtherAddEdit" %>

<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Home Courses</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <asp:TextBox ID="TitleTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="TitleTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Sort</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ControlToValidate="SortTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only Numbers" Display="Dynamic" ControlToValidate="SortTextBox" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="SortTextBox" runat="server" Width="150px" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <ce:editor id="EWDescriptionEditor" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="EWDescriptionEditor" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <asp:DropDownList ID="Alias" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label runat="server" id="lblimage">Courses Image (Size : 340 x 206)</label>
                                    <asp:FileUpload ID="SliderFileUpload" AllowMultiple="false" runat="server" />
                                    <br />
                                    <img src="#" runat="server" id="SliderImage" visible="false" />
                                    <asp:HiddenField runat="server" ID="SliderfileName" />
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
        $("#homethumbli").addClass("active");
    </script>
</asp:Content>

