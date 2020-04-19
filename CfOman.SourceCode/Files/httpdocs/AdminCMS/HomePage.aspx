<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

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
                            <h4 class="title titleborder">Home Page - Edit</h4>
                        </div>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>About Us</label>
                                    <ce:editor id="AboutUsEditor" editorwysiwygmodecss="../css/styles.css,../css/font-awesome.min.css" runat="server" autoconfigure="Full" width="100%" usephysicalformattingtags="true"></ce:editor>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Home Slider Section</h4>
                            <a href="HomeSliderAddEdit.aspx" class="btn btn-info btn-fill pull-right">
                                <div class="new">Add Home Slider</div>
                            </a>
                        </div>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <div class="content table-responsive table-full-width">
                            <asp:DataGrid ID="Data_Services" runat="server" OnItemDataBound="Data_Services_ItemDataBound" CssClass="table table-striped table-bordered table-hover dataTable no-footer" UseAccessibleHeader="true">
                                <ItemStyle />
                            </asp:DataGrid>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Home Courses</h4>
                            <a href="HomeOtherAddEdit.aspx" class="btn btn-info btn-fill pull-right">
                                <div class="new">Add Courses</div>
                            </a>
                        </div>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <div class="content table-responsive table-full-width">
                            <asp:DataGrid ID="Data_OtherSection" runat="server" OnItemDataBound="Data_OtherSection_ItemDataBound" CssClass="table table-striped table-bordered table-hover dataTable no-footer" UseAccessibleHeader="true">
                                <ItemStyle />
                            </asp:DataGrid>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <label runat="server" id="Label1">What's on (Multiple Images) Image Dimension 275 x 382) </label>
                        <asp:FileUpload ID="MultipleFileUploads" AllowMultiple="True" runat="server" />
                        <br />
                        <asp:DataGrid ID="DataGrid1" runat="server" OnItemDataBound="DataGrid1_ItemDataBound" CssClass="table table-hover table-striped" UseAccessibleHeader="true" BorderWidth="0">
                            <ItemStyle />
                        </asp:DataGrid>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Home Cultural Events</h4>
                            <a href="HomeCultureEvents.aspx" class="btn btn-info btn-fill pull-right">
                                <div class="new">Add Cultural Events</div>
                            </a>
                        </div>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <div class="content table-responsive table-full-width">
                            <asp:DataGrid ID="Data_Events" runat="server" OnItemDataBound="Data_Events_ItemDataBound" CssClass="table table-striped table-bordered table-hover dataTable no-footer" UseAccessibleHeader="true">
                                <ItemStyle />
                            </asp:DataGrid>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Our Patner Images</h4>
                            <asp:FileUpload ID="OurPatnerFileUpload" AllowMultiple="True" runat="server" />
                            image size(188px X 135px)

                            <br />
                        </div>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <div class="content table-responsive table-full-width">
                            <asp:DataGrid ID="Data_Parner" runat="server" OnItemDataBound="Data_Patnar_ItemDataBound" CssClass="table table-striped table-bordered table-hover dataTable no-footer" UseAccessibleHeader="true">
                                <ItemStyle />
                            </asp:DataGrid>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">News Letter - Section</h4>
                        </div>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Is Visble Newsletter Section</label>
                                    <asp:CheckBox ID="chkNewsLetter" runat="server" />
                                </div>
                            </div>
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

    <script type="text/javascript">
        $("#homethumbli").addClass("active");
    </script>

</asp:Content>
