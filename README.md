# ETL Project
## Team members: Kylee Grant, Yifei Cao

## Data Set Overview
Two datasets were used for this project Disney Plus Movies/TV Shows dataset and the IMDb Movies Extensive dataset.

### 1. Disney Plus Movies/TV Shows dataset: (https://www.kaggle.com/unanimad/disney-plus-shows)

#### Dataset Metadata: 
* Sources: http://www.omdbapi.com/ and https://flixable.com/
* Collection methodology: Python with omdbapi
* Dataset owner: Raphael Fontes
* Date created: 2020-04-14
* Last updated: 2020-05-16
* Current version: Version 3
* Data Format: csv

#### Data Columns Summary.
Below is a list and an explanation of all the columns selected from the Disney Plus Movies/TV Shows dataset: 
* imdb_id: unique Internet Movie Database id for each show
* title: title of each show. These titles are not unique. There may be duplicate titles with different imdb_ids and released_at dates.
* type: the type of each record: movie, series, or episode.
* rated: the Motion Picture Association (MPA) film rating  for each show. The ratings are the following for each type:
    * Movies: Approved, G, N/A, Not Rated, Passed, PG, PG-13, TV-14, TV-G, TV-PG, TV-Y7, TV-Y7-FV, Unrated)
    * Series:  G, N/A, TV-14, TV-G, TV-PG, TV-Y, TV-Y7, TV-Y7-FV
    * Episode: N/A, Not Rated, TV-G, TV-PG, Unrated.
* released_at: the date the show was released.  This column was an object that was converted to date_time DD MMM YYYY. 
* imdb_rating: Internet Movie Database rate
* imdb_votes: Internet Movie Database votes

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
* imdb_title_id:  
* weighted_average_vote 
* total_votes 
* votes_10
* votes_9 
* votes_8 
* votes_7 
* votes_6
* votes_5 
* votes_4 
* votes_3 
* votes_2 
* votes_1
* us_voters_rating 
* us_voters_votes
* non_us_voters_rating
* non_us_voters_votes

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


## Final Tables or Collections


# Guidelines for ETL Project

This document contains guidelines, requirements, and suggestions for Project 1.

## Team Effort

Due to the short timeline, teamwork will be crucial to the success of this project! Work closely with your team through all phases of the project to ensure that there are no surprises at the end of the week.

Working in a group enables you to tackle more difficult problems than you'd be able to working alone. In other words, working in a group allows you to **work smart** and **dream big**. Take advantage of it!

## Project Proposal

Before you start writing any code, remember that you only have one week to complete this project. View this project as a typical assignment from work. Imagine a bunch of data came in and you and your team are tasked with migrating it to a production data base.

Take advantage of your Instructor and TA support during office hours and class project work time. They are a valuable resource and can help you stay on track.

## Finding Data

Your project must use 2 or more sources of data. We recommend the following sites to use as sources of data:

* [data.world](https://data.world/)

* [Kaggle](https://www.kaggle.com/)

You can also use APIs or data scraped from the web. However, get approval from your instructor first. Again, there is only a week to complete this!

## Data Cleanup & Analysis

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:

* The sources of data that you will extract from.

* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

* The type of final production database to load the data into (relational or non-relational).

* The final tables or collections that will be used in the production database.

You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.

## Project Report

At the end of the week, your team will submit a Final Report that describes the following:

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

* **T**ransform: what data cleaning or transformation was required.

* **L**oad: the final database, tables/collections, and why this was chosen.

Please upload the report to Github and submit a link to Bootcampspot.

- - -

### Copyright

© 2021 Trilogy Education Services, LLC, a 2U, Inc. brand. Confidential and Proprietary. All Rights Reserved.
