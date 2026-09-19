SELECT t.Name, t.City, t.CreatedDate, t.IsActive
FROM Teams t;
 
SELECT m.Id,
       ht.Name AS HomeTeam, at.Name AS AwayTeam,
       m.Date, m.Status,
       m.HomeOdds, m.DrawOdds, m.AwayOdds,
       m.CreatedDate
FROM Matches m
JOIN Teams ht ON ht.Id = m.HomeTeamId
JOIN Teams at ON at.Id = m.AwayTeamId
ORDER BY m.Date;
