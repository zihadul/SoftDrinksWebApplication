using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftDrinksWebApplication.Model
{
    public class Order
    {
        public int Id { set; get; }
        public string Client { set; get; }
        public string Product { set; get; }
        public int Amount { set; get; }
        public decimal Price { set; get; }
        public DateTime Date { set; get; }
        public bool OrderShipped { set; get; }

    }
}