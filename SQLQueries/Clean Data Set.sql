/** 1st we need to check for any null values**/

SELECT 
	SUM(CASE WHEN User_ID is NULL THEN 1 ELSE 0 END) AS user_ID_null_count,
    SUM(CASE WHEN App is NULL THEN 1 ELSE 0 END) as app_null_count,
    SUM(CASE WHEN Daily_Minutes_Spent is NULL THEN 1 ELSE 0 END) as daily_null_count,
    SUM(CASE WHEN Posts_Per_Day is NULL THEN 1 ELSE 0 END) as posts_null_count,
    SUM(CASE WHEN Likes_Per_Day is NULL THEN 1 ELSE 0 END) as likes_null_count,
    SUM(CASE WHEN Follows_Per_Day is NULL THEN 1 ELSE 0 END) as follows_null_count
From social_media_analysis.social_media_usage;

/** The Query returns 0 for all columns so we know that we have values for every column, and in this case we want 0 
	to be applied instead of NULL to help with visualization. Because it is not uncommon for a user to not post, get likes,
	or gain followers in a day**/
    

/** Next lets check the max and min values for each numeric column to make sure there isnt any outlying values **/

SELECT 
	MIN(Daily_Minutes_Spent) as daily_min, MAX(Daily_Minutes_Spent) as daily_max,
    MIN(Posts_Per_Day) as posts_min, MAX(Posts_Per_Day) as posts_max,
    MIN(Likes_Per_Day) as likes_min, MAX(Likes_Per_Day) as likes_max,
    MIN(Follows_Per_Day) as follow_min, MAX(Follows_Per_Day) as follow_max
FROM social_media_analysis.social_media_usage;

/** 500 minutes per day is concerning but is reasonable in the sense that it is within a 24 hour time period so it 
is appropriate to keep. All the other min and max values do not stand out as needing to be formatted or a huge outlier **/