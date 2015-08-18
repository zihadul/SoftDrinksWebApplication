using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftDrinksWebApplication.Model
{
    public class Drinks
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Flavors { get; set; }
        public decimal Price { get; set; }
        public string Origin { get; set; }
        public string Quantity { get; set; }
        public string Review { get; set; }
        public string Image { get; set; }
    }
}