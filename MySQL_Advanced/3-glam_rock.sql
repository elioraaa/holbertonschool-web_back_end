-- script

SELECT band_name, CASE WHEN split IS NULL OR split = '-' OR split = '0' THEN 2024 - CAST(formed AS SIGNED) ELSE CAST(split AS SIGNED) - CAST(formed AS SIGNED) END AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;