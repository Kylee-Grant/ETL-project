CREATE TABLE imdb (
	imdb_id TEXT PRIMARY KEY,
	weighted_average_vote INT,
	total_votes INT,
	votes_10 INT,
	votes_9 INT,
	votes_8 INT,
	votes_7 INT,
	votes_6 INT,
	votes_5 INT,
	votes_4 INT,
	votes_3 INT,
	votes_2 INT,
	votes_1 INT,
	us_voters_rating INT,
	us_voters_votes INT,
	non_us_voters_rating INT,
	non_us_voters_votes INT
);

CREATE TABLE disney (
	imdb_id TEXT PRIMARY KEY,
	title TEXT,
	type TEXT,
	rated TEXT,
	released_at DATE,
	disney_imdb_rating INT,
	disney_imdb_votes INT
);