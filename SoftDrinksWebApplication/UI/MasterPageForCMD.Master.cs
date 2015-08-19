using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoftDrinksWebApplication.UI
{
    public partial class MasterPageForCMD : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logIn"] != null) {
                if (Session["Type"].ToString() == "Administrator")
                {
                    adminButton.Visible = true;
                }
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
                adminButton.Visible = false;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void signUpLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void adminButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}