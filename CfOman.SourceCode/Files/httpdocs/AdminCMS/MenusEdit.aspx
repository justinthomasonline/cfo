<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="MenusEdit.aspx.cs" Inherits="cms_MenusEdit" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<%@ Register TagPrefix="ce" Namespace="CuteEditor" Assembly="CuteEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $("document").ready(function () {

          
             <%-- $("#<%=MenuTypeDropDown.ClientID %>").change(function () {
               
                  if ($(this).val() == "BottompMenu") {
                      $("#<%=BottomIcon.ClientID %>").css("display", "block");
                }
                else
                {
                       $("#<%=BottomIcon.ClientID %>").css("display", "none");
                }
            });--%>
        });
    </script>
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
                            <h4 class="title titleborder">Menu - Edit</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:Label ID="LinkLabel" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="LevelLabel" runat="server" Text="0" Visible="false"></asp:Label>
                                        <asp:Label ID="ListLabel" runat="server" Text="" Visible="false"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Parent Menu</label>
                                        <asp:DropDownList ID="ParentMenuDropDownList" runat="server" CssClass="form-control select2" AutoPostBack="true" OnSelectedIndexChanged="ParentMenuDropDownList_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-6 hide">
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
                                        <asp:DropDownList ID="MenuTypeDropDown" runat="server" CssClass="form-control">                                            
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
                                            <asp:Label ID="lblParentAlias" runat="server" Style="float: left; color: rgb(142, 144, 144); margin-top: 10px;"></asp:Label><asp:TextBox ID="AliasTextBox" runat="server" Style="float: left; width: 50%;" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="dimensions"><b>Please use only lower case letters with hyphens. Don't give space between words.</b></div>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div id="ModulePage">
                                            <div style="width: 100%; float: left;">
                                                <div class="ModuleTypeDropDownList" style="float: left; width: 40%;">
                                                    <label>Module Type</label>

                                                    <asp:TextBox ID="ModuleTypeDropDownList" runat="server" CssClass="form-control"></asp:TextBox>

                                                  <%--  <asp:DropDownList ID="ModuleTypeDropDownList"   runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="---Select---" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="News" Value="News.aspx"></asp:ListItem>
                                                        <asp:ListItem Text="Events" Value="Events.aspx"></asp:ListItem>                                                       
                                                        <asp:ListItem Text="Contactus" Value="contact-us.aspx"></asp:ListItem>                                                                                                                   
                                                        <asp:ListItem Text="About1" Value="About.aspx"></asp:ListItem>
                                                        <asp:ListItem Text="About2" Value="About.aspx#vision-and-mission"></asp:ListItem>
                                                    </asp:DropDownList>--%>
                                                </div>
                                                <div id="lblLabel" style="width: 20%; float: left; margin-left: 2%; display: none;">
                                                    <label>Link ID</label>
                                                    <asp:TextBox ID="ModuleLinkID" runat="server" CssClass="form-control" />
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
                                        <label>Sort Order</label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Numbers" Display="Dynamic" ControlToValidate="SortTextBox" ValidationExpression="[0-9]+" ForeColor="Red"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="SortTextBox" runat="server" Width="145px" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>



                            </div>
                              <%--<div class="row ">
                           <div class="col-md-6">
                                 <label>Upload Banner Image</label>
                                        <asp:FileUpload ID="SFileUpload" runat="server" />     
                                 <br />
                                    <img id="SDescpImage" runat="server" src="" style="max-width:400px;" />                                     
                           </div>
                                   <div class="col-md-6" id="BottomIcon" style="display:none;" runat="server">
                                 <label>Upload Banner Image</label>
                                        <asp:FileUpload ID="IFileUpload" runat="server" />       
                                       <br /> <div class="dimensions">recommended dimensions <b>66px(width)</b> x <b>53px(height)</b></div>
                                       <div style="background-color:#75d1f3;width:76px;height:60px;text-align:center;">
                                    <img id="Img2" runat="server" src=""  /></div>
                           </div>
                              </div>--%>


                             <%-- <div class="row ">
                           <div class="col-md-6">
                                 <label>Menu icon</label>
                               <asp:TextBox ID="txtmenuicon" CssClass="form-control" runat="server"></asp:TextBox>
                                 
                           </div>
                                    
                              </div>--%>



                        </div>

                        <div style="clear: both; height: 10px;"></div>

                        <%string sql = "Select *,CONVERT(VARCHAR(10), Mo_Date, 103) as Date_New,(SElect CONVERT(VARCHAR(10), Mo_Date, 103) from Menus where id='" + Request.QueryString["id"] + "' ) as Pub_Date, (SElect name from CMSUsers where CMSUsers.id=Menus.Added_By) as displayname From Menus Where id='" + Request.QueryString["id"] + "'";

                            DataSet ds = MemoDataAccess.GetData(sql, "Menus");

                            DataRow row = ds.Tables["Menus"].Rows[0]; %>
                        <div class="card card1">
                            <div class="header header3">
                                <div style="width: 40%; float: left;">
                                    <h4 class="title title4">Publish</h4>

                                </div>
                                <div style="width: 60%; float: left;">
                                    <div class="date">Last Modified Date:<span style="font-weight: bold;"> <%=row["Date_New"].ToString() %></span></div>
                                    <div class="date" style="margin-right: 10px;">Last Modified By:<span style="font-weight: bold;"> <%=row["displayname"].ToString() %></span></div>
                                </div>
                            </div>
                            <div class="box-body">
                                <div class="row">
                                    <div class="menupath">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div style="float: left; margin-top: 20px; color: rgb(142, 144, 144); font-weight: bold; margin-left: -12px;">Menu Path: </div>
                                                <ul class="breadcram">
                                                    <li>Home</li>
                                                    <%if (row["Parent_ID"].ToString() == "0")
                                                        { %>
                                                    <li style="padding-left: 7px;" class="last"><%=row["Title"].ToString() %></li>
                                                    <%}
                                                        else
                                                        {
                                                            sql = "Select Title from Menus where id='" + row["Parent_ID"].ToString() + "'";
                                                            ds = MemoDataAccess.GetData(sql, "Menus");
                                                            DataRow row1 = ds.Tables["Menus"].Rows[0];%>
                                                    <li style="padding-left: 7px;"><%=row1["Title"].ToString() %></li>
                                                    <li style="padding-left: 7px;" class="last"><%=row["Title"].ToString() %></li>
                                                    <%}%>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-md-6" style="text-align: right; margin-top: 16px;">

                                            <a href="javascript:history.go(-1)" class="btn-primary" style="margin-left: 20px;">Back</a>
                                        </div>
                                        <div style="clear: both; height: 10px;"></div>
                                    </div>
                                    <div style="clear: both; height: 14px;"></div>
                                    <div class="col-md-12">
                                        <div class="form-group" style="text-align: center;">

                                            <asp:Button ID="btnPublish" runat="server" Text="Publish" class="btn-primary" OnClick="btnPublish_Click" Style="margin-left: 20px;" />


                                            <label style="margin-left: 20px;">
                                                <asp:CheckBox ID="ActiveCheckBox" runat="server" Text="Active" CssClass="minimal" />
                                            </label>
                                        </div>
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

