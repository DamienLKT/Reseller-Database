# Reseller-Database
MYSQL relational database for EE4791 Project

Database Case Scenario:
We take the role of a Retailer (Staff), where we purchase products from a Supplier and resell them to Customer. The databases will be used to keep track of the Product details that were
bought from the Supplier and sold to the Customer. The databases will also contain the Order_Detail and Payment details. The Product will be sorted in their respective Category.

Supplier: Supplier_ID, Name, Address, Phone, Email

Staff: Staff_ID, First_Name, Last_Name, Phone, Email
Customer: Customer_ID, First_Name, Last_Name, Address, Phone, Email, Staff_ID
Product: Product_ID, Product_Name, Product_Description, Product_Price, Product_Quantity, Supplier_ID, Category_ID
Category: Category_ID, Category_Name, Category_Description
Order_Detail: Product_ID, Order_ID, Quantity
Order: Order_ID, Date_of_Order, Customer_ID, Bill_Number
Payment: Bill_Number, Payment_Type, Bank

Role: Reseller/Retailer
