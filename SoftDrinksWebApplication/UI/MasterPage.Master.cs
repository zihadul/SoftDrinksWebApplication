using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoftDrinksWebApplication.UI
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logIn"] != null)
            {
                logInLabel.Text = "Welcome " + Session["logIn"];
                logInLinkButton.Text = "LogOut";
            }
        }

       

        protected void logInLinkButton_Click(object sender, EventArgs e)
        {
            if (logInLinkButton.Text == "LogOut")
            {
                logInLinkButton.Text = "LogIn";
                Session.Clear();
                Response.Redirect("Home.aspx");
            }
            else {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void signUpLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}