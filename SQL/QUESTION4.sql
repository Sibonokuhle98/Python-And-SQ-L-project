CREATE TABLE Table1 (
    Make VARCHAR(50),
    Model VARCHAR(50),
    Manufacture_Date DATE,
    Cost DECIMAL(10,2),
    Model_id INT
);

INSERT INTO Table1(Make, Model,Manufacture_Date, Cost, Model_id)VALUES
    ('Honda', 'Civic','2014-01-03', 25000,1)
    ('Ford', 'Mustang','2019-03-23', 345000,2)
    ('Lamborghini', 'Urus','2020-04-12', 625300,3)
    ('Ferrarri', 'La Ferrarri','2022-11-15', 825000,4)
    ('Mercedes', 'G63','2009-06-09', 995000,5);
    

CREATE TABLE Table2(
    Manufacturer VARCHAR(50),
    Model_id INT,
    Parts VARCHAR(100),
    Warranty_Expiry_Date DATE,
    City VARCHAR(50)
);

INSERT INTO Table2 (Manufacturer, Model_id, Parts, Warranty_Expiry_Date,City) VALUES
    ('Honda',1,'Brakes, Tires, Suspension','2025-01-03', 'Los Angeles'),
    ('Ford',2,'Windscreen, Tires, Engine','2024-11-13', 'New York'),
    ('Lamborghini',3,'Motor, Transmission, AC','2026-04-07', 'Munich'),
    ('Ferrarri',4,'Sensors, Battery, Doors','2027-06-23', 'Beijing'),
    ('Mercedes',5,'Mirrors, Charger, Cameras','2035-12-08', 'Paris'),