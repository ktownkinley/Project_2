-- PROJECT 2 --

-- CATEGORY TABLE --

CREATE TABLE cat (
	cat_id VARCHAR(10) NOT NULL PRIMARY KEY,
	cat VARCHAR(30)
);

-- SUBCATEGORY TABLE --

CREATE TABLE scat (
	scat_id VARCHAR(15) NOT NULL PRIMARY KEY,
	scat VARCHAR(40)
);

-- CONTACTS TABLE --

CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(100)
);

-- CAMPAIGN TABLE --

CREATE TABLE campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR(100),
	description VARCHAR(200),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(20),
	backers_count INT,
	country VARCHAR(5),
	currency VARCHAR(5),
	launched_date DATE,
	end_date DATE,
	cat_id VARCHAR(10) NOT NULL,
	scat_id VARCHAR(15) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (cat_id) REFERENCES cat (cat_id),
	FOREIGN KEY (scat_id) REFERENCES scat (scat_id)
);

-- VERIFY DATA --

SELECT * FROM cat;
SELECT * FROM scat;
SELECT * FROM contacts;
SELECT * FROM campaign;
