select room, day, to_char(sum(duration), 'HH24:MI') as sum_time
from timetable

group by room, day
order by sum_time