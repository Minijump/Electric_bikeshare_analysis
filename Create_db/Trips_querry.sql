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