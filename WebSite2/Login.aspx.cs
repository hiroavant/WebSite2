using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Micorsoft.Owin.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void btnLoginSubmit_Click(object sender, EventArgs e)
    {
        var identityDbContext = new IdentityDbContext("IdetityConnectionString");
        var userStore = new UserStore<IdentityUser>(identityDbContext);
        var userManager = new userManager<IdentityUser>(userStore);
        var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
        if(user != null)
        {
            //todo: log user in / instruct user to log in
            LogUserIn(userManager, user);
        }
        else
        {
            litLoginError.Text = "Invalid username or password.";
        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            //note: user is automatically redirected if trying to access another page
        }
    }
}