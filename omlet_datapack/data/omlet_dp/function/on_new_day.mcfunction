#tellraw @a {"text":"A new in-game day has begun!","color":"blue","bold":true}


# Set curr_day.mod_freq to curr day to prepare for the modulus operation that determines if a broadcast should occur.
scoreboard players operation #omlet_dp omlet_dp.curr_day.mod_freq = #omlet_dp omlet_dp.curr_day
# Determine if the day count message should be broadcast based on the configured frequency. This checks if the current day count is a multiple of the configured frequency.
scoreboard players operation #omlet_dp omlet_dp.curr_day.mod_freq %= #omlet_dp omlet_dp.config.day_msg_frequency

execute if score #omlet_dp omlet_dp.curr_day.mod_freq matches 0 run function omlet_dp:broadcast_day_count

# Update prev_day to the value of curr_day to prepare for the next day change detection.
scoreboard players operation #omlet_dp omlet_dp.prev_day = #omlet_dp omlet_dp.curr_day
