### Module 4: Database Administration
#### TASK 4.1
##### PART 1

 - **Select a subject area and describe the data base schema**
   - DB schema contains from 3 tables. DB name: sales
    -DB tables: customers, orders, products. Primary key in all tables is "id". Orders has 2 foreign keys.
    Tab users connected with orders like "id=user_id", tab products connected with orders like "id=product_id"

 - **Create DB and tables**

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/createdbsales.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/create_table_products.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/create_users.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/createtablecustomers.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/alter_table.png)

- **Fill in tables**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/insert_into_customers.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/insert_into_orders.png)

- **Construct and execute SELECT operator with WHERE, GROUP BY and ORDER BY**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/connecttoDBandSELECT*.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/groupby.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/orderby.png)

- **Create a database of new users with different privileges. Connect to the
database**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/create_users.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/grants-priv.png)

##### PART 2

For backup and restore DB I'm going to use "Workbench"
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/workbench.png)

- **Make backup of your database**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/DBexport.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/exported_log.png)

- **Delete the table and/or part of the data in the table**

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/drop_table_orders.png)

- **Restore your database**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/restore-imp%20DB.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/importDBvia_workbench.png)


- **Transfer your local database to RDS AWS**

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/importDBvia_workbench.png)

- **Connect to your database**

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/connect%20to%20rds.png)

- **Execute SELECT operator similar step 6**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/15.png)

- **Create the dump of your database**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/exportRDSbase.png)

- **Create an Amazon DynamoDB table**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/DynDB_table.png)

- **Enter data into an Amazon DynamoDB table**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/added_items_to_DynDB.png)

- **Query an Amazon DynamoDB table using Query and Scan**
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/query_DynDB.png)
![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m4/scan_DynDB.png)


That's it !