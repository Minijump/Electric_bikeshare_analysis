The data is divided into 4 Tables:
* __Regions__ (6 entries)

| Fullname   | Mode      | Type    | Description                                       |
|------------|-----------|---------|---------------------------------------------------|
| region_id  | REQUIRED  | INTEGER | Unique identifier for the region                  |
| name       | REQUIRED  | STRING  | Public name for this region                       |


<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
* __Station_info__ (516 entries)

| Fullname              | Mode     | Type    | Description                                                                                                         |
|-----------------------|----------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| station_id             | REQUIRED | STRING  | Unique identifier of a station.                                                                                   |
| name                  | REQUIRED | STRING  | Public name of the station                                                                                         |
| short_name            | NULLABLE | STRING  | Short name or other type of identifier, as used by the data publisher                                               |
| lat                   | REQUIRED | FLOAT   | The latitude of station. The field value must be a valid WGS 84 latitude in decimal degrees format. See: http://en.wikipedia.org/wiki/World_Geodetic_System, https://en.wikipedia.org/wiki/Decimal_degrees                                                                 |
| lon                   | REQUIRED | FLOAT   | The longitude of station. The field value must be a valid WGS 84 longitude in decimal degrees format. See: http://en.wikipedia.org/wiki/World_Geodetic_System, https://en.wikipedia.org/wiki/Decimal_degrees                                                                 |
| region_id             | NULLABLE | INTEGER | ID of the region where station is located                                                                           |
| rental_methods        | NULLABLE | STRING  | Array of enumerables containing the payment methods accepted at this station. Current valid values (in CAPS) are: KEY (i.e. operator issued bike key / fob / card) CREDITCARD PAYPASS APPLEPAY ANDROIDPAY TRANSITCARD ACCOUNTNUMBER PHONE This list is intended to be as comprehensive at the time of publication as possible but is subject to change, as defined in File Requirements above |
| capacity              | NULLABLE | INTEGER | Number of total docking points installed at this station, both available and unavailable                           |
| external_id           | NULLABLE | STRING  |                                                                                                                      |
| eightd_has_key_dispenser | NULLABLE | BOOLEAN |                                                                                                                 |
| has_kiosk             | NULLABLE | BOOLEAN |                                                                                                                      |
| station_geom          | NULLABLE | GEOGRAPHY |                                                                                                                   |


<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
* __Stations_status__ (516 entries)

| fullname                 | mode      | type   | description                                                                                                      |
|--------------------------|-----------|---------|---------------------------------------------------------------------------------------------------------------------------------------|
| station_id               | REQUIRED | STRING | Unique identifier of a station                                                                                   |
| num_bikes_available      | REQUIRED | INTEGER | Number of bikes available for rental                                                                             |
| num_bikes_disabled       | NULLABLE | INTEGER | Number of disabled bikes at the station. Vendors who do not want to publicize the number of disabled bikes or docks in their system can opt to omit station capacity (in station_information), num_bikes_disabled and num_docks_disabled. If station capacity is published then broken docks/bikes can be inferred (though not specifically whether the decreased capacity is a broken bike or dock) |
| num_docks_available       | REQUIRED | INTEGER | Number of docks accepting bike returns                                                                          |
| num_docks_disabled        | NULLABLE | INTEGER | Number of empty but disabled dock points at the station. This value remains as part of the spec as it is possibly useful during development |
| is_installed             | REQUIRED | BOOLEAN | 1/0 boolean - is the station currently on the street                                                             |
| is_renting               | REQUIRED | BOOLEAN | 1/0 boolean - is the station currently renting bikes (even if the station is empty, if it is set to allow rentals this value should be 1)|
| is_returning             | REQUIRED | BOOLEAN | 1/0 boolean - is the station accepting bike returns (if a station is full but would allow a return if it was not full then this value should be 1)|
| last_reported            | REQUIRED | INTEGER | Integer POSIX timestamp indicating the last time this station reported its status to the backend                  |
| num_ebikes_available     | NULLABLE | INTEGER |                                                                                                                 |
| eightd_has_available_keys| NULLABLE | BOOLEAN |                                                                                                                 |


<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
* __Trips__ (1947417 entries)

| fullname                 | mode      | type    | description                                                                                                     |
|--------------------------|-----------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| trip_id                  | REQUIRED | STRING | Numeric ID of bike trip                                                                                           |
| duration_sec             | NULLABLE | INTEGER | Time of trip in seconds                                                                                         |
| start_date               | NULLABLE | TIMESTAMP | Start date of trip with date and time, in PST                                                                 |
| start_station_name       | NULLABLE | STRING | Station name of start station                                                                                     |
| start_station_id         | NULLABLE | INTEGER | Numeric reference for start station                                                                             |
| end_date                 | NULLABLE | TIMESTAMP | End date of trip with date and time, in PST                                                                   |
| end_station_name         | NULLABLE | STRING | Station name for end station                                                                                     |
| end_station_id           | NULLABLE | INTEGER | Numeric reference for end station                                                                               |
| bike_number              | NULLABLE | INTEGER | ID of bike used                                                                                                 |
| zip_code                 | NULLABLE | STRING | Home zip code of subscriber (customers can choose to manually enter zip at kiosk however data is unreliable)     |
| subscriber_type          | NULLABLE | STRING | Subscriber = annual or 30-day member; Customer = 24-hour or 3-day member                                         |
| c_subscription_type      | NULLABLE | STRING |                                                                                                                   |
| start_station_latitude   | NULLABLE | FLOAT  |                                                                                                                   |
| start_station_longitude  | NULLABLE | FLOAT  |                                                                                                                   |
| end_station_latitude     | NULLABLE | FLOAT  |                                                                                                                   |
| end_station_longitude    | NULLABLE | FLOAT  |                                                                                                                   |
| member_birth_year        | NULLABLE | INTEGER |                                                                                                                 |
| member_gender            | NULLABLE | STRING |                                                                                                                   |
| bike_share_for_all_trip  | NULLABLE | STRING |                                                                                                                   |
| start_station_geom       | NULLABLE | GEOGRAPHY |                                                                                                               |
| end_station_geom         | NULLABLE | GEOGRAPHY |                                                                                                               |
