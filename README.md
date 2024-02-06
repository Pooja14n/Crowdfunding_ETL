# Crowdfunding_ETL

For the ETL mini project, we will practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, we will create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, we will upload the CSV file data into a Postgres database.

# Requirements

The requirements for this mini project are divided into the following subsections:
1. Create the Category and Subcategory DataFrames
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database

# 1. Create the Category and Subcategory DataFrames
1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
  a. A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
  b. A "category" column that contains only the category titles
  c. The following image shows this category DataFrame:

2. Export the category DataFrame as category.csv and save it to GitHub repository.
3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
  a. A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
  b. A "subcategory" column that contains only the subcategory titles
  c. The following image shows this subcategory DataFrame:

4. Export the subcategory DataFrame as subcategory.csv and save it to GitHub repository.
