using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_ICT_SYSTEM.Models
{
    public class Product
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string ProductCatagory { get; set; }
        public decimal ProductPrice { get; set; }
    }
}