DROP TABLE if EXISTS campaigns;
DROP TABLE if EXISTS categories;
DROP TABLE if EXISTS subcategories;
DROP TABLE if EXISTS contacts;
	
CREATE TABLE categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(25) NOT NULL
);

CREATE TABLE subcategories (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(25) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE campaigns (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(100),
    description TEXT,
    goal FLOAT NOT NULL,
    pledged FLOAT,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM campaigns
SELECT * FROM contacts
SELECT * FROM subcategories
SELECT * FROM categories
