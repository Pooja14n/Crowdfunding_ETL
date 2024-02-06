# Crowdfunding_ETL

For the ETL mini project, we will practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, we will create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, we will upload the CSV file data into a Postgres database.

# Requirements

The requirements for this mini project are divided into the following subsections:
1. Create the Category and Subcategory DataFrames
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database

# 1. Create the Category and Subcategory DataFrames
1. Extract and transform the `crowdfunding.xlsx` Excel data to create a category DataFrame that has the following columns:
  a. A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
  b. A "category" column that contains only the category titles
  c. The following image shows this category DataFrame:
![1](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/711233aa-8e75-4182-b91b-82f5402be546)

2. Export the category DataFrame as `category.csv` and save it to GitHub repository.
   
3. Extract and transform the `crowdfunding.xlsx` Excel data to create a subcategory DataFrame that has the following columns:
  a. A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
  b. A "subcategory" column that contains only the subcategory titles
  c. The following image shows this subcategory DataFrame:
![2](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/3a095f92-218e-42fc-8e7c-fa4d8bdef3f7)

4. Export the subcategory DataFrame as `subcategory.csv` and save it to GitHub repository.

# 2. Create the Campaign DataFrame
1. Extract and transform the `crowdfunding.xlsx` Excel data to create a campaign DataFrame has the following columns:
  a. The "cf_id" column
  b. The "contact_id" column
  c. The "company_name" column
  d. The "blurb" column, renamed to "description"
  e. The "goal" column, converted to the float data type
  f. The "pledged" column, converted to the float data type
  g. The "outcome" column
  h. The "backers_count" column
  i. The "country" column
  j. The "currency" column
  k. The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
  l. The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
  m. The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
  n. The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
  o. The following image shows this campaign DataFrame:
![3](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/71a7f5ef-fa3c-4bc2-8023-dbd8d0393f2f)

2. Export the campaign DataFrame as `campaign.csv` and save it to GitHub repository.


# 3. Create the Contacts DataFrame
1. Choose one of the following two options for extracting and transforming the data from the `contacts.xlsx` Excel data:
  a. Option 1: Use Python dictionary methods.
  b. Option 2: Use regular expressions.

2. Option 1 is chosen; and, the following steps are to be completed:
  a. Import the `contacts.xlsx` file into a DataFrame.
  b. Iterate through the DataFrame, converting each row to a dictionary.
  c. Iterate through each dictionary, doing the following:
    i. Extract the dictionary values from the keys by using a Python list comprehension.
    ii. Add the values for each row to a new list.
  d. Create a new DataFrame that contains the extracted data.
  e. Split each "name" column value into a first and last name, and place each in a new column.
  f. Clean and export the DataFrame as `contacts.csv` and save it to your GitHub repository.

3. The final DataFrame is as shown in following image:
![4](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/be34a02a-d03d-442c-98e1-1e26e89e7637)


# 4. Create the Crowdfunding Database
1. Inspect the four CSV files, and then sketch an ERD of the tables by using `QuickDBDLinks` to an external site.

2. Use the information from the ERD to create a table schema for each CSV file.
Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
![QuickDBD-crowdfunding_db_ERD](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/064965dd-63fd-428d-b778-32423c93473a)

3. Save the database schema as a Postgres file named `crowdfunding_db_schema.sql`, and save it to GitHub repository.

4. Create a new Postgres database, named `crowdfunding_db`.

5. Using the database schema, create the tables in the correct order to handle the foreign keys.

6. Verify the table creation by running a `SELECT` statement for each table.

7. Import each CSV file into its corresponding SQL table.

8. Verify that each table has the correct data by running a `SELECT` statement for each.
![campaign_query](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/9bfacc27-7e51-43f3-b7f4-f58c7ee48a28)
![subcategory_query](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/b5b5bad3-9052-4e04-948b-7dcc9710aea3)
![contacts_query](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/99b2782c-fae8-4e59-976e-10512a2b4a66)
![category_query](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/3de4c995-7bde-4b34-9e7a-06ca14291a13)

# References
Referred to various class activity exercises, got support from Assistant Instructor, and websites for: Pandas Documentation, Python Documentation, and Stack Overflow.

# Files submitted including this README File
1. Main Folder -> Crowdfunding_ETL
2. Resources Folder (contains the data required for the import as well as the exported CSV Files) -> contacts.xlsx, crowdfunding.xlsx, campaign.csv, contacts.csv, category.csv, subcategory.csv.
3. ETL_Mini_Project_crowdfunding_db_Analysis.ipynb (contains the main code for Analysis)
4. crowdfunding_db_schema.sql (contains `CREATE` query for all the 4 tables)
5. Select_statements.sql (contains `SELECT` query for all the 4 tables created)
6. QuickDBD-crowdfunding_db_ERD.png (contains ERD sketch of the tables using QuickDBD)
7. Screenshots Folder (contains screenshots for the queries run on pgadmin).
