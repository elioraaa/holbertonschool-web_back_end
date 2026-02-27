-- script to list the lifespan of glam rock bands

SELECT band_name, (CASE WHEN split IS NULL THEN 2024 ELSE split END) - formed AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY lifespan DESC;