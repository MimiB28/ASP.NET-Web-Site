using Microsoft.AspNet.Identity;
using System;
using System.Web;
using System.Web.UI.WebControls;
using WebSite1;


public partial class LogIn : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        // get controls
        TextBox usernameTextBox = (TextBox)loginForm.FindControl("UserName");
        // set focus on the username text box when the page loads
        usernameTextBox.Focus();
        // set the page title
        this.Title = FPconfiguration.SiteName + ": Login";

        
        RegisterHyperLink.NavigateUrl = "Register";
        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }




    protected void LogInClick(object sender, EventArgs e)
    {
        if (IsValid)
        {
            // Validate the user password
            var manager = new UserManager();
            ApplicationUser user = manager.Find(UserName.Text, Password.Text);
            if (user != null)
            {
                IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                FailureText.Text = "Invalid username or password.";
                ErrorMessage.Visible = true;
            }
        }
    }
}