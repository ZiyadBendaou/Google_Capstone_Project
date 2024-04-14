SELECT
    weekday,
    ROUND(AVG(EXTRACT(EPOCH FROM ride_length)/60),0) AS avg_ride_length
FROM
    (
    SELECT weekday, ride_length FROM trip_data_202304
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202305
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202306
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202307
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202308
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202309
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202310
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202311
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202312
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202401
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202402
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202403
    ) AS all_rides
GROUP BY
    weekday
ORDER BY
    weekday;
