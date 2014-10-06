select avg(era), avg(wins), avg(losses), avg(whip), avg(k), min(era), max(era)
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

union

select avg(era), avg(wins), avg(losses), avg(whip), avg(k), min(era), max(era)
from pitchers as p1
where (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) <= 2
and (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) > 1
and p1.games_started > 10

union

select avg(era), avg(wins), avg(losses), avg(whip), avg(k), min(era), max(era)
from pitchers as p1
where (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) <= 3
and (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) > 2
and p1.games_started > 10


union

select avg(era), avg(wins), avg(losses), avg(whip), avg(k), min(era), max(era)
from pitchers as p1
where (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) <= 4
and (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) > 3
and p1.games_started > 10


union

select avg(era), avg(wins), avg(losses), avg(whip), avg(k), min(era), max(era)
from pitchers as p1
where (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) <= 5
and (
	select count(*) from pitchers as p2
	where p2.team = p1.team
	and p2.era <= p1.era
	and p2.games_started > 10
) > 4
and p1.games_started > 10;