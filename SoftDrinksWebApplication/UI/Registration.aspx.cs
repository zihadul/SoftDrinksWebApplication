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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createButton_Click(object sender, EventArgs e)
        {
            try
            {
                User aUser = new User(userNameTextBox.Text, emailTextBox.Text, passwordTextBox.Text, addressTextBox.Text);
                if (UserGateway.IsUserNameExists(aUser))
                {
                    messageLabel.Text = "User Name already exists!";
                }
                else
                {
                    messageLabel.Text = UserGateway.SaveUser(aUser);
                    userNameTextBox.Text = "";
                    emailTextBox.Text = "";
                    addressTextBox.Text = "";
                }
            }
            catch (Exception)
            {
                messageLabel.Text = "Registration Faild!";
            }
        }
        
    }
}