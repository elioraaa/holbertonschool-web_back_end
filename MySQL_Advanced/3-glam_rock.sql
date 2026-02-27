-- script to list the lifespan of glam rock bands

SELECT
  band_name,
  (IFNULL(split, 2024) - formed) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;