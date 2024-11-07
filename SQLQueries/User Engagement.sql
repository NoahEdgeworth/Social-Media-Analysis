/**
1) User Engagement
		1a) Which social media app has the highest average daily engagement in terms of minutes spent?
		1b) How does user engagement (daily minutes spent) vary by app, and is there a significant difference in usage time across platforms?
**/
--  1a
select App, avg(Daily_Minutes_Spent) as 'Daily Engagement'
from social_media_analysis.social_media_usage
group by App
order by avg(Daily_Minutes_Spent) desc
Limit 1;

-- 1b
/** I will include a data visulation to help answer this question but in short, no there is not a huge difference in
	usage across platforms. From the most used to least used it is about 30 minute difference. So I would say that this
    insight shouldnt be youre number 1 driving factor when choosing what app to use for marketing and advertising.**/