'5.1'

CREATE TEMPORARY TABLE temporary_table AS
SELECT t1.make, t1.model, t1.Cost, t1.Manufacture_Date, t2.Parts, t2.Warranty_Expiry_Date
FROM Table1 t1
INNER JOIN Table2 t2 ON t1.Model_id = t2.Model_id

'5.2:To fix this you can either drop the existing temporary table before creating a new one with the same name or a different name for the temporary name'
"Option 1"
DROP TABLE ##temp

"Option 2"
CREATE TABLE ##temp2 (column1 datatype1,column2 datatype2, ...);