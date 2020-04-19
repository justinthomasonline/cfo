<%@ Page Title="" Language="C#" MasterPageFile="~/AdminCMS/Site.master" AutoEventWireup="true" CodeFile="Newsletter.aspx.cs" Inherits="AdminCMS_Newsletter" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="MemoDataManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header ">
                            <h4 class="title header1" style="float: left;">News Letter</h4>
                            <a href="SendNewsLetter.aspx" class="btn btn-info btn-fill pull-right">
                                <div class="new">Send</div>
                            </a>
                        </div>
                        <br />
                        <div class="header ">
                            <asp:Button ID="btnExportToExcel" runat="server" CssClass="btn btn-info btn-fill pull-right" Text="Export To Excel" OnClick="btnExportToExcel_Click" />
                        </div>
                        <div style="clear: both; height: 10px;"></div>
                        <div class="content table-responsive table-full-width">
                            <asp:DataGrid ID="DataGrid1" runat="server" OnItemDataBound="DataGrid1_ItemDataBound" CssClass="table table-hover table-striped" UseAccessibleHeader="true" BorderWidth="0">
                                <ItemStyle />
                            </asp:DataGrid>
                            <asp:GridView ID="NGrid" runat="server" AutoGenerateColumns="false" GridLines="Both" Style="display: none;">
                                <Columns>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemStyle />
                                        <ItemTemplate>
                                            <%#Eval("FooerEmail") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $("#newsletterli").addClass("active");
    </script>
</asp:Content>

