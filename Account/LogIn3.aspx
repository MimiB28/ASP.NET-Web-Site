<%@ Page Title="LOGIN Page" Language="C#" AutoEventWireup="true" CodeFile="LogIn3.aspx.cs" Inherits="LogIn" MasterPageFile="~/FPmasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <!-- Login Form -->
    <div class="login-block">
        <section id="loginForm" runat="server">
            <div class="login-block" style="padding-left: 50px;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 login-sec">
                            <h2 class="text-center">Login Now</h2>
                            <div class="login-form" runat="server">
                                <hr />
                                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                    <p class="text-danger">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </p>
                                </asp:PlaceHolder>
                                <div class="form-group">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="text-uppercase">User Name:</asp:Label>
                                    <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required."
                                        ToolTip="User Name is required." ValidationGroup="loginControl">*</asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="text-uppercase">Password:</asp:Label>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required."
                                        ToolTip="Password is required." ValidationGroup="loginControl">*</asp:RequiredFieldValidator>
                                </div>
                                <div class="form-check">
                                    <div class="col-sm-7">
                                        <asp:Label runat="server" class="form-check-label">
                                            <asp:CheckBox runat="server" type="checkbox" class="form-check-input" ID="RememberMe" />
                                            <small>Remember Me</small>
                                        </asp:Label>
                                        
                                    </div>
                                    <div class="col-sm-10"></div>
                                    <div class="col-sm-1">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="loginControl" CssClass="btn btn-login pull-right" OnClick="LogInClick" />
                                        <br />
                                    </div>
                                    <br />
                                    <p>
                                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" NavigateUrl="Register">Register</asp:HyperLink>
                                        if you don't have a local account.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 banner-sec">
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img src="../img/alstroemeria.jpg" width="1200" height="700" />
                                        <div class="carousel-caption">
                                        </div>
                                    </div>

                                    <div class="item">
                                        <img src="../img/field-flowers-bouquet.jpg" width="1200" height="700" />
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="../img/flower.jpg" width="1200" height="700" />
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

