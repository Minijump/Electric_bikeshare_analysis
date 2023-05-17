CREATE TABLE My_data.Trips_cleaned AS
SELECT trip_id,
       duration_sec,
       start_station_name,
       end_station_name,
       date,
       age,
    CASE 
        WHEN subscriber_type = 'nan' THEN NULL
        ELSE subscriber_type
    END AS subscriber_type,
    CASE
        WHEN member_gender = 'Male' THEN 1
        WHEN member_gender = 'Female' THEN 2
        ELSE 0
    END AS gender_id
FROM My_data.Trips;