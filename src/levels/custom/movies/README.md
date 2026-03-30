## Box Office King

### Background Story
You are a data analyst at "Starlight Cinema". The Christmas season has just ended, and the theater manager wants to know which movies are making the most money. He comes to you with a pile of box office data, his eyes sparkling with desire for blockbuster hits, urgently needing you to use data to tell him the audience's true preferences!

### Data Description
We have a movie box office table `movie_box_office`, which records box office information for various movies:

- `movie_id`: Movie ID
- `movie_name`: Movie name
- `genre`: Movie genre (Action, Comedy, Sci-Fi, Romance, Animation, Thriller)
- `director`: Director
- `release_date`: Release date
- `ticket_price`: Average ticket price (USD)
- `audience_count`: Audience count
- `rating`: Rating (1-10)
- `duration`: Duration (minutes)
- `production_cost`: Production cost (USD in ten thousands)

### Task Requirements
The theater manager wants to understand the performance of different movie genres. Please write a SQL query:

1. Calculate the total box office revenue for each movie genre (average ticket price × audience count)
2. Count the number of movies for each genre
3. Calculate the average rating for each genre
4. Calculate the average audience count for each genre
5. Sort by total box office revenue in descending order

Return fields:
- Movie genre (genre)
- Total box office revenue (total_revenue)
- Movie count (movie_count)
- Average rating (avg_rating, 1 decimal place)
- Average audience count (avg_audience, rounded to integer)

### Example Result
```
Genre: Action, Total Revenue: 50000000 USD, Movies: 3, Avg Rating: 8.2
```

Let's see which genre the audience loves the most!
