using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_ICT_SYSTEM.Models
{
    public class Order
    {
        public int OrderID { get; set; }
        public string OrderDate { get; set; }
        public decimal OrderTotal { get; set; }
    }
}