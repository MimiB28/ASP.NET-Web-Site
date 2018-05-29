<%@ Page Title="Price List"  Language="C#" AutoEventWireup="true" CodeFile="PriceList.aspx.cs" Inherits="PriceList" MasterPageFile="FPmasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <br />
    <!-- Database -->
        <div class="container">
            <asp:GridView ID="gvProducts" runat="server" CssClass="table table-striped table-bordered table-condensed">
                <%--<Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                    <asp:BoundField DataField="ProductName" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="FlowersType" HeaderText="Type of Flowers" />
                    <asp:BoundField DataField="BouquetContents" HeaderText="Bouquet Contents" SortExpression="bqcnt" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="price" />
                </Columns>--%>
            </asp:GridView>
        </div>
</asp:Content>


