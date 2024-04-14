/*Adds a `ride_length` column to each trip data table,
which calculates the duration of each ride by subtracting the `started_at` timestamp
from the `ended_at` timestamp.*/
ALTER TABLE trip_data_202304
ADD COLUMN ride_length TIME;
UPDATE trip_data_202304
SET ride_length = ended_at - started_at;
--------
ALTER TABLE trip_data_202305
ADD COLUMN ride_length TIME;
UPDATE trip_data_202305
SET ride_length = ended_at - started_at;
--------
ALTER TABLE trip_data_202306
ADD COLUMN ride_length TIME;
UPDATE trip_data_202306
SET ride_length = ended_at - started_at;
--------
ALTER TABLE trip_data_202307
ADD COLUMN ride_length TIME;
UPDATE trip_data_202307
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202308
ADD COLUMN ride_length TIME;
UPDATE trip_data_202308
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202309
ADD COLUMN ride_length TIME;
UPDATE trip_data_202309
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202310
ADD COLUMN ride_length TIME;
UPDATE trip_data_202310
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202311
ADD COLUMN ride_length TIME;
UPDATE trip_data_202311
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202312
ADD COLUMN ride_length TIME;
UPDATE trip_data_202312
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202401
ADD COLUMN ride_length TIME;
UPDATE trip_data_202401
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202402
ADD COLUMN ride_length TIME;
UPDATE trip_data_202402
SET ride_length = ended_at - started_at;
---------
ALTER TABLE trip_data_202403
ADD COLUMN ride_length TIME;
UPDATE trip_data_202403
SET ride_length = ended_at - started_at;
---------


/*This code block adds a `weekday` column to several `trip_data_` tables
and populates it with the day of the week (where 0 is Sunday) extracted
from the `started_at` column.This allows for analysis of trip data by day of the week.*/
ALTER TABLE trip_data_202304
ADD COLUMN weekday INT;
UPDATE trip_data_202304
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202305
ADD COLUMN weekday INT;
UPDATE trip_data_202305
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202306
ADD COLUMN weekday INT;
UPDATE trip_data_202306
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202307
ADD COLUMN weekday INT;
UPDATE trip_data_202307
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202308
ADD COLUMN weekday INT;
UPDATE trip_data_202308
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202309
ADD COLUMN weekday INT;
UPDATE trip_data_202309
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202310
ADD COLUMN weekday INT;
UPDATE trip_data_202310
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202311
ADD COLUMN weekday INT;
UPDATE trip_data_202311
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202312
ADD COLUMN weekday INT;
UPDATE trip_data_202312
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202401
ADD COLUMN weekday INT;
UPDATE trip_data_202401
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202402
ADD COLUMN weekday INT;
UPDATE trip_data_202402
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------
ALTER TABLE trip_data_202403
ADD COLUMN weekday INT;
UPDATE trip_data_202403
SET weekday = EXTRACT(
        DOW
        FROM started_at
    );
------