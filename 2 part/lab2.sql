CREATE DATABASE lab_1;
USE lab_1;

CREATE TABLE Managers (
	id_manager serial PRIMARY KEY,
	full_name VARCHAR(255) NOT NULL,
	post VARCHAR(255),
	telephone char(12) NOT NULL
);

CREATE TABLE Clubs (
	title VARCHAR PRIMARY KEY,
	note VARCHAR(255),
	manager_id int,
	FOREIGN KEY (manager_id) REFERENCES managers (id_manager)
);

create type weekdays as enum ('пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс');
create type audiences as enum ('A101', 'A102', 'A201', 'A202', 'B101', 'B102', 'B201');
create type gender as enum ('m', 'f');

CREATE TABLE Timetable (
	id_clubs serial PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	room audiences NOT NULL,
	day weekdays NOT NULL,
	start_time TIME NOT NULL,
	duration INTERVAL NOT NULL,
	FOREIGN KEY (name) REFERENCES clubs (title)
);

CREATE TABLE Children (
	SNILS CHAR(14) PRIMARY KEY,
	full_name varCHAR(255) NOT NULL,
	birthdate DATE NOT NULL,
	gender gender NOT NULL,
	telephone char(12) NOT NULL
);

CREATE TABLE club_composition (
	kid char(14) not NULL,
	club VARCHAR NOT NULL,
  	credited date,
  	deducted Date,
	FOREIGN KEY (kid) REFERENCES children (snils),
	FOREIGN KEY (club) REFERENCES clubs (title)
);


-- The end of the first lab
insert into children values('072-641-572 88', 'SEMEN',                                    '12/22/2016','m','+79263074323');                  
insert into children values('048-618-294 88', 'IRINA',                                    '08/29/2019','f','+79269474822');                  
insert into children values('052-457-348 55', 'VALENTINA',                                '05/06/2018','f','+79258325657');                  
insert into children values('139-776-240 09', 'OLGA',                                     '04/26/2015','f','+79262171984');                  
insert into children values('009-290-526 44', 'IOSIF',                                    '09/28/2017','m','+79570618057');                  
insert into children values('010-379-978 45', 'PETR',                                     '08/19/2014','m','+79215134946');                  
insert into children values('016-256-656 44', 'IVAN',                                     '08/09/2017','m','+79230144233');                  
insert into children values('025-897-003 74', 'VLADA',                                    '02/15/2018','f','+79699750566');                  
insert into children values('055-650-765 73', 'EGOR',                                     '02/05/2015','m','+79084697091');                  
insert into children values('144-598-759 14', 'MIXAIL',                                   '03/12/2017','m','+79840955378');                  
insert into children values('138-268-391 90', 'YuRIJ',                                    '02/20/2013','m','+79085400536');                  
insert into children values('125-988-629 15', 'IL`Ya',                                    '08/19/2017','m','+79788745084');                  
insert into children values('010-382-237 93', 'MARINA',                                   '07/20/2012','f','+79304432813');                  
insert into children values('017-698-944 07', 'YuRIJ',                                    '06/30/2017','m','+79247797751');                  
insert into children values('098-789-803 71', 'OLEG',                                     '04/01/2011','m','+79981766364');                  
insert into children values('156-866-183 13', 'ALEKSEJ',                                  '03/22/2012','m','+79578021312');                  
insert into children values('176-247-266 90', 'INNA',                                     '10/29/2015','f','+79941621406');                  
insert into children values('059-854-121 99', 'ANNA',                                     '03/02/2014','f','+79354530177');                  
insert into children values('073-669-149 98', 'OLGA',                                     '02/20/2010','f','+79524337568');                  
insert into children values('152-185-066 46', 'ANNA',                                     '02/10/2012','f','+79372545695');                  
insert into children values('063-210-503 03', 'OLGA',                                     '01/01/2011','f','+79729030899');                  


insert into managers values('1',  'RAKOV SEMEN VIKTOROVICH',                'Директор',                                     '+79699750566');                  
insert into managers values('2',  'POZDNIKOVA IRINA PETROVNA',              'Заместитель директора',                        '+79258325657');                  
insert into managers values('3',  'PODOL`SKICH VALENTINA IVANOVNA',         'Бухгалтер',                                    '+79788745084');                  
insert into managers values('4',  'RYIBINA OLGA VASIL`EVNA',                'Художественное чтение',                        '+79570618057');                  
insert into managers values('5',  'TRONSKIY IOSIF MOISEEVICH',              'Преподаватель русского и литературы',          '+79372545695');                  
insert into managers values('6',  'VOLKOV PETR SERGEEVICH',                 'Преподаватель физики и математики',            '+79215134946');                  
insert into managers values('7',  'NIKITIN IVAN SERGEEVICH',                'Спортивный тренер',                            '+79729030899');                  
insert into managers values('8',  'LOSEVA VLADISLAVA AL`BERTOVNA',          'Общее дошкольное развитие',                    '+79230144233');                  
insert into managers values('9',  'BORSCHIN EGOR STEPANOVICH',              'Преподаватель танцев',                         '+79304432813');                  
insert into managers values('10', 'ROSCHIN MIXAIL EVGRAFOVICH',             'Преподаватель пения (хор)',                    '+79269474822');                  
insert into managers values('11', 'MUCH OLEG NIKOLAEVICH',                  'Преподаватель пения (сольно)',                 '+79263074323');                  
insert into managers values('12', 'KRUZHKINA INNA STEPANOVNA',              'Преподаватель театрального искусства',         '+79354530177');                  
insert into managers values('13', 'MAL` NIKOLAY NIKOLAEVICH',               'Преподаватель авиамоделирования',              '+79084697091');                  


insert into clubs values('Авиамоделирование',                       'Отсутствует',                   '13');                  
insert into clubs values('Театральное искусство',                   'Для ребят от 3-х лет',          '12');                  
insert into clubs values('Хоровое пение',                           'Отсутствует',                   '10');                  
insert into clubs values('Сольное пение',                           'Для ребят от 4-х лет',          '11');                  
insert into clubs values('Классические танцы',                      'Для ребят от 3-х лет',          '9' );                  
insert into clubs values('Кружок общего дошколього развития',       'Отсутствует',                   '8' );                  
insert into clubs values('Спортивный куржок',                       'Отсутствует',                   '7' );                  
insert into clubs values('Начальные естественные науки',            'Для ребят от 4-х лет',          '6' );                  
insert into clubs values('Начальные филологические науки',          'Для ребят от 4-х лет',          '5' );                  
insert into clubs values('Кружок художественного чтения',           'Для ребят от 4-х лет',          '4' );                  


insert into timetable values('1',  'Авиамоделирование',                       'A101', 'пн',     '12:30',     '01:30');                  
insert into timetable values('2',  'Авиамоделирование',                       'A101', 'ср',     '12:30',     '01:30');                  
insert into timetable values('3',  'Авиамоделирование',                       'A101', 'пт',     '12:30',     '01:30');                  
insert into timetable values('4',  'Театральное искусство',                   'A102', 'вт',     '15:30',     '01:30');                  
insert into timetable values('5',  'Театральное искусство',                   'A102', 'чт',     '15:30',     '01:30');                  

insert into timetable values('6',  'Хоровое пение',                           'A102', 'пн',     '14:30',     '00:45');                  
insert into timetable values('7',  'Сольное пение',                           'A202', 'пн',     '14:30',     '00:45');                  
insert into timetable values('8',  'Хоровое пение',                           'A102', 'ср',     '14:30',     '00:45');                  
insert into timetable values('9',  'Сольное пение',                           'A202', 'ср',     '14:30',     '00:45');                  
insert into timetable values('10', 'Хоровое пение',                           'A102', 'пт',     '14:30',     '00:45');                  
insert into timetable values('11', 'Сольное пение',                           'A202', 'пт',     '14:30',     '00:45');                  

insert into timetable values('12', 'Классические танцы',                      'A102', 'вт',     '14:30',     '00:45');                  
insert into timetable values('13', 'Классические танцы',                      'A102', 'чт',     '14:30',     '00:45');                  




insert into timetable values('14', 'Кружок общего дошколього развития',       'B101', 'чт',     '14:30',     '01:30');                  

insert into timetable values('15', 'Спортивный куржок',                       'B101', 'пн',     '12:30',     '01:30');                  
insert into timetable values('16', 'Спортивный куржок',                       'B101', 'ср',     '12:30',     '01:30');                  
insert into timetable values('17', 'Спортивный куржок',                       'B101', 'пт',     '12:30',     '01:30');                  

insert into timetable values('18', 'Кружок художественного чтения',           'B102', 'пн',     '14:30',     '01:30');                  
insert into timetable values('19', 'Кружок художественного чтения',           'B102', 'ср',     '14:30',     '01:30');                  
insert into timetable values('20', 'Кружок художественного чтения',           'B102', 'пт',     '14:30',     '01:30');                  

insert into timetable values('21', 'Начальные естественные науки',            'B102', 'вт',     '12:30',     '00:45');                  
insert into timetable values('22', 'Начальные филологические науки',          'B102', 'вт',     '13:30',     '00:45');                  
insert into timetable values('23', 'Начальные естественные науки',            'B102', 'чт',     '12:30',     '00:45');                  
insert into timetable values('24', 'Начальные филологические науки',          'B102', 'чт',     '13:30',     '00:45');                  


insert into club_composition values('072-641-572 88',          'Авиамоделирование',                                     '12/22/2018',   '06/15/2020');                  
insert into club_composition values('048-618-294 88',          'Авиамоделирование',                                     '02/03/2021'               	);                  
insert into club_composition values('052-457-348 55',          'Хоровое пение',                                         '01/18/2021'                );                  
insert into club_composition values('139-776-240 09',          'Театральное искусство',                                 '08/26/2018'                );                  
insert into club_composition values('009-290-526 44',          'Классические танцы',                                    '06/15/2020'                );                  
insert into club_composition values('010-379-978 45',          'Кружок общего дошколього развития',                     '03/23/2018',   '06/15/2020');                  
insert into club_composition values('016-256-656 44',          'Спортивный куржок',                                     '08/30/2020'                );                  
insert into club_composition values('025-897-003 74',          'Спортивный куржок',                                     '09/25/2020'                );                  
insert into club_composition values('055-650-765 73',          'Начальные филологические науки',                        '09/05/2019'                );                  
insert into club_composition values('144-598-759 14',          'Кружок художественного чтения',                         '02/12/2021'                );                  
insert into club_composition values('138-268-391 90',          'Авиамоделирование',                                     '12/22/2018'                );                  
insert into club_composition values('125-988-629 15',          'Театральное искусство',                                 '08/19/2020'                );                  
insert into club_composition values('010-382-237 93',          'Хоровое пение',                                         '08/17/2020'                );                  
insert into club_composition values('017-698-944 07',          'Хоровое пение',                                         '08/17/2020'                );                  
insert into club_composition values('098-789-803 71',          'Классические танцы',                                    '11/08/2015',   '12/24/2017');                  
insert into club_composition values('098-789-803 71',          'Начальные естественные науки',                          '11/24/2017'                );                  
insert into club_composition values('098-789-803 71',          'Начальные филологические науки',                        '11/24/2017'                );                  
insert into club_composition values('176-247-266 90',          'Спортивный куржок',                                     '10/17/2018'                );                  
insert into club_composition values('059-854-121 99',          'Начальные естественные науки',                          '08/29/2019'                );                  
insert into club_composition values('156-866-183 13',          'Кружок общего дошколього развития',                     '03/17/2016',   '08/29/2019');                  
insert into club_composition values('156-866-183 13',          'Начальные естественные науки',                          '08/29/2016'                );                  
insert into club_composition values('156-866-183 13',          'Начальные филологические науки',                        '08/29/2016'                );                  
insert into club_composition values('073-669-149 98',          'Сольное пение',                                         '03/17/2016'                );                  
insert into club_composition values('152-185-066 46',          'Сольное пение',                                         '03/17/2016'                );                  
insert into club_composition values('063-210-503 03',          'Сольное пение',                                         '03/17/2016'                );                  


-- The end of insert part

-- Более быстрый запрос из-за использования JOIN
select children.*
from club_composition
LEFT JOIN children on children.snils = club_composition.kid
where   club_composition.club = 'Авиамоделирование' AND
		current_date - club_composition.credited > 365 and 
        club_composition.deducted is null
order by 1;

-- Более медленный запрос
select c.*
from club_composition p, children c

where c.snils = p.kid                 and 
      p.club = 'Авиамоделирование'    and
      current_date - p.credited > 365 and 
      p.deducted is null
order by 1;

select clubs.*, count(*), timetable.day
from clubs 
left join club_composition on clubs.title = club_composition.club
left join timetable on clubs.title = timetable.name
group by clubs.title, timetable.day

having timetable.day = 'пн'

order by 1;

select room, day, to_char(sum(duration), 'HH24:MI') as sum_time
from timetable

group by room, day
order by sum_time;


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