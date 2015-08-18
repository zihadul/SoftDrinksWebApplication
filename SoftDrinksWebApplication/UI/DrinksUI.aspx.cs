using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftDrinksWebApplication.DAL;
using SoftDrinksWebApplication.Model;

namespace SoftDrinksWebApplication.UI
{
    public partial class DrinksUI : System.Web.UI.Page
    {
        DrinksGateway aDrinksGateway = new DrinksGateway();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPageAllDrinks();
        }
        private void LoadPageAllDrinks() { 
        
            List<Drinks> aDrinksList=aDrinksGateway.GetAllDrinks();
            StringBuilder sb = new StringBuilder();
            foreach (Drinks drinks in aDrinksList) {
              
                 sb.AppendLine("<table class='drinkTable'><tr><th rowspan='6' width='150'><img src='" + drinks.Image + "' runat='server' /></th> <th>Name:</th><td>" + drinks.Name + "</td></tr><tr><th>Type:</th><td>" + drinks.Type + "</td></tr><tr><th>Price:</th><td>" + drinks.Price + " Tk</td></tr><tr><th>Net Weight:</th><td>" + drinks.Quantity + "</td></tr><tr><th>Origine:</th><td>" + drinks.Origin + "</td></tr><tr><th></th><td>" + drinks.Review + "</td></tr></table>");
                 outputLabel.Text =sb.ToString();
            }
        }

        protected void drinksTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string type = drinksTypeDropDownList.SelectedValue;
            List<Drinks> aDrinksList = aDrinksGateway.GetAllDrinksType(type);
            StringBuilder sb = new StringBuilder();
            foreach (Drinks drinks in aDrinksList)
            {
                sb.AppendLine("<table class='drinkTable'><tr><th rowspan='6' width='150'><img src='" + drinks.Image + "' runat='server' /></th> <th>Name:</th><td>" + drinks.Name + "</td></tr><tr><th>Type:</th><td>" + drinks.Type + "</td></tr><tr><th>Price:</th><td>" + drinks.Price + "</td></tr><tr><th>Net Weight:</th><td>" + drinks.Quantity + "</td></tr><tr><th>Origine:</th><td>" + drinks.Origin + "</td></tr><tr><th></th><td>" + drinks.Review + "</td></tr></table>");
                outputLabel.Text = sb.ToString();
            }
        }
    }
}