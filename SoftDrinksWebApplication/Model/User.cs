using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftDrinksWebApplication.Model
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Address { get; set; }
        public string UserType { get; set; }

        public User(string name, string email, string password, string address) {

            Name = name;
            Email = email;
            Password = password;
            Address = address;
          
        }
        public User(string name) {
            Name = name;
        }
        public User(){}
    }
}