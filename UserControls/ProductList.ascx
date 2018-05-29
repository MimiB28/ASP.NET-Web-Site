<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductList.ascx.cs" Inherits="UserControls_ProductList" %>
<%@ Register Src="~/UserControls/Pager.ascx" TagPrefix="uc1" TagName="Pager" %>

<br />
<uc1:Pager runat="server" ID="topPager" Visible="False" />
<br />
<asp:DataList ID="list" runat="server" RepeatColumns="3" ItemStyle-Height="250" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top">
    <ItemTemplate>
        <div class="row">
            <div class="col-sm-10">
                <h3 class="ProductTitle">
                    <a class="title" href="<%# Link.ToProduct(Eval("ProductID").ToString()) %>">
                        <%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>
                    </a>
                </h3>
                <a href="<%# Link.ToProduct(Eval("ProductID").ToString()) %>">
                    <img border="0"
                        src="<%# Link.ToProductImage(Eval("Name").ToString()) %>"
                        alt='<%# HttpUtility.HtmlEncode(Eval("Name").ToString())%>' width="250" />
                    <br />
                </a>
                <br />
                <div style="align-content:center; text-align:justify">
                <%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>
                </div>
                    <br />
                    Price:
            <%# Eval("Price", "{0:c}") %>              
           </div>
        </div>
    </ItemTemplate>
</asp:DataList>
<br />
<br />
<uc1:Pager runat="server" ID="bottomPager" Visible="False" />
