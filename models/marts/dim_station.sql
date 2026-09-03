select distinct
  station_id,
  station_name,
  latitude,
  longitude
from {{ ref('stg_citibike_stations') }}