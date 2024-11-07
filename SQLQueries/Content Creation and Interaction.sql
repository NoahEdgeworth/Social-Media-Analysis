/** 
2) Content Creation and Interaction
		2a) On which platform do users post the most frequently?
		2b) What is the relationship between daily minutes spent and posts per day? Does higher engagement correlate with higher content creation?
**/

-- 2a
select App, sum(Posts_Per_Day) as 'Post Frequency Per Day'
from social_media_analysis.social_media_usage
group by App
order by sum(Posts_Per_Day) desc
Limit 1;

-- 2b
Select App, avg(Posts_Per_Day) as Posts, avg(Daily_Minutes_Spent) as Minutes_Spent
From social_media_analysis.social_media_usage
group by App
order by Posts desc, Minutes_Spent desc;

/** Will create a chart to show the correlation as well, but there does seem to be a weak positive correlation between
	average amount of posts a user does per day and how many minutes they spend on the app. **/