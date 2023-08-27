#Zero_4793

#leaves entities
execute as @e[type=!item,type=!player] at @s if block ~ ~-0.1 ~ #leaves run scoreboard players add @s zero.leaves 1
execute as @e[type=!player,scores={zero.leaves=10..}] at @s run setblock ~ ~-0.1 ~ air destroy
execute as @e[type=!player,scores={zero.leaves=10..}] run scoreboard players set @s zero.leaves 0

#leaves players
execute as @a[scores={zero.leaves=60..}] at @s run setblock ~ ~-1 ~ air destroy
execute as @a[scores={zero.leaves=60..}] run scoreboard players set @s zero.leaves 0
