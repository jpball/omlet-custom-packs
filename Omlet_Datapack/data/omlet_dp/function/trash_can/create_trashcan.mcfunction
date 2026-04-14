# create_trashcan.mcfunction
# Adds the necessary logic for a structure to be a trashcan
execute as @e[type=glow_item_frame,tag=!is_trashcan, predicate=omlet_dp:is_trashcan] run tag @s add is_trashcan
tellraw @p {"text": "Trash can created!", "type": "text", "color": "red", "bold": true}