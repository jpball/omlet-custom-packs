# Initialize the prev_day and curr_day to the current in-game day count to ensure accurate tracking from the moment the datapack is loaded.
execute store result score #omlet_dp omlet_dp.curr_day run time query day

# A new day triggers when the prev_day and curr_day scores differ 
execute if score #omlet_dp omlet_dp.prev_day < #omlet_dp omlet_dp.curr_day run function omlet_dp:on_new_day