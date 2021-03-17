# ETL Project
## Team members: Kylee Grant, Yifei Cao, Rana Saber
 
## Data Set Overview
Two datasets were used for this project: Disney Plus Movies/TV Shows dataset and the IMDb Movies Extensive dataset.
 
### 1. Disney Plus Movies/TV Shows dataset: (https://www.kaggle.com/unanimad/disney-plus-shows)
 
#### Dataset Metadata:
* Sources: http://www.omdbapi.com/ and https://flixable.com/
* Collection methodology: Python with omdbapi
* Dataset owner: Raphael Fontes
* Date created: 2020-04-14
* Last updated: 2020-05-16
* Current version: Version 3
* Data Format: csv
 
#### Data Columns Summary.
Below is a list and an explanation of all the columns selected from the Disney Plus Movies/TV Shows dataset:
* imdb_id: unique Internet Movie Database id for each show. Data Type: object.
* title: title of each show. These titles are not unique. There may be duplicate titles with different imdb_ids and released_at dates. Data Type: object.
* type: the type of each record: movie, series, or episode. Data Type: object.
* rated: the Motion Picture Association (MPA) film rating for each show. Data Type: object. The ratings are the following for each type:
   * Movies: Approved, G, N/A, Not Rated, Passed, PG, PG-13, TV-14, TV-G, TV-PG, TV-Y7, TV-Y7-FV, Unrated)
   * Series:  G, N/A, TV-14, TV-G, TV-PG, TV-Y, TV-Y7, TV-Y7-FV
   * Episode: N/A, Not Rated, TV-G, TV-PG, Unrated.
* released_at: the date the show was released. This column was an object that was converted to date_time YYYY MM DD data type.
* imdb_rating: Internet Movie Database rate. Data Type: float.
* imdb_votes: Internet Movie Database votes. Data Type: float.
 
### 2. IMDb Movies Extensive dataset: (https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset/discussion/201079).
 
#### Dataset Metadata:
* Sources: https://www.imdb.com
* Collection methodology: Python script
* Dataset owner: Stefano Leone
* Date created: 2019-11-24
* Last updated: 2020-09-14
* Current version: Version 2
* Data Format: csv
 
#### Data Columns Summary:
Below is a list and an explanation of all the columns selected from the IMDb Movies Extensive dataset:
* imdb_title_id: unique Internet Movie Database id for each show. This was renamed to imdb_id. Data Type: object.
* weighted_average_vote: IMDb publishes weighted vote averages rather than raw data averages. When unusual voting activity is detected, an alternate weighting calculation may be applied in order to preserve the reliability of their system. To ensure the effectiveness of the rating mechanism, IMDb does not disclose the exact method used to generate the rating. Data Type: float.
* total_votes: total votes received for the show. Data Type: integer. 
* votes_10: number of votes for the show with a rating equal to 10. Data Type: integer. 
* votes_9: number of votes for the show with a rating equal to 9. Data Type: integer. 
* votes_8: number of votes for the show with a rating equal to 8. Data Type: integer. 
* votes_7: number of votes for the show with a rating equal to 7. Data Type: integer. 
* votes_6: number of votes for the show with a rating equal to 6. Data Type: integer. 
* votes_5: number of votes for the show with a rating equal to 5. Data Type: integer. 
* votes_4: number of votes for the show with a rating equal to 4. Data Type: integer. 
* votes_3: number of votes for the show with a rating equal to 3. Data Type: integer. 
* votes_2: number of votes for the show with a rating equal to 2. Data Type: integer. 
* votes_1: number of votes for the show with a rating equal to 1. Data Type: integer. 
* us_voters_rating: Data Type: float. 
* us_voters_votes: Data Type: float.
* non_us_voters_rating: Data Type: float.
* non_us_voters_votes: Data Type: float.

## Data Transformation
### Renamed Index
Columns from the Disney Plus Movies/TV Shows dataset and IMDb Movies Extensive dataset were merged using imdb_id. Before this can occur, the imdb_title_id column in the IMDb Movies Extensive dataset was renamed to imdb_id. imdb_id will be the index used when merging the two data sets.

### Data Cleaning
* Data types in the IMDb Movies Extensive dataset were checked and none were changed. 
* Duplicate imdb_id were dropped in both data sets.
* Below were the changes made to the Disney Plus Movies/TV Shows dataset:
    * Commas in imdb_votes were removed and the data type was converted to float.
    * N/A in released_at column were changed to blanks
    * Dates in released_at column were changed from DD MMM YYYY to YYYY MM DD and changed to datetime.
    * Renamed the imdb_rating and imdb_votes columns to disney_imdb_rating and disney_imdb_votes, resepectively, to make their source clear.

## Production Database
Postgres database was used for this project. Python with SQLAlchemy was used to insert data and query the database. Two data tables were created: 
1. Table imdb_id TEXT PRIMARY KEY,
* weighted_average_vote INT,
* total_votes INT,
* votes_10 INT,
* votes_9 INT,
* votes_8 INT,
* votes_7 INT,
* votes_6 INT,
* votes_5 INT,
* votes_4 INT,
* votes_3 INT,
* votes_2 INT,
* votes_1 INT,
* us_voters_rating INT,
* us_voters_votes INT,
* non_us_voters_rating INT,
* non_us_voters_votes INT

2. TABLE disney
* imdb_id TEXT PRIMARY KEY,
* title TEXT,
* type TEXT,
* rated TEXT,
* released_at DATE,
* disney_imdb_rating INT,
* disney_imdb_votes INT

## Final Tables or Collections
