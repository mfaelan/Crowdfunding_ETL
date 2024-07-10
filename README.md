# Project 2
# Group 3
# Meredith Faelan & Shannon Hoffman
# README file

# Files included
    CampaignSQL.png
    crowdfunding_db.sql
    ETL_Mini_Project_MFaelen_SHoffman.ipynb
    Resources/campaign.csv
    Resources/category.csv
    Resources/contacts.csv
    Resources/subcategory.csv
    Resources/contacts.xlsx
    Resources/crowdfunding.xlsx

# Resources
    Class notes
    ChatGPT/Xpert Learning Assistant
    Jordan Tompkins/Gregory Oladipo/Tom Bogue


# Class Session 1
    Created Repo
    Created Master Jupyter Notebook
    Created Working Jupyter Notebooks

# Class Session 2
    Worked on creating the four DataFrames
    Initiated the ERD and schema

# Class Session 3
    Finalized schema and created database
    Finalized README
    Submitted Project

### Step 1: 
1. Open PGAdmin and create a database called `crowdfunding_db`
2. click "Save".


### Step 2: Create the Database Schema
1. Download or locate the `crowdfunding_db.sql` file from the project repository.
2. In PGAdmin, connect to the `crowdfunding_db` database.
3. Click on the "Query Tool" button at the top.
4. Open the `crowdfunding_db.sql` file and copy its contents.
5. Paste the contents into the query editor in PGAdmin.
6. Click the "Execute" (play) button to run the script and create the tables.

### Step 3: Import CSV Files into the Database
1. Access the CSV files (`category.csv`, `subcategory.csv`, `campaign.csv`, `contacts.csv`).
2. In PGAdmin, go to "Schemas" > "public" > "Tables" in the left sidebar.
3. For each table (category, subcategory, campaign, contacts):
   - Right-click on the table name and select "Import/Export Data...".
   - Select the "Import" option.
   - In the "Filename" field, choose the corresponding CSV file.
   - Ensure "Header" is checked and the delimiter is set to a comma.
   - Click "OK" to import the data.

### Step 5: Verify the Data
1. In PGAdmin, open the "Query Tool" again.
2. Run the following queries to check that the data has been imported correctly:

```sql
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
SELECT * FROM contacts;