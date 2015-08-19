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
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logIn"] != null)
            {
                GenerateControls();
            }
            else {
                Response.Redirect("LogIn.aspx");
            }
            
        }
        DrinksGateway drinksGateway = new DrinksGateway();
        private void GenerateControls() {
            List<Drinks> drinkList = drinksGateway.GetAllDrinks();

            foreach (Drinks aDrinks in drinkList) {
                Panel drinksPanal = new Panel();
                Image image = new Image { ImageUrl = aDrinks.Image, CssClass = "ProductsImage" };
                Literal litaral = new Literal() { Text = "<br/>" };
                Literal literal2 = new Literal() { Text = "<br/>" };
                Label nameLabel = new Label { Text = aDrinks.Name, CssClass = "ProductsName" };
                Label priceLabel=new Label{Text=String.Format("{0:0.00}",aDrinks.Price+" tk <br/>"), CssClass="ProductsPrice"};
                TextBox textBox = new TextBox { ID = ""+aDrinks.Id+"", CssClass = "ProductTextBox", Width = 60, Text = "0" };
                RegularExpressionValidator reexv = new RegularExpressionValidator { ValidationExpression = "^[0-9]*", ControlToValidate = textBox.ID, ErrorMessage = "Please enter a number!" };
                drinksPanal.Controls.Add(image);
                drinksPanal.Controls.Add(litaral);
                drinksPanal.Controls.Add(nameLabel);
                drinksPanal.Controls.Add(literal2);
                drinksPanal.Controls.Add(priceLabel);
                drinksPanal.Controls.Add(textBox);
                drinksPanal.Controls.Add(reexv);

                productPanel.Controls.Add(drinksPanal);
            }
        }

        private List<Order> GetOrders() {
            ContentPlaceHolder cph = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");
            ControlFinder<TextBox> cf = new ControlFinder<TextBox>();
            cf.findChildControlsRecursive(cph);
            var textBoxList = cf.foundsControls;

            List<Order> orderList = new List<Order>();

            foreach (TextBox textBox in textBoxList) {
                if (textBox.Text != "") {
                    int amountOfOrder = Convert.ToInt32(textBox.Text);
                    if (amountOfOrder > 0) {
                        Drinks aDrinks = drinksGateway.GetDrinksById(int.Parse(textBox.ID));
                        Order order = new Order();
                        order.Client = Session["logIn"].ToString();
                        order.Product = aDrinks.Name;
                        order.Amount = amountOfOrder;
                        order.Price = aDrinks.Price;
                        order.Date = DateTime.Now;
                        order.OrderShipped = false;

                        orderList.Add(order);
                    }
                }
                
            }
            return orderList;
        }
        private void GenerateReview() {
            double totalAmount = 0;
            List<Order> orderList = GetOrders();
            Session["Orders"] = orderList;
            StringBuilder sb = new StringBuilder();
            sb.Append("<table>");
            sb.Append("<h3>Plase review your order!<h3>");

            foreach (Order order in orderList) {
                double totalRow =(double) order.Price * order.Amount;
                sb.Append("<tr><td width='50px'>" + order.Amount + "  X </td><td width='200px'>" + order.Product + " ("+order.Price+") </td><td>" + String.Format("{0:0.00}",totalRow) + "</td><td> tk </td></tr>");
                totalAmount=totalAmount+totalRow;
            }
             sb.Append("<tr><td><b>Total:</b></td><td><b>" +totalAmount + " tk </b></td></tr>");
            sb.Append("</table>");

            resultLabel.Text=sb.ToString();
            resultLabel.Visible=true;
            okButton.Visible=true;
            cancelButton.Visible=true;
            }

        protected void orderButton_Click(object sender, EventArgs e)
        {
            GenerateReview();
        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            List<Order> orderList = (List<Order>)Session["Orders"];
            UserGateway.AddOrder(orderList);
            Session["Orders"] = null;
            resultLabel.Text = "Your order has been placed! Thank you for shopping.";
            okButton.Visible = false;
            cancelButton.Visible = false;
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Session["Orders"] = null;
            resultLabel.Visible=false;
            okButton.Visible = false;
            cancelButton.Visible = false;
        }
    }
}