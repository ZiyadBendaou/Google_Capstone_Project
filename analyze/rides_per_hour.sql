SELECT
    EXTRACT(HOUR FROM started_at) AS hour_of_day,
    COUNT(*) AS total_rides
FROM
    (
    SELECT started_at FROM trip_data_202304
    UNION ALL
    SELECT started_at FROM trip_data_202305
    UNION ALL
    SELECT started_at FROM trip_data_202306
    UNION ALL
    SELECT started_at FROM trip_data_202307
    UNION ALL
    SELECT started_at FROM trip_data_202308
    UNION ALL
    SELECT started_at FROM trip_data_202309
    UNION ALL
    SELECT started_at FROM trip_data_202310
    UNION ALL
    SELECT started_at FROM trip_data_202311
    UNION ALL
    SELECT started_at FROM trip_data_202312
    UNION ALL
    SELECT started_at FROM trip_data_202401
    UNION ALL
    SELECT started_at FROM trip_data_202402
    UNION ALL
    SELECT started_at FROM trip_data_202403
    ) AS all_rides
GROUP BY
    hour_of_day
ORDER BY
    total_rides DESC;
