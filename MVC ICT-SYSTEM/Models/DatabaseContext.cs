using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace MVC_ICT_SYSTEM.Models
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext()
        : base("Data Source=ict-system.curacxyd9hqa.eu-west-2.rds.amazonaws.com;Initial Catalog=maindb;User=sa;Password=password;MultipleActiveResultSets=True")
        {
            Database.Log = s => Debug.WriteLine(s);
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Order> Orders { get; set; }
    }
}