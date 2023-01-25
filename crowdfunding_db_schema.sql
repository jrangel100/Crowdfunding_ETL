CREATE TABLE category (
    category_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(200)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY,
    subcategory VARCHAR(200)
);


CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(200)
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(200),
    description VARCHAR(200),
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(200),
    currency VARCHAR(20),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(20),
    subcategory_id VARCHAR(20),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);