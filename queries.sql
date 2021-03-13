SELECT d.imdb_id, i.weighted_average_vote, i.total_votes, d.title, d.type, d.released_at, d.disney_imdb_rating
FROM disney d
INNER JOIN imdb i
ON d.imdb_id = i.imdb_id