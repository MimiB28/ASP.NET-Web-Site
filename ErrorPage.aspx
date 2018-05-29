<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oops!</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:HyperLink ID="HeaderLink" ImageUrl=""
                NavigateUrl="~/" ToolTip="" Text=""
                runat="server" />--%>
            <p>Your request generated an internal error!</p>
            <p>
                We apologize for the inconvenience. The error has been reported and will
                be fixed as soon as possible. Thank you!
            </p>
        </div>
    </form>
</body>
</html>
