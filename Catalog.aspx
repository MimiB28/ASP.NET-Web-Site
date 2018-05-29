<%@ Page Title="Flower Paradise: Catalog" Language="C#" MasterPageFile="~/FPmasterPage.master" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

<%@ Register Src="~/UserControls/DepartmentsList.ascx" TagPrefix="uc1" TagName="DepartmentsList" %>
<%@ Register Src="~/UserControls/CategoriesList.ascx" TagPrefix="uc1" TagName="CategoriesList" %>
<%@ Register Src="~/UserControls/ProductList.ascx" TagPrefix="uc1" TagName="ProductList" %>
<%@ Register Src="~/UserControls/UserInfo.ascx" TagPrefix="uc1" TagName="UserInfo" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="container" style="height: 1300px;">
        <div class="row">
            <div class="col-sm-3" style="margin-top:50px;">
                <uc1:UserInfo runat="server" ID="UserInfo" />
                <br />
                <uc1:DepartmentsList runat="server" ID="DepartmentsList" />
                <br />
                <uc1:CategoriesList runat="server" ID="CategoriesList" />
            </div>
            <div class="col-md">
                <h1>
                    <asp:Label ID="catalogTitleLabel" CssClass="CatalogTitle"
                        runat="server" />
                </h1>
                <h2>
                    <asp:Label ID="catalogDescriptionLabel" CssClass="CatalogDescription"
                        runat="server" />
                </h2>
                <uc1:ProductList runat="server" ID="ProductList" />
            </div>
        </div>
    </div>
</asp:Content>

