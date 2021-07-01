# ETL_Project

## Table of contents

* [Project Proposal](#project-proposal)
* [General info](#general-info)
* [Technologies](#technologies)
* [Data Extraction, Transfer, Load](#Data-Extraction,-Transfer,-Load)
* [Example Queries](#Example-Queries)
* [Major Choices](#Major-Choices)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## Project Proposal

#### Brief Description of the Final Database : 
##### A breakdown of Bachelor's Degree majors by age, sex, and state, and a list of colleges in each state.

### States with Most Schools:
* California - 228
* New York - 127
* Texas - 113
* Pennsylvania - 108
* Illinois - 87

![image](https://user-images.githubusercontent.com/81267416/124055736-71d48c00-d9f2-11eb-817b-76de2d2b5890.png)


#### Why is our final database useful to a hypothetical organization?
* To create a repository for people interested in colleges within a particular state.
* For a potential employer to find local colleges and popular majors within their state to make decisions about recruiting efforts.
* Which majors are popular among men vs. women, and in which age groups.
* How degree majors vary in popularity across different states. 

#### A list of data sources :
*  2019 Bachelor's Degree Majors by Age, Sex, and State [https://www.kaggle.com/tjkyner/bachelor-degree-majors-by-age-sex-and-state]
*  A-Z list of US Colleges and Universities [https://www.theedadvocate.org/an-a-z-list-of-u-s-colleges-and-universities/]

#### Brief summary of the 3 ETL steps we will take to create this database:

We will be using Postgres since our collective data is all similar and we are not having different kinds of data.  Also, since we have specific information, we can also make sure to secure its type. 

#### ETL STEPS
1. Find data set for Bachelor's Degree majors broken down by age, sex, and state.
2. Scrape the web for a list of colleges by state
3. Create a [Quick DBD flow chart](https://user-images.githubusercontent.com/81319622/123888152-d9220b80-d920-11eb-88b9-c84b8815e2f8.png)
4. Merge all the collected data into postgres sql database
5. Create sample queries

#### Team Roles

| Team Member           | Role                                     | Github username |        
| -----------           | -----------                              | -----------
| Melissa Fraas         | Data Cleaner                             | melfraas |
| Matteo Bommarito      | Web Scraper                              | matteo005  |
| Gary Wong             | Editorial/Clean Up Crew                  | garykaiwong   |
| Emily Leniart         | Database Master/Queen of Queries         | leniartemily       |

## General info
How many Bachelor's Degree holders are in each state? 
Does number of colleges in each state have any bearing on the state population that goes to college? 
Which majors are popular in which states?


## Technologies
* Jupyter Notebook
* Beautifulsoup
* Pandas
* Python
* PostgresSQL
* QUICK DBD
* NumPy
* GitHub

## Data Extraction, Transfer, Load
##### Database Relationship
![image](https://user-images.githubusercontent.com/81319622/123888152-d9220b80-d920-11eb-88b9-c84b8815e2f8.png)
## Extrapolations

### Customizations of Sandwhiches
- Every single sandwich chain offers a unlimited number of customizations for each sandwich.  For a cleaner database we decided to forgo customizations and stick with the main "as is" offerings.
- We did note the differences in bread types, as well as sandwhich lengths

### Jimmy Johns
#### Average of Nutrition Values Across Bread Types
- Due to the nature of the Jimmy Johns website, there only existed ranges of each nutritional value field (calories, protein, fat etc) rather then exact amounts per bread type (French, Stone-Wheat, Unwich).
- To finish the datatables we took the averages of all the options as found in the Jimmy Johns PDF Nutrition file and applied the increases to the base "Unwich" stats - which are always the lowsest value.
- Below is the table for the values

| Bread Type  | Total Fat  | Cholesterol  | Total Carbs | Dietary Fiber | Protein    |
| ----------  | ---------- | -----------  | ----------  | ------------  | ---------  |
| Unwich      | base Value | base Value   | base Value  | base Value    | base Value |
| French      | +2         | +0           | +65         | +4            | +13        |
| Stone-Wheat | +8         | +0           | +57         | +3            | +16        |

### Exercise
- [See our data here](https://github.com/Jen-Dean/for-now/blob/main/Exercise_Scrape/exercise.csv) on all the exercises queried for our database.  This data is based on 1 hour of activity as well as 4 different weights.  The data is also of an "average" human male.
- The amount of calories expended is influenced by many factors, including body weight, intensity of activity, conditioning level and metabolism.
##### Exercise Examples
![Exercise Examples](https://github.com/Jen-Dean/for-now/blob/main/Exercise_Scrape/Exercise_screenshot.png)
  
### Blimpie
- We initially planned on scraping data from the Blimpie website, but because of unforseeable reasons, we weren't able to collect that data.
- Therefore, we just focused on extracting data from Panera, Quiznos, Subway and Jimmy Johns. 

## Loading the Data
- Combined all the collective csv's into Postgres. Created a collective jupyter notebook for the loading process. Loaded the csvs to dataframe.  Made the necessary changes to the dataframe such as renaming columns. Made the connection. 

## Example Queries

### Finding State options

Here are some example queries you can run when looking for a specific State's number of people with a Bachelor Degree

#### Based on State:

```sql
  SELECT state 
  FROM bach_data
  WHERE state = 'New Jersey'
```
```sql
  SELECT state 
  FROM bach_data
  WHERE state = 'California'
```
```sql
  SELECT state 
  FROM bach_data
  WHERE state = 'Pennsylvania'
```
```

#### Major Choices:

Science and Engineering
Science and Engineering and Related Fields
Business
Education
Arts, Humanities and others

### Based on Number of People within a Certain Major:

```sql
  SELECT ""
  from bach-data
  where subject <= 1000
```
```sql
  SELECT sandwich_name, restaurant_name, calories_cal_
  FROM sandwiches
  WHERE calories_cal_ < 500
```
```sql
  SELECT sandwich_name, restaurant_name, calories_cal_, protein_grams_
  FROM sandwiches
  WHERE calories_cal_ < 500
  AND protein_grams_ > 10
```
```sql
  SELECT sandwich_name, restaurant_name, calories_cal_, protein_grams_
  FROM sandwiches
  WHERE calories_cal_ < 500
  AND protein_grams_ > 10
  AND total_carbohydrates_mg_
```
### Finding Exercise options
#### Based on Calories Burned per Min:

```sql
SELECT exercise_type, "130 lbs"
FROM exercises
WHERE "130 lbs" >= 10
```
```sql
SELECT exercise, "130 lbs", "155 lbs", "180 lbs", "205 lbs"
FROM exercises
WHERE "130 lbs" >= 10
AND "155 lbs" >= 10
AND "180 lbs" >= 10
AND "205 lbs" >= 10
```
#### Situationally Based:

"I ate a 430 calorie sandwich, I only have a 30 min lunch break to work off the sandwich - What are my exercise options?"

```sql
SELECT exercise, "130 lbs", "155 lbs", "180 lbs", "205 lbs"
FROM exercises
WHERE "130 lbs" >= 430/30
AND "155 lbs" >= 430/30
AND "180 lbs" >= 430/30
AND "205 lbs" >= 430/30
```
Here is the same example with the values removed so you can type in your own values:

```sql
SELECT exercise, "130 lbs", "155 lbs", "180 lbs", "205 lbs"
FROM exercises
WHERE "130 lbs" >= [ENTER YOUR SANDWICH CAL]/[ENTER MINS WORKOUT] 
AND "155 lbs" >= [ENTER YOUR SANDWICH CAL]/[ENTER MINS WORKOUT]
AND "180 lbs" >= [ENTER YOUR SANDWICH CAL]/[ENTER MINS WORKOUT] 
AND "205 lbs" >= [ENTER YOUR SANDWICH CAL]/[ENTER MINS WORKOUT]
```
## Features
- Find all the nutiriton of famous sandwich restaurants
- Discover the value of how many calories certain exercises burn per min depending on weight

## Status
Project is: _finished_

## Inspiration
Gretel, and Rutgers Data Science Bootcamp

## Contact
Created by Melissa Fraas, Matteo Bommarito, Gary Wong, Emily Leniart
