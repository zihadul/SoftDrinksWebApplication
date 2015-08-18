using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SoftDrinksWebApplication.DAL;
using SoftDrinksWebApplication.Model;


namespace SoftDrinksWebApplication.UI
{
    public partial class AddDrinks : System.Web.UI.Page
    {
        DrinksGateway aDrinksGateway = new DrinksGateway();
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectedValue = imageDropDownList.SelectedValue;
            ShowImages();
            imageDropDownList.SelectedValue = selectedValue;
           
        }

        protected void uploadButton_Click(object sender, EventArgs e)
        {
            
            try
            {
                string fileName = Path.GetFileName(imageFileUpload.FileName);
                imageFileUpload.SaveAs(Server.MapPath("~/Images/DrinksImages/")+fileName);
                resultLabel.Text = "Image " + fileName + " Successfuly Uploaded!";
                Page_Load(sender, e);
            }
            catch (Exception) {
                resultLabel.Text = "Upload Faild!";
            }
        }
        private void ShowImages() { 
            string[] images=Directory.GetFiles(Server.MapPath("~/Images/DrinksImages/"));
            ArrayList imageList = new ArrayList();
            foreach (string image in images) { 
            string imageName=image.Substring(image.LastIndexOf(@"\")+1);
            imageList.Add(imageName);
            }
            imageDropDownList.DataSource = imageList;
            imageDropDownList.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            try
            {
                Drinks newDrinks = new Drinks();
                newDrinks.Name = nameTextBox.Text;
                newDrinks.Type = typeTextBox.Text;
                newDrinks.Flavors = flavorTextBox.Text;
                newDrinks.Price = decimal.Parse(priceTextBox.Text);
                newDrinks.Origin = countryTextBox.Text;
                newDrinks.Quantity = weightTextBox.Text;
                newDrinks.Review = reviewTextBox.Text;
                newDrinks.Image = "../Images/DrinksImages/" + imageDropDownList.SelectedValue;
                outPutLabel.Text = aDrinksGateway.SaveDrinks(newDrinks);
                ClearAllTextBox();
                resultLabel.Text = "";
            }
            catch (Exception) {
                outPutLabel.Text = "Save Faild!";
            }
        }
        private void ClearAllTextBox() {
            nameTextBox.Text = "";
            typeTextBox.Text = "";
            flavorTextBox.Text = "";
            priceTextBox.Text = "";
            countryTextBox.Text = "";
            weightTextBox.Text = "";
            reviewTextBox.Text = "";
        }
    }
}