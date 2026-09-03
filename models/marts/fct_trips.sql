select
  t.bike_id,
  t.start_at,
  t.end_at,
  t.duration_seconds,
  t.user_type,
  s1.station_id as start_station_id,
  s2.station_id as end_station_id
from {{ ref('stg_citibike_trips') }} t
left join {{ ref('dim_station') }} s1 on t.start_station_id = s1.station_id
left join {{ ref('dim_station') }} s2 on t.end_station_id  = s2.station_id