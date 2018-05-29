<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DepartmentsList.ascx.cs" Inherits="UserControls_DepartmentsList" %>
<asp:DataList ID="list" runat="server" Width="200px" CssClass="main.css">
    <HeaderStyle CssClass="list-group-item-heading"></HeaderStyle>
    <HeaderTemplate>
        Types:
    </HeaderTemplate>
    <ItemTemplate>
       <%-- <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Link.ToDepartment(Eval("DepartmentID").ToString())%>'
            Text='<%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>'
            ToolTip='<%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>'
            CssClass='<%# Eval("DepartmentID").ToString() ==
            Request.QueryString["DepartmentID"] ? "DepartmentSelected" :
            "DepartmentUnselected" %>'>[HyperLink1]
        </asp:HyperLink> --%>
        <a href="<%# Link.ToDepartment(Eval("DepartmentID").ToString())%>" 
            class="<%# Eval("DepartmentID").ToString() ==
            Request.QueryString["DepartmentID"] ? "list-group-item active" :
            "list-group-item" %>">
            <%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %></a>
    </ItemTemplate>
</asp:DataList>

