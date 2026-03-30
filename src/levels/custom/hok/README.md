## Honor of Kings Analytics

### Background Story
You are a data analyst at "Penguin Game Company". The mobile game "Honor of Kings" has taken the world by storm, generating massive amounts of game data every day. The operations director wants to understand player gaming habits and payment behavior, hoping you can find the secret to improving game experience and revenue from the data!

### Data Description
We have a game matches table `game_matches`, which records summoners' match information:

- `match_id`: Match ID
- `player_id`: Player ID
- `player_name`: Player nickname
- `hero_name`: Hero used
- `hero_role`: Hero role (Warrior, Mage, Marksman, Support, Tank, Assassin)
- `game_result`: Game result (Win/Loss)
- `kills`: Number of kills
- `deaths`: Number of deaths
- `assists`: Number of assists
- `game_duration`: Game duration (minutes)
- `match_date`: Match date

### Task Requirements
The operations team wants to understand hero performance. Please write a SQL query:

1. Calculate the win rate for each hero role (win count / total count * 100)
2. Calculate the average KDA for each hero role ((kills + assists) / deaths)
3. Count the total matches for each hero role
4. Only show hero roles with 5 or more matches
5. Sort by win rate in descending order
6. Return fields: hero role (hero_role), win rate (win_rate, 1 decimal place, with % symbol), average KDA (avg_kda, 2 decimal places), total matches (total_matches)

### Hints
- Use CASE WHEN to count win records
- Use HAVING to filter aggregated results
- Use string concatenation function || to add % symbol
- Handle division by zero cases

Let's see which hero role is the most dominant!
