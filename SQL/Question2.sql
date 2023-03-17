SELECT 
    SUM(CASE WHEN S < 0 THEN S ELSE 0 END) AS sum_negatives,
    SUM(CASE WHEN S > 0 THEN S ELSE 0 END) AS sum_positives
FROM 
    Table_s;
