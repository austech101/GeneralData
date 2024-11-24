-- SHOW databases;
-- CREATE database capstone;

USE capstone;
-- Create Brand table
CREATE TABLE Brand (
	Brand_ID varchar(10) PRIMARY KEY, 
    Brand_Name varchar(100) NOT NULL, 
    Country varchar (50) NOT NULL,
    Year INT NOT NULL
);

-- Create Sustainability table
CREATE TABLE Sustainability (
ID INT AUTO_INCREMENT PRIMARY KEY, 
BRAND_ID VARCHAR (10) NOT NULL, 
Sustainability_Rating CHAR (1), 
Carbon_Footprint_MT FLOAT,
Water_Usage_liters FLOAT,
Waste_Production_KG FLOAT,
FOREIGN KEY (Brand_ID) REFERENCES Brand(Brand_ID)
);

-- Create Product table
CREATE TABLE Product (
ID INT AUTO_INCREMENT PRIMARY KEY,
Brand_ID VARCHAR(10) NOT NULL,
Material_Type VARCHAR(50),
Eco_Friendly_Manufacturing VARCHAR(3),
Recycling_Programs VARCHAR(3),
Product_Lines INT,
Average_Price_USD FLOAT,
FOREIGN KEY (Brand_ID) REFERENCES Brand(Brand_ID)
);

-- Create Market table
CREATE TABLE Market (
ID INT AUTO_INCREMENT PRIMARY KEY,
Brand_ID VARCHAR(10) NOT NULL,
Market_Trend VARCHAR(50),
Certifications VARCHAR(100),
FOREIGN KEY (Brand_ID) REFERENCES Brand (Brand_ID) 
); 

-- The four normalized tables are as follows:
-- Brand: Stores basic information about each brand
-- Sustainability: Captures environmental metrics, linked to brands
-- Product: Contains product-specific details, linked to brands
-- Market: Includes trends and certifications, linked to brands    


-- Brand Table
INSERT INTO Brand (Brand_ID, Brand_Name, Country, Year) VALUES ('BRAND-0001', 'Brand_1', 'Australia', 2018);
INSERT INTO Brand (Brand_ID, Brand_Name, Country, Year) VALUES ('BRAND-0002', 'Brand_2', 'Japan', 2015);
INSERT INTO Brand (Brand_ID, Brand_Name, Country, Year) VALUES ('BRAND-0003', 'Brand_3', 'USA', 2024);

-- Sustainability Table
INSERT INTO Sustainability (Brand_ID, Sustainability_Rating, Carbon_Footprint_MT, Water_Usage_Liters, Waste_Production_KG) VALUES ('BRAND-0001', 'D', 1.75, 4511152.79, 97844.11);
INSERT INTO Sustainability (Brand_ID, Sustainability_Rating, Carbon_Footprint_MT, Water_Usage_Liters, Waste_Production_KG) VALUES ('BRAND-0002', 'D', 124.39, 1951566.31, 37267.75);
INSERT INTO Sustainability (Brand_ID, Sustainability_Rating, Carbon_Footprint_MT, Water_Usage_Liters, Waste_Production_KG) VALUES ('BRAND-0003', 'A', 336.66, 467454.52, 38385.92);
 
-- Product Table
INSERT INTO Product (Brand_ID, Material_Type, Eco_Friendly_Manufacturing, Recycling_Programs, Product_Lines, Average_Price_USD) VALUES ('BRAND-0001', 'Tencel', 'No', 'No', 2, 38.33);
INSERT INTO Product (Brand_ID, Material_Type, Eco_Friendly_Manufacturing, Recycling_Programs, Product_Lines, Average_Price_USD) VALUES ('BRAND-0002', 'Vegan Leather', 'Yes', 'No', 15, 250.07);
INSERT INTO Product (Brand_ID, Material_Type, Eco_Friendly_Manufacturing, Recycling_Programs, Product_Lines, Average_Price_USD) VALUES ('BRAND-0003', 'Vegan Leather', 'No', 'No', 2, 146.16);

-- Market Table
INSERT INTO Market (Brand_ID, Market_Trend, Certifications) VALUES ('BRAND-0001', 'Growing', 'GOTS');
INSERT INTO Market (Brand_ID, Market_Trend, Certifications) VALUES ('BRAND-0002', 'Growing', 'GOTS');
INSERT INTO Market (Brand_ID, Market_Trend, Certifications) VALUES ('BRAND-0003', 'Growing', 'B Corp');
 

  




 
 
 
 
