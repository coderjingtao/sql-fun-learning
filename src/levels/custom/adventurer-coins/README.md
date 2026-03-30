## Adventurers and Coins

Imagine an adventurer guild that has a table named `rewards` to record the gold coins earned by each adventurer in various tasks.

The table fields are as follows:

- `adventurer_id`: Adventurer ID, uniquely identifies each adventurer.
- `adventurer_name`: Adventurer name.
- `task_id`: Task ID, uniquely identifies each task.
- `task_name`: Task name.
- `reward_coins`: The number of gold coins the adventurer earned in that task.

Please write a SQL query to output each adventurer's id (`adventurer_id`), name (`adventurer_name`), and total gold coins earned (`total_reward_coins`), sorted by total gold coins from high to low, listing only the top 3 adventurers with the highest total rewards.
