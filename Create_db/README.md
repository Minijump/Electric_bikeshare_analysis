The functions of Google BigQuerry are more limited than I thought. Indeed, it does not enable to add keys (primary or foreign), the free version does not enable to change data in the table which makes impossible to clean the data directly (I found a workaround, create a querry with instructions to clean data in it (see create Trips_cleaned))...

Anyway we will still use it to SELECT the required columns and we will find a way to do the rest in power BI. You can see below the sql codes used to create new tables.

* __Regions__ can be copied directly

* __Station_info__
```sql
CREATE TABLE My_data.Station_info AS
  SELECT station_id, 
         name, 
         lat, 
         lon, 
         region_id, 
         capacity
  FROM `Raw_data.Station_info`;
```

* __Station_status__
```sql
CREATE TABLE My_data.Station_status AS
  SELECT station_id, 
         num_bikes_available,
         num_bikes_disabled,
         num_docks_available,
         num_docks_disabled,
  FROM `Raw_data.Station_status`
  -- we won't consider some stations (not renting,...)
  -- only 4 stations, probably not installed yet
  WHERE is_installed = TRUE
    AND is_renting = TRUE 
    AND is_returning= TRUE ;
```

* __Trips__
This table will also be cleaned and a new table will be created for genders.
```sql
CREATE TABLE My_data.Trips AS 
  SELECT trip_id,
        duration_sec,
        start_station_name,
        end_station_name,
        start_date AS date,
        subscriber_type,
        2023 - member_birth_year AS age,
        member_gender
  FROM Raw_data.Trips
```

```sql
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
```

```sql
CREATE TABLE My_data.Gender AS
    SELECT DISTINCT member_gender AS name,
                 CASE
                    WHEN member_gender = 'Male' THEN 1
                    WHEN member_gender = 'Female' THEN 2
                    ELSE 0 
                 END AS gender_id
    FROM My_data.Trips
    WHERE member_gender IS NOT NULL;

```
