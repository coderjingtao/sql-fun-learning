## The Wave Chicken

On a mysterious island, there is a legendary Wave Chicken with a tall and mighty body, its feathers shimmering with mystical light. The islanders believe the Wave Chicken is the incarnation of the Ocean God, capable of controlling the waves and bringing either calm or stormy seas. To verify this legend, the islanders decided to observe and record the Wave Chicken's activities.

There is a table named `chicken_observation` that records the islanders' observations of the Wave Chicken. The table fields are as follows:

- `observation_id`: Observation record ID, uniquely identifies each observation record
- `observer_name`: Observer name
- `observation_date`: Observation date
- `observation_location`: Observation location
- `wave_intensity`: Observed wave intensity, represented by an integer; the higher the value, the more violent the waves

Please write a SQL query to find observation records where the location contains "Wave Chicken" and the wave intensity exceeds 5. Output each observer's name (`observer_name`), observation date (`observation_date`), and the observed wave intensity (`wave_intensity`).
