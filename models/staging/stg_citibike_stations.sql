select
  station_id,
  name       as station_name,
  latitude,
  longitude
from {{ source('citibike', 'citibike_stations') }}