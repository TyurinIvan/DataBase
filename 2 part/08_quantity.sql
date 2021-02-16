select clubs.*, count(*), timetable.day
from clubs 
left join club_composition on clubs.title = club_composition.club
left join timetable on clubs.title = timetable.name
group by clubs.title, timetable.day

having timetable.day = 'пн'

order by 1