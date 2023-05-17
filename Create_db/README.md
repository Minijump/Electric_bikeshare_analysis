The functions of Google BigQuerry are more limited than I thought. Indeed, it does not enable to add keys (primary or foreign), the free version does not enable to change data in the table which makes impossible to clean the data there,...

Anyway we will still use it to select the required columns and we will find a way to do the rest in power BI. You can see below the codes to select those columns and create new tables.

* __Regions__ can be copied directly

* __Station_info__
```sql
create table My_data.Station_info as
  select station_id, 
         name, 
         lat, 
         lon, 
         region_id, 
         capacity
  from `Raw_data.Station_info`;
```

* __Station_status__
```sql
create table My_data.Station_status as
  select station_id, 
         num_bikes_available,
         num_bikes_disabled,
         num_docks_available,
         num_docks_disabled,
  from `Raw_data.Station_status`
  -- we won't consider some stations (not renting,...)
  -- only 4 stations, probably not installed yet
  where is_installed = TRUE
    and is_renting = TRUE 
    and is_returning= TRUE ;
```

* __Trips__
```sql
create table My_data.Trips as 
  select trip_id,
        duration_sec,
        start_station_name,
        end_station_name,
        start_date as date,
        subscriber_type,
        2023 - member_birth_year as age,
        member_gender
  from Raw_data.Trips
```