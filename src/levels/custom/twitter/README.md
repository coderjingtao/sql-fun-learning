## Twitter Secrets

### Background Story
You are a data analyst for Twitter. During the Christmas season, user activity skyrocketed, and the product manager wants to understand user social behavior patterns. She hopes you can mine user interaction patterns from massive social data to provide data support for product optimization!

### Data Description
We have a Twitter data table `twitter_posts`, which records user-posted content information:

- `post_id`: Tweet ID
- `user_id`: User ID
- `username`: Username
- `content_type`: Content type (Original, Retweet, Comment)
- `topic_category`: Topic category (Technology, Entertainment, Sports, News, Lifestyle, Education)
- `publish_time`: Publish time
- `likes_count`: Number of likes
- `comments_count`: Number of comments
- `reposts_count`: Number of retweets
- `followers_count`: Poster's follower count
- `has_image`: Whether it contains an image (1/0)
- `has_video`: Whether it contains a video (1/0)

### Task Requirements
The product manager wants to understand content propagation effectiveness. Please write a SQL query:

1. Calculate the total interactions for each topic category (likes + comments + retweets)
2. Calculate the average interaction rate for each topic category (total interactions / total followers * 1000)
3. Calculate the proportion of content containing images for each topic category
4. Calculate the proportion of content containing videos for each topic category
5. Calculate the average likes for each topic category
6. Only show topic categories with 3 or more posts
7. Sort by total interactions in descending order

Return fields:
- Topic category (topic_category)
- Total interactions (total_interactions)
- Average interaction rate (avg_interaction_rate, 3 decimal places)
- Image ratio (image_ratio, 1 decimal place, with % symbol)
- Video ratio (video_ratio, 1 decimal place, with % symbol)
- Average likes (avg_likes, rounded to integer)
- Post count (post_count)

### Hints
- Use SUM and AVG functions for aggregation calculations
- Use CASE WHEN to calculate ratios
- Use HAVING to filter grouped results
- Pay attention to data type conversion

Let's see which topic category is most popular among users!
