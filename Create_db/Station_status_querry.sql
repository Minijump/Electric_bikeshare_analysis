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