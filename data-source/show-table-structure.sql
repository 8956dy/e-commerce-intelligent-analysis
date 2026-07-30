SELECT
    COLUMN_NAME,
    COLUMN_TYPE,
    COLUMN_COMMENT
FROM information_schema.COLUMNS
WHERE TABLE_NAME = 'user'
  AND TABLE_SCHEMA = 'sales_analysis_db';