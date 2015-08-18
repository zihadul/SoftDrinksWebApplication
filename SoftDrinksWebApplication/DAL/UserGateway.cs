using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SoftDrinksWebApplication.Model;

namespace SoftDrinksWebApplication.DAL
{
    public static class UserGateway
    {
       static string connectionString = ConfigurationManager.ConnectionStrings["connectionDb"].ConnectionString;

        public static string SaveUser(User aUser)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO UserTBL VALUES('" + aUser.Name + "','" + aUser.Email + "','" + aUser.Password + "','" + aUser.Address+ "','" + "User" + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            if (rowAffected > 0)
            {
                return "New account has been created!";
            }
            else
            {
                return "Save Faild!";
            }
        }
        public static bool IsUserNameExists(User aUser) {
            bool exists = false;
             SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM UserTBL WHERE Name='"+aUser.Name+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                exists = true;
            }
            reader.Close();
            connection.Close();
            return exists;
        }
    }
}