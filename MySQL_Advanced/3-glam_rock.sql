-- script

SET @style_col := (
  SELECT COLUMN_NAME
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'metal_bands'
    AND COLUMN_NAME IN ('main_style', 'style')
  ORDER BY FIELD(COLUMN_NAME, 'main_style', 'style')
  LIMIT 1
);

SET @sql := CONCAT(
  "SELECT band_name, ",
  "((CASE WHEN split IS NULL OR split = 0 THEN 2024 ELSE split END) - formed) AS lifespan ",
  "FROM metal_bands ",
  "WHERE ", @style_col, " = 'Glam rock' ",
  "ORDER BY lifespan DESC;"
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;