-- script

SELECT
  band_name,
  (CASE WHEN split IS NULL OR split = 0 THEN 2024 ELSE split END) - formed AS lifespan
FROM metal_bands
WHERE TRIM(SUBSTRING_INDEX(style, ',', 1)) = 'Glam rock'
ORDER BY lifespan DESC;