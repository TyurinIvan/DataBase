-- Выведем расписание
select * from timetable
where name = 'Театральное искусство';


-- Добавим в выборку пересекающуюся запись
insert into timetable values('25',  'Театральное искусство',                   'A102', 'чт',     '15:40',     '01:30');   

select s1.name, s2.name, s1.start_time, s2.start_time, s1.duration, s2.duration,
s1.day, s2.day, s1.room, s2.room
from timetable s1, timetable s2
where s1.name = 'Театральное искусство' and
	  s2.name = 'Театральное искусство' and
      s1.room = s2.room                 AND
      s1.start_time < s2.start_time     and
	  (s1.start_time, s1.start_time + s1.duration) overlaps
      (s2.start_time, s2.start_time + s2.duration);
      
-- В результате видим две записи. Можно добавить еще одно условие: s1.id_clubs < s2.id_clubs. 
-- В таком случае будет отображаться только одна запись.

-- Очистим некорректные данные
DELETE from timetable
where timetable.id_clubs = 25;