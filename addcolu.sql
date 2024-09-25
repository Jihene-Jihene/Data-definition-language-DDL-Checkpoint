-- Add Category column to Product table
ALTER TABLE Product ADD Category VARCHAR2(20);

-- Add OrderDate column to Orders table with default value
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;
