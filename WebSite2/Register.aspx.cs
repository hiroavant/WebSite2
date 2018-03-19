using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //create a dbcontext that specified
        var identityDbContext = new IdentityDbContext("IdentityConnectionString");
        //create a user store an user manager
        var userStore = new UserStore<IdentityUser>(identityDbContext);
        var manager = new UserManager<IdentityUser>(userStore);
        //create user
        var user = new IdentityUser()
        {
            UserName = tbxregUser.Text,
            Email = tbxregPass.Text
        };

        IdentityResult result = manager.Create(user, tbxregPass.Text);
        if (result.Succeeded)
        {
            //todo: Either aunthenticate the user (log them in) or redirect them to the login page to log in for themselves
            Literal1.Text = "Registration is successful";
        }
        else
        {
            Literal1.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
        }

        /*
         * var identityDbContext = new IdentityDbContext("IdentityConnectionString");
         * var userStore = new UserStore<IdentityUser>(identityDbContext);
         * var manager = new UserManager<IdentityUser>(userStore);
         * var user = new IdentityUser() 
         * { 
         *     Username = tbxregUser.Text;
         *     Email = tbxregEmail.Text;
         * }
         * 
         * IdentityResult result =  manager.Create(user, tbxregPass);
         * 
         * if(result.Succeeded)
         * {
         * 
         * }
         * else
         * {
         *      Literal1.Text = "An error has occurred: " + result.Errors.FirstOrDefaut();
         * }
         */
    }

}