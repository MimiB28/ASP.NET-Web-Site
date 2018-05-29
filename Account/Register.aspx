<%@ Page Title="Register" Language="C#" MasterPageFile="~/FPmasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="login-block">
        <div class="login-block">
            <div class="container">
                <h2 id="regh2"><%: Title %></h2>
                <p class="text-danger">
                    <asp:Literal runat="server" ID="ErrorMessage" />
                </p>

                <div class="form-horizontal">
                    <h4>Create a new account.</h4>
                    <hr />
                    <div class="row">
                        <div class="col-md-6 login-sec">
                            <div class="login-form" runat="server">
                                <asp:ValidationSummary runat="server" CssClass="text-danger" />
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-4 text-uppercase">User name</asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                            CssClass="text-danger" ErrorMessage="The user name field is required." />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-4 text-uppercase">Password</asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                            CssClass="text-danger" ErrorMessage="The password field is required." />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-4 text-uppercase">Confirm password</asp:Label>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-offset-2 col-md-10">
                                        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-login pull-left" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

