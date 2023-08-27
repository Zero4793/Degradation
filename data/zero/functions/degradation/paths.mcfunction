#Zero_4793

#path detect
execute as @a[scores={zero.walk=1..}] at @s if block ~ ~-1 ~ grass_block run scoreboard players add @s zero.grass 3
execute as @a[scores={zero.run=1..}] at @s if block ~ ~-1 ~ grass_block run scoreboard players add @s zero.grass 3
execute as @a[scores={zero.jump=1..}] at @s if block ~ ~-1 ~ grass_block run scoreboard players add @s zero.grass 200

execute as @a[scores={zero.walk=1..}] at @s if block ~ ~-1 ~ dirt run scoreboard players add @s zero.dirt 3
execute as @a[scores={zero.run=1..}] at @s if block ~ ~-1 ~ dirt run scoreboard players add @s zero.dirt 3
execute as @a[scores={zero.jump=1..}] at @s if block ~ ~-1 ~ dirt run scoreboard players add @s zero.dirt 200

execute as @a[scores={zero.walk=1..}] at @s if block ~ ~-1 ~ coarse_dirt run scoreboard players add @s zero.coarse 5
execute as @a[scores={zero.run=1..}] at @s if block ~ ~-1 ~ coarse_dirt run scoreboard players add @s zero.coarse 5
execute as @a[scores={zero.jump=1..}] at @s if block ~ ~-1 ~ coarse_dirt run scoreboard players add @s zero.coarse 200

execute as @a[scores={zero.walk=1..}] at @s if block ~ ~-1 ~ gravel run scoreboard players add @s zero.gravel 5
execute as @a[scores={zero.run=1..}] at @s if block ~ ~-1 ~ gravel run scoreboard players add @s zero.gravel 5
execute as @a[scores={zero.jump=1..}] at @s if block ~ ~-1 ~ gravel run scoreboard players add @s zero.gravel 200

execute as @a[scores={zero.walk=1..}] at @s if block ~ ~-1 ~ podzol run scoreboard players add @s zero.gravel 5
execute as @a[scores={zero.run=1..}] at @s if block ~ ~-1 ~ podzol run scoreboard players add @s zero.gravel 5
execute as @a[scores={zero.jump=1..}] at @s if block ~ ~-1 ~ podzol run scoreboard players add @s zero.gravel 200

execute as @a[scores={zero.walk=1..}] at @s if block ~ ~-1 ~ #leaves run scoreboard players add @s zero.leaves 5
execute as @a[scores={zero.run=1..}] at @s if block ~ ~-1 ~ #leaves run scoreboard players add @s zero.leaves 5
execute as @a[scores={zero.jump=1..}] at @s if block ~ ~-1 ~ #leaves run scoreboard players add @s zero.leaves 200

#path memory
scoreboard players remove @a[scores={zero.grass=1..}] zero.grass 1
scoreboard players remove @a[scores={zero.dirt=1..}] zero.dirt 1
scoreboard players remove @a[scores={zero.coarse=1..}] zero.coarse 1
scoreboard players remove @a[scores={zero.gravel=1..}] zero.gravel 1
scoreboard players remove @a[scores={zero.leaves=1..}] zero.leaves 1

#path value
execute if score zero.desirePaths server matches ..3 run scoreboard players set @a zero.gravel 0
execute if score zero.desirePaths server matches ..2 run scoreboard players set @a zero.coarse 0
execute if score zero.desirePaths server matches ..1 run scoreboard players set @a zero.dirt 0

#path update
execute as @a[scores={zero.grass=200..}] at @s run setblock ~ ~-1 ~ dirt
execute as @a[scores={zero.grass=200..}] at @s run fill ~ ~ ~ ~ ~ ~ air replace grass
execute as @a[scores={zero.grass=200..}] at @s run fill ~ ~ ~ ~ ~ ~ air replace tall_grass
execute as @a[scores={zero.dirt=200..}] at @s run setblock ~ ~-1 ~ coarse_dirt
execute as @a[scores={zero.coarse=500..}] at @s if block ~1 ~-1 ~1 water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~1 ~-1 ~ water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~1 ~-1 ~-1 water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~ ~-1 ~1 water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~ ~-1 ~-1 water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~-1 ~-1 ~1 water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~-1 ~-1 ~ water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~-1 ~-1 ~-1 water run setblock ~ ~-1 ~ podzol
execute as @a[scores={zero.coarse=500..}] at @s if block ~ ~-1 ~ coarse_dirt run setblock ~ ~-1 ~ gravel
execute as @a[scores={zero.gravel=2000..}] at @s if block ~ ~-1 ~ gravel run setblock ~ ~-1 ~ cobblestone
execute as @a[scores={zero.gravel=2000..}] at @s if block ~ ~-1 ~ podzol run setblock ~ ~-1 ~ clay

#path reset
execute as @a[scores={zero.grass=200..}] run scoreboard players set @s zero.grass 0
execute as @a[scores={zero.dirt=200..}] run scoreboard players set @s zero.dirt 0
execute as @a[scores={zero.coarse=500..}] run scoreboard players set @s zero.coarse 0
execute as @a[scores={zero.gravel=2000..}] run scoreboard players set @s zero.gravel 0

#stat reset
execute as @a[scores={zero.walk=1..}] run scoreboard players set @s zero.walk 0
execute as @a[scores={zero.run=1..}] run scoreboard players set @s zero.run 0
execute as @a[scores={zero.jump=1..}] run scoreboard players set @s zero.jump 0

#path speed
execute if score zero.desirePaths server matches 5 as @e at @s if block ~ ~-0.1 ~ gravel run effect give @s speed 1 0 true
execute if score zero.desirePaths server matches 5 as @e at @s if block ~ ~-0.1 ~ cobblestone run effect give @s speed 1 0 true
execute if score zero.desirePaths server matches 5 as @e at @s if block ~ ~ ~ dirt_path run effect give @s speed 1 0 true
