# activate_trashcan
# Performs the operations of a trashcan for each tick
execute as @s at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.3 0 1 normal

# Delete the next stack of items
execute at @s run data merge block ~ ~-1 ~ {Items:[]}