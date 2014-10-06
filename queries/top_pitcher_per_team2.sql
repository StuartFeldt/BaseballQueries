select min(era), team, name, home_runs, games_started, k from pitchers 
where games_started > 10
group by team;