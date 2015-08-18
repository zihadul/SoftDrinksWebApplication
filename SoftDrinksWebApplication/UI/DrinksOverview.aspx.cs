using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoftDrinksWebApplication.UI
{
    public partial class DrinksOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void addNewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDrinks.aspx");
        }

     
       


       
    }
}