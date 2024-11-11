# Social-Media-Analysis

Thank you for checking out my mock analysis for social media usage. This project is beginner-level and uses SQL queries to analyze the data set and draw results and insights.
Speaking of the data, I got it from Kaggle.com, the link is https://www.kaggle.com/datasets/bhadramohit/social-media-usage-datasetapplications/data.

## Overview
This project is using mock data of 1000 users on various social media apps and tracking their likes, follows, posts, and minutes spent per day on the said apps. This analysis could be used by marketing teams to see what apps and types of engagement lead to the most impressions and get the most value out of their ads.

# Comprehensive Data Analysis Report

## Overview
This report details the key questions addressed in the data analysis project, showcases the SQL code used, presents visualizations created in Tableau, and provides insights drawn from the analysis.

## Table of Contents
1. [Question 1a: User Engagement](#question-1a-user-engagement)
2. [Question 2a: Content Creation and Interaction](#question-2a-content-creation-and-interaction)
3. [Question 3a: Interaction Patterns](#question-3a-interaction-patterns)
4. [Question 4a: User Growth Potential](#question-4a-user-growth-potential)
5. [Question 5a: Comparing Usage and Engagement](#question-5a-comparing-usage-and-engagement)

## Question 1a: User Engagement
### Question
*Which social media app has the highest average daily engagement in terms of minutes spent?*

### Code Snippet
```sql
-- SQL query 
select App, avg(Daily_Minutes_Spent) as 'Daily Engagement'
from social_media_analysis.social_media_usage
group by App
order by avg(Daily_Minutes_Spent) desc
Limit 1;
```

## Question 1b: User Engagement
### Question
*How does user engagement (daily minutes spent) vary by app, and is there a significant difference in usage time across platforms?*

### Data Visualization
<img src="DataVisualizations/Avg DMS.png" width=500 height=300>

### Insight
Instagram is the app with the highest average daily engagement among its users, but not by a large margin. All the apps in this analysis are pretty close to each other as you can see from the chart. With only about a 30 minute difference separating the most used app (Instagram) and the least used app (TikTok). As a marketing team, I would not use this analysis as my number one driver for what platform to post on, as there is not a large difference in what users are on the most.


## Question 2a: Content Creation and Interaction
### Question
*On which platform do users post the most frequently?*

### Code Snippet
```sql
-- SQL query 
select App, sum(Posts_Per_Day) as 'Post Frequency Per Day'
from social_media_analysis.social_media_usage
group by App
order by sum(Posts_Per_Day) desc
Limit 1;
```
### Data Visualization
<img src="DataVisualizations/Avg. Posts.png" width=500 height=300>

## Question 2b: Content Creation and Interaction
### Question
*What is the relationship between daily minutes spent and posts per day? Does higher engagement correlate with higher content creation?*

### Code Snippet
```sql
-- SQL query 
Select App, avg(Posts_Per_Day) as Posts, avg(Daily_Minutes_Spent) as Minutes_Spent
From social_media_analysis.social_media_usage
group by App
order by Posts desc, Minutes_Spent desc;
```

### Data Visualization
<img src="DataVisualizations/Posts vs DMS.png" width=300 height=300>

### Insight
We can see from the visual that users post the most on Instagram daily. There seems to be a weak positive correlation between DMS on an app and the amount of posts per day by users, on average. Looking at the chart, we can see that, in most cases, the more posts a user has the more they are on the app. This could help my marketing team by targeting people who post more frequently, as they will likely be on the app more to see my ads. 


## Question 3a: Interaction Patterns
### Question
*Which platform sees the highest average number of likes per day?*

### Code Snippet
```sql
-- SQL query 
Select App, avg(Likes_Per_Day) as avg_likes
from social_media_analysis.social_media_usage
group by App
order by avg_likes desc
limit 1;
```
### Data Visualization
<img src="DataVisualizations/Avg. Likes.png" width=500 height=300>

## Question 3b: Interaction Patterns
### Question
*Is there a correlation between posts per day and likes per day? Are users who post more frequently also more likely to have their content engaged with?*

### Code Snippet
```sql
-- SQL query 
Select App, avg(Posts_Per_Day) as avg_posts, avg(Likes_Per_Day) as avg_likes
from social_media_analysis.social_media_usage
group by App
order by avg_posts desc;
```

### Data Visualization
<img src="DataVisualizations/Posts vs Likes.png" width=300 height=300>

### Insight
Facebook and Instagram are nearly tied in the highest average likes per day. Which is consistent with where they stand in regards to other metrics we have already looked at. I would consider those two platforms as my top two choices of apps for putting ads out on. There is also a very weak positive correlation between posts and likes per day. In most cases, more posts = more likes, but not always. Which is a metric our team needs to take into consideration as it seems other users might get annoyed of too many posts by one account in a day that they start to skip over their content. I would compare this to the term "diminishing returns" where we get to a point that posting too much hurts our engagement rather than helping.


## Question 4a: User Growth Potential
### Question
*On which platform are users most likely to follow new accounts per day? This could indicate growth potential or user interest in connecting with new content.*

### Code Snippet
```sql
-- SQL query 
select App, avg(Follows_Per_Day) as avg_follows
from social_media_analysis.social_media_usage
group by App
order by avg_follows desc
```
### Data Visualization
<img src="DataVisualizations/Avg. Follows.png" width=500 height=300>

### Insight
To no surprise, Instagram is number one in users following new accounts per day. This is a huge metric for the marketing team to consider because one way to naturally advertise our products is by growing a big following where our posts pop up on their feed without any extra work. To do that, being on a platform where users are more likely to follow new accounts daily is a huge help in the process.


## Question 5a: Comparing Usage and Engagement
### Question
*Are there patterns in usage where specific platforms have high engagement but lower post or follow activity?*

### Code Snippet
```sql
-- SQL query 
Select App, avg(Daily_Minutes_Spent) as minutes_spent, avg(Posts_Per_Day) as posts, avg(Likes_Per_Day) as likes, avg(Follows_Per_Day) as follows
from social_media_analysis.social_media_usage
group by App
order by minutes_spent desc;
```

## Question 5b: Comparing Usage and Engagement
### Question
*Does a platform with higher minutes spent also result in higher interaction metrics (likes, follows), or are there differences?*

### Data Visualization
<img src="DataVisualizations/Dashboard 1 (1).png" width=700 height=500>

### Insight
For the most part, the pattern is that the more users are on the app the more they post, like, and follow other users. One outlier I did want to touch on was Facebook. Facebook ranks 4/7 in DMS, last in posts and follows, and 1st in likes. This is the only app where this is the case, but it makes sense. If you ever go on Facebook you will be scrolling and come across pages on your feed posting funny content or ads and you like it, but never go to follow it. Those pages usually use Facebook's unique ad program to be able to limit the number of posts they make, but reach more of an audience. Ad programs like that feed off of engagement, so the more likes a post gets the more it will be put out to other users. 
