<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="UsersNew.aspx.cs" Inherits="cms_UsersNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .ErrorLabel {
            display: block;
            max-width: 920px;
            line-height: 25px;
            background-color: #ffd3d6;
            margin-bottom: 10px;
            padding-left: 60px;
            color: red;
            padding-top: 13px;
            padding-bottom: 13px;
        }
    </style>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title titleborder">Users</h4>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Label ID="ErrorLabel" runat="server" Text="" CssClass="ErrorLabel" Visible="false"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Display Name</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="DisplayNameTextBox" Display="Dynamic" ForeColor="Red" Enabled="true"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="DisplayNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>User Name</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="UserNameTextBox" Display="Dynamic" ForeColor="Red" Enabled="true"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="UserNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="PasswordTextBox" Display="Dynamic" ForeColor="Red" Enabled="true"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email ID</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="EmailIDTextBox" Display="Dynamic" ForeColor="Red" Enabled="true"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="EmailIDTextBox" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="EmailIDTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone Number</label>                                        
                                        <asp:TextBox ID="PhoneNoTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>


                          <div class="col-md-12" style="border: 1px solid #ddd; width: 96%; margin-left: 2%; border-radius: 5px; padding: 10px;">
                                    <label>Permission</label>
                                    <div style="clear: both;"></div>
                                    <div class="col-md-6">
                                        <asp:CheckBox ID="MenusCheckBox" runat="server" Text="Menus" /><br />
                                        <asp:CheckBox ID="HomePageCheckBox" runat="server" Text="Home Page" /><br />
                                        <asp:CheckBox ID="EventsCheckBox" runat="server" Text="Culture Events" /><br />
                                        <asp:CheckBox ID="NewsletterCheckBox" runat="server" Text="News Letter" /><br />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:CheckBox ID="PastEventsCheckBox" runat="server" Text="Past Events" /><br />
                                        <asp:CheckBox ID="ContactUsCheckBox" runat="server" Text="Contact Us" /><br />
                                        <asp:CheckBox ID="LogsCheckBox" runat="server" Text="Logs" /><br />
                                        <asp:CheckBox ID="UsersCheckBox" runat="server" Text="Users" /><br />
                                    </div>
                                </div>


                                <div style="clear: both; height: 10px;"></div>


                                <div style="clear: both; height: 10px;"></div>

                                <div class="card card1">
                                    <div class="header header3">
                                        <h4 class="title title4">Publish</h4>
                                    </div>
                                    <div class="box-body">
                                        <div class="row">

                                            <div class="col-md-12" style="margin-top: 16px; margin-bottom: 16px;">
                                                <asp:Button ID="Button1" runat="server" Text="Save" class="btn-primary" OnClick="Button1_Click" />
                                                <a href="javascript:history.go(-1)" class="btn-primary" style="margin-left: 20px;">Back</a>

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
        </div>
    </div>
    <script type="text/javascript">
        $("#usersli").addClass("active");
    </script>


</asp:Content>

