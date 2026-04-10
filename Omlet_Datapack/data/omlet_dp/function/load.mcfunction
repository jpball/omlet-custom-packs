scoreboard objectives add omlet_dp.prev_day dummy
scoreboard objectives add omlet_dp.curr_day dummy
scoreboard objectives add omlet_dp.curr_day.mod_freq dummy

scoreboard objectives add omlet_dp.config.day_msg_frequency dummy
scoreboard players set #omlet_dp omlet_dp.config.day_msg_frequency 5

# Initialize the prev_day and curr_day to the current in-game day count to ensure accurate tracking from the moment the datapack is loaded.
execute store result score #omlet_dp omlet_dp.prev_day run time query day
execute store result score #omlet_dp omlet_dp.curr_day run time query day

# Calculate the modulo of the current day count with the message frequency to determine when to broadcast the day count message.
scoreboard players operation #omlet_dp omlet_dp.curr_day.mod_freq %= #omlet_dp omlet_dp.config.day_msg_frequency


tellraw @a {"text":"Omlet Datapack loaded successfully!","color":"green","bold":true}