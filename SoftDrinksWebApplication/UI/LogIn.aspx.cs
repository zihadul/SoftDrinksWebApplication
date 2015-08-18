using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftDrinksWebApplication.DAL;
using SoftDrinksWebApplication.Model;

namespace SoftDrinksWebApplication.UI
{
    public partial class LogIn : System.Web.UI.Page
    {
        DrinksGateway aDrinksGateway = new DrinksGateway();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null) {
                if (Session["Type"].ToString() == "Administrator")
                {
                    Response.Redirect("DrinksOverview.aspx");
                }
                else {
                    Response.Redirect("Shop.aspx");
                }
            }

        }

        protected void logInButton_Click(object sender, EventArgs e)
        {
            User anUser = new User(userNameTextBox.Text);
            
            string password = passwordTextBox.Text;
            anUser = aDrinksGateway.UserLogIn(anUser);
            if (anUser.Password == password)
            {
                if (anUser.UserType == "Administrator")
                {
                    Session["logIn"] = anUser.Name;
                    Session["Type"] = anUser.UserType;
                    Response.Redirect("DrinksOverview.aspx");
                   
                }
                else {
                    Session["logIn"] = anUser.Name;
                    Session["Type"] = anUser.UserType;
                    Response.Redirect("Shop.aspx");
                    
                }

            }
            else {
                errorLabel.Text = "Wrong User Name and Password!";
            }
        }

        protected void createButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }


    }
}