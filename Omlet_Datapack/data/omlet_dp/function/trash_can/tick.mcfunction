# Check for any item frames that could be a trash can but are not yet
execute if entity @e[type=glow_item_frame, tag=!is_trashcan, predicate=omlet_dp:is_trashcan] as @e[type=glow_item_frame, tag=!is_trashcan, predicate=omlet_dp:is_trashcan] run function omlet_dp:trash_can/create_trashcan

# Check for any trash cans to clean up
execute as @e[type=glow_item_frame, tag=is_trashcan, predicate=!omlet_dp:is_trashcan] run function omlet_dp:trash_can/remove_trashcan

# Play a particle for all trashcans
#execute as @e[type=glow_item_frame, tag=is_trashcan] at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.3 0 1 normal
execute as @e[type=glow_item_frame, tag=is_trashcan] run function omlet_dp:trash_can/activate_trashcan