/** 
4) User Growth Potential
		4a) On which platform are users most likely to follow new accounts per day? This could indicate growth potential or user interest in connecting with new content. 
**/

-- 4a
select App, avg(Follows_Per_Day) as avg_follows
from social_media_analysis.social_media_usage
group by App
order by avg_follows desc

/** in this dataset, there is not much difference from the platform that, on average, gains the most and least followers
	per day. With that being said, if you want to maximize getting followers I would be focusing on Instagram, Snapchat,
    and LinkedIn. **/