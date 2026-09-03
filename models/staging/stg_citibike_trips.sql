select
  cast(bikeid as int64)              as bike_id,
  starttime                          as start_at,
  stoptime                           as end_at,
  cast(start_station_id as string)   as start_station_id,
  cast(end_station_id as string)     as end_station_id,
  tripduration                       as duration_seconds,
  usertype                           as user_type
from {{ source('citibike', 'citibike_trips') }}
where starttime is not null