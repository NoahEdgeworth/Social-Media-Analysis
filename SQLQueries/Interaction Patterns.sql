/** 
3) Interaction Patterns
		3a) Which platform sees the highest average number of likes per day?
		3b) Is there a correlation between posts per day and likes per day? Are users who post more frequently also more likely to have their content engaged with?    
**/

-- 3a
Select App, avg(Likes_Per_Day) as avg_likes
from social_media_analysis.social_media_usage
group by App
order by avg_likes desc
limit 1;

-- 3b
Select App, avg(Posts_Per_Day) as avg_posts, avg(Likes_Per_Day) as avg_likes
from social_media_analysis.social_media_usage
group by App
order by avg_posts desc;

/** Will also show a chart that represents the correlation between these two, but this one is a little more spread out.
	More posts per day does not neccessarily mean more likes. We can see that twitter is second in average posts per day,
    but last in average likes per day. **/
