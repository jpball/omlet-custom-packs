# Macro Arguments
# $(new_freq) - THe number of days between each broadcast message. For example, if set to 3, a message will be broadcast every 3 in-game days (every 72000 ticks).

# Set the frequency of day count broadcast messages. This updates the value used in the on_day_tick function to determine when to broadcast the day count message.
$scoreboard players set #omlet_dp omlet_dp.msg_frequency.day $(new_freq)