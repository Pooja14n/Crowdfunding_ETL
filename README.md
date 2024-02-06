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
![1](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/711233aa-8e75-4182-b91b-82f5402be546)

2. Export the category DataFrame as `category.csv` and save it to GitHub repository.
3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
  a. A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
  b. A "subcategory" column that contains only the subcategory titles
  c. The following image shows this subcategory DataFrame:
![2](https://github.com/Pooja14n/Crowdfunding_ETL/assets/144713762/3a095f92-218e-42fc-8e7c-fa4d8bdef3f7)

4. Export the subcategory DataFrame as `subcategory.csv` and save it to GitHub repository.

# 2. Create the Campaign DataFrame
1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
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

2. Export the campaign DataFrame as `campaign.csv` and save it to GitHub repository.
