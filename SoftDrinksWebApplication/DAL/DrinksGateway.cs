using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using SoftDrinksWebApplication.Model;

namespace SoftDrinksWebApplication.DAL
{
    public class DrinksGateway
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionDb"].ConnectionString;

        public List<Drinks> GetAllDrinks() {
            List<Drinks> aDrinksList = new List<Drinks>();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM DrinksTBL";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                Drinks aDrinks = new Drinks();
                aDrinks.Id = int.Parse(reader["Id"].ToString());
                aDrinks.Type = reader["Type"].ToString();
                aDrinks.Name = reader["Name"].ToString();
                aDrinks.Origin = reader["OriginCountry"].ToString();
                aDrinks.Price =decimal.Parse( reader["Price"].ToString());
                aDrinks.Quantity = reader["Quantity"].ToString();
                aDrinks.Review = reader["Review"].ToString();
                aDrinks.Image = reader["Image"].ToString();

                aDrinksList.Add(aDrinks);
            }
            reader.Close();
            connection.Close();
            return aDrinksList;
        }

        public Drinks GetDrinksById(int id)
        {
            Drinks aDrinks = new Drinks();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM DrinksTBL WHERE Id='"+id+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                aDrinks.Id = int.Parse(reader["Id"].ToString());
                aDrinks.Type = reader["Type"].ToString();
                aDrinks.Name = reader["Name"].ToString();
                aDrinks.Origin = reader["OriginCountry"].ToString();
                aDrinks.Price = decimal.Parse(reader["Price"].ToString());
                aDrinks.Quantity = reader["Quantity"].ToString();
                aDrinks.Review = reader["Review"].ToString();
                aDrinks.Image = reader["Image"].ToString();

              
            }
            reader.Close();
            connection.Close();
            return aDrinks;
        }
       
       
        public List<Drinks> GetAllDrinksType(string type)
        {
            List<Drinks> aDrinksList = new List<Drinks>();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM DrinksTBL WHERE Type='"+type+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                Drinks aDrinks = new Drinks();
                aDrinks.Id = int.Parse(reader["Id"].ToString());
                aDrinks.Type = reader["Type"].ToString();
                aDrinks.Name = reader["Name"].ToString();
                aDrinks.Origin = reader["OriginCountry"].ToString();
                aDrinks.Price = decimal.Parse(reader["Price"].ToString());
                aDrinks.Quantity = reader["Quantity"].ToString();
                aDrinks.Review = reader["Review"].ToString();
                aDrinks.Image = reader["Image"].ToString();

                aDrinksList.Add(aDrinks);
            }
            reader.Close();
            connection.Close();
            return aDrinksList;
        }

        public string SaveDrinks(Drinks aDrinks) {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO DrinksTBL VALUES('" + aDrinks.Name + "','" + aDrinks.Type + "','" + aDrinks.Flavors + "','" + aDrinks.Price + "','" + aDrinks.Origin + "','" + aDrinks.Quantity + "','" + aDrinks.Review + "','" + aDrinks.Image + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            if (rowAffected > 0)
            {
                return "Saved Successful!";
            }
            else {
                return "Save Faild!";
            }
        }
        public User UserLogIn(User aUser) {
            User lUser=new User();
             SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM UserTBL WHERE Name='"+aUser.Name+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                lUser.Name = reader["Name"].ToString();
                lUser.Password = reader["Password"].ToString();
                lUser.UserType = reader["UserType"].ToString();
            }
            reader.Close();
            connection.Close();
            return lUser;
        }
       
    }
}