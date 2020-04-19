<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true"
    CodeFile="PagesNew.aspx.cs" Inherits="cms_PagesNew" %>

<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager" runat="server" />
    <style>
        .panel-title {
            text-decoration: underline;
        }

        .sectioncontainer {
            border: 1px solid #E3E3E3;
            width: 97%;
            margin: 0px auto;
            border-radius: 5px;
            margin-bottom: 16px;
        }
    </style>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Pages</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>
                                            Title</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field"
                                            ControlToValidate="TitleTextBox" Display="Dynamic" ForeColor="Red" Enabled="true"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="TitleTextBox" runat="server" CssClass="form-control" ValidationGroup="Publish"></asp:TextBox>
                                    </div>
                                </div>
                                
                              
                            </div>
                        </div>
                      
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>
                                                        English</label>
                                                    <ce:editor id="EWDescriptionEditor" editorwysiwygmodecss="../css/style11.css" runat="server"
                                                        autoconfigure="Simple" width="100%" height="100px" usephysicalformattingtags="true">
                                                    </ce:editor>
                                                </div>
                                            </div>
                                            
                                        </div>
                        
 <div style="clear: both; height: 20px;"></div>
                    <div class="card card1">
                        <div class="header header3">
                            <h4 class="title title4">Publish</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">

                                <div class="col-md-12" style="margin-top: 16px; margin-bottom: 16px;">
                                  
                                    <a href="javascript:history.go(-1)" class="btn-primary" style="margin-left: 20px;">Back</a>
                                   
                                    <asp:Button ID="btnPublish" runat="server" Text="Publish" class="btn-primary" OnClick="btnSave_Click" Style="margin-left: 20px;" />

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
    </div>


    <script type="text/javascript">
        $("#pagesli").addClass("active");
    </script>

</asp:Content>
