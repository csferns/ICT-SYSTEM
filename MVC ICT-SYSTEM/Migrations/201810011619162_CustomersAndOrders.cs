namespace MVC_ICT_SYSTEM.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CustomersAndOrders : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Customers",
                c => new
                    {
                        CustomerID = c.Int(nullable: false, identity: true),
                        CustomerCompany = c.String(),
                    })
                .PrimaryKey(t => t.CustomerID);

            CreateTable(
                "dbo.Orders",
                c => new
                {
                    OrderID = c.Int(nullable: false, identity: true),
                    OrderDate = c.String(),
                    OrderTotal = c.Decimal(nullable: false, precision: 18, scale: 2),
                })
                .PrimaryKey(t => t.OrderID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Products");
            DropTable("dbo.Orders");
            DropTable("dbo.Customers");
        }
    }
}
