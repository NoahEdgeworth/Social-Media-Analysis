/** 
5) Comparing Usage and Engagement
	5a) Are there patterns in usage where specific platforms have high engagement but lower post or follow activity?
	5b) Does a platform with higher minutes spent also result in higher interaction metrics (likes, follows), or are there differences?    
**/

-- 5a
Select App, avg(Daily_Minutes_Spent) as minutes_spent, avg(Posts_Per_Day) as posts, avg(Likes_Per_Day) as likes, avg(Follows_Per_Day) as follows
from social_media_analysis.social_media_usage
group by App
order by minutes_spent desc

-- We will answer these questions with a few charts
