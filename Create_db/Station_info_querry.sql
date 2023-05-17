create table My_data.Station_info as
  select station_id, 
         name, 
         lat, 
         lon, 
         region_id, 
         capacity
  from `Raw_data.Station_info`;