<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="Logs.aspx.cs" Inherits="Administrator_Pages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

      <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title header1" style="float: left;">Logs</h4>                            
                           
                        </div>
                        <div style="clear: both; height: 10px;"></div>

                          <div class="row">
                <div class="col-sm-4 form-group">
                    <label>Action</label>&nbsp;
                        <asp:DropDownList ID="ActionDropDownList" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">-- All --</asp:ListItem>
                            <asp:ListItem Value="Insert">Insert</asp:ListItem>
                            <asp:ListItem Value="Update">Update</asp:ListItem>
                            <asp:ListItem Value="Delete">Delete</asp:ListItem>
                        </asp:DropDownList>
                </div>
                <div class="col-sm-4 form-group">
                    <label>User</label>&nbsp;
                        <asp:DropDownList ID="UserDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="col-sm-4 form-group">
                    <label>Section</label>&nbsp;
                        <asp:DropDownList ID="SectionDropDownList" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 form-group">
                    <label>From Date</label>&nbsp;
                        <asp:TextBox ID="FromTextBox" autocomplete="off"  onkeypress="return false;" runat="server" CssClass="form-control datepickettextbox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" SetFocusOnError="true"
                        ControlToValidate="FromTextBox" Display="Dynamic"
                        ErrorMessage="Invalid Date Format (DD/MM/YYYY) (01/01/2012)" Font-Names="Arial"
                        ForeColor="Red"
                        ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                </div>
                <div class="col-sm-4 form-group">
                    <label>To Date</label>&nbsp;
                        <asp:TextBox ID="ToTextBox" autocomplete="off" onkeypress="return false;" runat="server" CssClass="form-control datepickettextbox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" SetFocusOnError="true"
                        ControlToValidate="ToTextBox" Display="Dynamic"
                        ErrorMessage="Invalid Date Format (DD/MM/YYYY) (01/01/2012)" Font-Names="Arial"
                        ForeColor="Red"
                        ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
                </div>
                <div class="col-sm-4 form-group">
                    <label>&nbsp;</label>&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-info btn-fill" OnClick="Button1_Click" />
                </div>
            </div>


                        
                        <div class="content table-responsive table-full-width">
                            
                     <asp:DataGrid ID="DataGrid1" runat="server" OnItemDataBound="DataGrid1_ItemDataBound" CssClass="table table-striped table-bordered table-hover dataTable no-footer" UseAccessibleHeader="true">
                    <ItemStyle />
                </asp:DataGrid>

                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill" OnClick="Button2_Click" Text="More Records" />
                        </div>
                               
                    </div>
                </div>
            </div>
        </div>
    </div>
  <script type="text/javascript">
            $("#userlogsli").addClass("active");
        </script>
   
</asp:Content>

