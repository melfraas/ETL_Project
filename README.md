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

```sql
  SELECT state, COUNT(*)
  FROM university
  GROUP BY state
  ORDER BY COUNT (*) DESC
```

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

## Status
Project is: _finished_

## Inspiration
Gretel, and Rutgers Data Science Bootcamp

## Contact
Created by Melissa Fraas, Matteo Bommarito, Gary Wong, Emily Leniart
