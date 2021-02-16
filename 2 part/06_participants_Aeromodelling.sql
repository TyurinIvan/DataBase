-- Более быстрый запрос из-за использования JOIN
select children.*
from club_composition
LEFT JOIN children on children.snils = club_composition.kid
where   club_composition.club = 'Авиамоделирование' AND
		current_date - club_composition.credited > 365 and 
        club_composition.deducted is null
order by 1