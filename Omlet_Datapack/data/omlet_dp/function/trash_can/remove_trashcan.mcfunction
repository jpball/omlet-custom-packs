# remove_trashcan.mcfunction
# Removes all logic setup for a trashcan entity to be a trashcan
execute as @e[type=glow_item_frame,tag=is_trashcan, predicate=!omlet_dp:is_trashcan] run tag @s remove is_trashcan
