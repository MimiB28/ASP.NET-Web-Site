<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoriesList.ascx.cs" Inherits="UserControls_CategoriesList" %>
<asp:DataList ID="list" runat="server" Width="200px" CssClass="main.css">
    <HeaderStyle CssClass="list-group-item-heading"></HeaderStyle>
    <HeaderTemplate>
        Choose a Category
    </HeaderTemplate>
    <ItemTemplate>
       <%-- <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Link.ToDepartment(Eval("DepartmentID").ToString())%>'
            Text='<%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>'
            ToolTip='<%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>'
            CssClass='<%# Eval("DepartmentID").ToString() ==
            Request.QueryString["DepartmentID"] ? "DepartmentSelected" :
            "DepartmentUnselected" %>'>[HyperLink1]
        </asp:HyperLink> --%>
        <a href="<%# Link.ToCategory(Request.QueryString["DepartmentID"],Eval("CategoryID").ToString())%>" 
            class="<%# Eval("CategoryID").ToString() ==
            Request.QueryString["CategoryID"] ? "list-group-item active" :
            "list-group-item" %>">
            <%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %></a>
    </ItemTemplate>
</asp:DataList>