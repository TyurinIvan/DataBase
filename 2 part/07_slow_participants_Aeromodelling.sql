-- Более медленный запрос
select c.*
from club_composition p, children c

where c.snils = p.kid                 and 
      p.club = 'Авиамоделирование'    and
      current_date - p.credited > 365 and 
      p.deducted is null
order by 1