# ETL-project

### Anthonette Dominguez, Steve Meyer

Project Proposal:

We gathered data to compare car manufacturer MSRP with used car prices. We were curious of what impacts a car's price new or old. We focused on cars that were built in 1993-2017. There were questions that helped drive the exploration of data such as:
    What are the factors that affect price?
    Which brand made the most money throughout the years?
    What is a car's resell value when used?
    
With the data that we accumlated, one is able to see which car manufacturer was popular (new or used), compare and contrast new and used models and see what impacts used car prices. One could find a car within their budget and explore through the options in the auction table in our database. One could also find specific specs of a car within a budget or brand to help narrow down their car search when purchasing. 


# E - EXTRACT
The data that we extracted from were from these two sources:
 - https://www.kaggle.com/doaaalsenani/usa-cers-dataset
 - https://www.kaggle.com/gagandeep16/car-sales
 - https://www.kaggle.com/CooperUnion/cardataset

# T - TRANSFORM
We cleaned each dataset on each CSV file that was retrieved from Kaggle where empty cells/NaNs were removed from the dataset and removed columns that were not useful. We reduced the datasets to make them more manageable and easy to read. We managed to keep all datasets uniform where all texts are lowercased to help join/filter data.

# L - LOAD
After cleaning our data, we created a database in pgAdmin and called our database 'cars_db'. Each table represents all of the clean CSV files. There were queries that were created to make the tables and helped answer questions (see queries.sql). One could make queries to see what car can be perfect for them!
