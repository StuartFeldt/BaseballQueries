select avg(era), avg(wins), avg(losses), avg(whip), avg(k), min(era), era, name, team, games_started, wins, losses, whip, k
from pitchers as p1
where (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) <= 1
and (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) > 0
and p1.games_started > 10
order by era;