-- ### Challenge #1: Customer View (Minimum Requirement)

-- 1. Create a MySQL Database called `bamazon`.

-- 2. Then create a Table inside of that database called `products`.

-- 3. The products table should have each of the following columns:

--    * item_id (unique id for each product)

--    * product_name (Name of product)

--    * department_name

--    * price (cost to customer)

--    * stock_quantity (how much of the product is available in stores)

-- 4. Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table).

-- 5. Then create a Node application called `bamazonCustomer.js`. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

-- 6. The app should then prompt users with two messages.

--    * The first should ask them the ID of the product they would like to buy.
--    * The second message should ask how many units of the product they would like to buy.

-- 7. Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.

--    * If not, the app should log a phrase like `Insufficient quantity!`, and then prevent the order from going through.

-- 8. However, if your store _does_ have enough of the product, you should fulfill the customer's order.
--    * This means updating the SQL database to reflect the remaining quantity.
--    * Once the update goes through, show the customer the total cost of their purchase.

-- - - -

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  item_id int(6) NOT NULL AUTO_INCREMENT,
  product_name varchar(30) NOT NULL,
  department_name varchar(30) NOT NULL,
  price decimal(8,2) DEFAULT NULL,
  stock_quantity int(6) DEFAULT NULL,
  PRIMARY KEY (item_id)
)

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES
	(1,'ipod','electronics',250.50,100),
	(2,'headphones','electronics',50.99,100),
	(3,'tshirt','clothing',10.99,30),
	(4,'nike free run','shoes',89.99,44),
	(5,'necklace','accessories',24.99,50),
	(6,'dog food','Dog',4.99,10),
	(7,'coconut oil','food',9.99,15),
	(8,'macbook charger','accessories',80.99,30),
	(9,'chair','home',15.99,50),
	(10,'hdtv','electronics',399.99,12);


-- ### Challenge #3: Supervisor View (Final Level)

-- 1. Create a new MySQL table called `departments`. Your table should include the following columns:

--    * department_id

--    * department_name

--    * over_head_costs (A dummy number you set for each department)

-- 2. Modify the products table so that there's a product_sales column, and modify your `bamazonCustomer.js` app so that when a customer purchases anything from the store, the price of the product multiplied by the quantity purchased is added to the product's product_sales column.

--    * Make sure your app still updates the inventory listed in the `products` column.

-- 3. Create another Node app called `bamazonSupervisor.js`. Running this application will list a set of menu options:

--    * View Product Sales by Department
   
--    * Create New Department

-- 4. When a supervisor selects `View Product Sales by Department`, the app should display a summarized table in their terminal/bash window. Use the table below as a guide.

-- | department_id | department_name | over_head_costs | product_sales | total_profit |
-- | ------------- | --------------- | --------------- | ------------- | ------------ |
-- | 01            | Electronics     | 10000           | 20000         | 10000        |
-- | 02            | Clothing        | 60000           | 100000        | 40000        |

-- 5. The `total_profit` column should be calculated on the fly using the difference between `over_head_costs` and `product_sales`. `total_profit` should not be stored in any database. You should use a custom alias.

-- 6. If you can't get the table to display properly after a few hours, then feel free to go back and just add `total_profit` to the `departments` table.

--    * Hint: You may need to look into aliases in MySQL.

--    * Hint: You may need to look into GROUP BYs.

--    * Hint: You may need to look into JOINS.

--    * **HINT**: There may be an NPM package that can log the table to the console. What's is it? Good question :)