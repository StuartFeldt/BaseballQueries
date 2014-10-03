select p.era, p.team, p.name from (
	select min(era) as min_era, team
	from pitchers
	where games_started > 15 
	group by team
) as x 
inner join 
pitchers as p 
on p.team = x.team 
and p.era = x.min_era;