select avg(era), avg(saves), avg(whip), avg(k), min(era), name, team, games_started, wins, losses, whip, k, innings_pitched
from pitchers as p1
where (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started = 0
	and p2.innings_pitched > 15
) <= 1
and (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started = 0
and p2.innings_pitched > 15
) > 0
and p1.games_started = 0
and p1.innings_pitched > 15
order by era;