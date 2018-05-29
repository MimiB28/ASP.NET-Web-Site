<%@ Page Title="Product Details Page" Language="C#" MasterPageFile="~/FPmasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<%@ Register Src="~/UserControls/DepartmentsList.ascx" TagPrefix="uc1" TagName="DepartmentsList" %>
<%@ Register Src="~/UserControls/CategoriesList.ascx" TagPrefix="uc1" TagName="CategoriesList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="container" style="height: 800px;">
        <div class="row">
            <div class="col-sm-3" style="margin-top: 50px;">
                <uc1:DepartmentsList runat="server" id="DepartmentsList" />
                <br />
                <uc1:CategoriesList runat="server" id="CategoriesList" />
            </div>
            <div class="col-md" style="text-align: left">
                <p>
                    <asp:Label CssClass="CatalogTitle" ID="titleLabel" runat="server"
                        Text="Label"></asp:Label>
                </p>
                <br />
                <p>
                    <asp:Image ID="productImage" runat="server" />
                </p>
                <br />
                <p style="margin-left: 292px;">
                    <asp:Label ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
                </p>
                <br />
                <p style="margin-left: 292px">
                    <b>Price:</b>
                    <asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server"
                        Text="Label"></asp:Label>
                </p>
            </div>
        </div>
    </div>
</asp:Content>

