<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="MenusNew.aspx.cs" Inherits="cms_MenusNew" %>

<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"> 
    <script>
        $("document").ready(function () {

            $("#<%=ModuleTypeDropDownList.ClientID %>").change(function () {
               
                if ($(this).val() == "Gallery.aspx") {
                    $("#lblLabel").css("display", "block");
                }
                else
                {
                    $("#lblLabel").css("display", "none");
                }
            });

              $("#<%=MenuTypeDropDown.ClientID %>").change(function () {
               
                  if ($(this).val() == "BottompMenu") {
                      $("#BottomIcon").css("display", "block");
                }
                else
                {
                      $("#BottomIcon").css("display", "none");
                }
            });
        });
    </script>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder" >Menu</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12"> 
                                      <asp:Label ID="LinkLabel" runat="server" Text=""></asp:Label>
                    <asp:Label ID="LevelLabel" runat="server" Text="0" Visible="false"></asp:Label>
                    <asp:Label ID="ListLabel" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                     <div class="form-group">
                                        <label>Parent Menu</label>
                                        <asp:DropDownList ID="ParentMenuDropDownList" runat="server" CssClass="form-control select2" AutoPostBack="true" OnSelectedIndexChanged="ParentMenuDropDownList_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>
                                   <div class="col-md-6">
                                     <div class="form-group">
                                        <label>Child Menu</label>
                                        <asp:DropDownList ID="ChildsDropDownList" runat="server" CssClass="form-control select2" AutoPostBack="true" OnSelectedIndexChanged="ChildsDropDownList_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Menu Type</label>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" InitialValue="0" ControlToValidate="MenuTypeDropDown" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                       <asp:DropDownList ID="MenuTypeDropDown" runat="server" CssClass="form-control" >                                           
                                           <asp:ListItem Value="TopMenu" Text="Top Menu"></asp:ListItem>
                                            <asp:ListItem Value="InnerMenu" Text="Inner Menu"></asp:ListItem>    
                                           <asp:ListItem Value="HeaderMenu" Text="Header Menu"></asp:ListItem>                                           
                                       </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Title</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="TitleTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="TitleTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                     <div class="form-group">
                                        <label>Type</label>
                                        <asp:DropDownList ID="TypeDropDownList" runat="server" CssClass="MenuTypeDropDownList form-control">
                                            <asp:ListItem Value="WebPage">Create Web Page</asp:ListItem>
                                            <asp:ListItem Value="Module">Module</asp:ListItem>                                            
                                            <asp:ListItem Value="Internal">Internal Link</asp:ListItem>
                                            <asp:ListItem Value="External">External Link</asp:ListItem>
                                            <asp:ListItem Value="None">None</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    
                                   
                                   <div class="form-group">
                                        <label>Alias Name</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="AliasTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <div style="width: 100%; float: left;">
                                            <asp:Label ID="lblParentAlias" runat="server" Style="float: left; color: rgb(142, 144, 144);margin-top:10px;"></asp:Label><asp:TextBox ID="AliasTextBox" runat="server" Style="float: left; width: 50%;" CssClass="form-control"></asp:TextBox>
                                        </div>
                                         <div class="dimensions"><b>Please use only lower case letters with hyphens. Don't give space between words.</b></div>
                                     </div>
                                </div>
                                <div class="col-md-6">
                                     
                                </div>
                                  <div class="col-md-6">
                                    <div class="form-group">
                                        <div id="ModulePage">
                                            <div style="width: 100%; float: left;">
                                                <div class="ModuleTypeDropDownList" style="float: left;width:40%;">
                                                    <label>Module Type</label>

                                                    <asp:DropDownList ID="ModuleTypeDropDownList" runat="server"   CssClass="form-control">
                                                            <asp:ListItem Text="---Select---" Value="0"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div id="lblLabel"  style="width:20%;float: left; margin-left: 2%;display:none;">
                                                    <label >Link ID</label>
                                                    <asp:TextBox ID="ModuleLinkID" runat="server" CssClass="form-control"  />
                                                </div>
                                            </div>
                                        </div>
                                        <label id="external">
                                            <asp:CheckBox ID="externalCheckBox" runat="server" Text="Open External Link in Same Window" />
                                        </label>
                                    </div>
                                </div>
                               
                                <div class="col-md-3" id="TopMenu" runat="server">
                                    <div class="form-group">
                                        <label> Sort Order</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="SortTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Numbers" Display="Dynamic" ControlToValidate="SortTextBox" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="SortTextBox" runat="server" Width="145px" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                              
                            
                            
                            </div>
                      <%-- <div class="row">
                           <div class="col-md-6">
                                 <label>Upload Banner Image</label>
                                        <asp:FileUpload ID="SFileUpload" runat="server" />                                          
                           </div>
                           <div class="col-md-6" id="BottomIcon" style="display:none;">
                                 <label>Upload Banner Image</label>
                                        <asp:FileUpload ID="IFileUpload" runat="server" />       
                                 <div class="dimensions">recommended dimensions <b>66px(width)</b> x <b>53px(height)</b></div>
                           </div>
                              </div>--%>
                          
                        </div>
                        <div style="clear:both;height:10px;"></div>
                        <div class="card card1" >
                            <div class="header header3" >
                                <h4 class="title title4">Publish</h4>
                            </div>
                            <div class="box-body">
                                <div class="row">

                                    <div class="col-md-12" style="margin-top: 16px; margin-bottom: 16px;text-align:center;">
                                      
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
        $("#menuli").addClass("active");
    </script>

 
</asp:Content>

