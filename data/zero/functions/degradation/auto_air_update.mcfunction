#Zero_4793

#cave ins
execute as @e[type=#zero:heavy] at @s if block ~ ~-2 ~ air run setblock ~ ~-2 ~ command_block{Command:"air"}
execute as @e[type=#zero:heavy] at @s if block ~ ~-2 ~ command_block{Command:"air"} run setblock ~ ~-2 ~ air
execute as @e[type=#zero:heavy] at @s if block ~ ~-2 ~ cave_air run setblock ~ ~-2 ~ command_block{Command:"cave_air"}
execute as @e[type=#zero:heavy] at @s if block ~ ~-2 ~ command_block{Command:"cave_air"} run setblock ~ ~-2 ~ cave_air
execute as @e[type=#zero:heavy] at @s if block ~ ~-2 ~ air run setblock ~ ~-2 ~ command_block{Command:"void_air"}
execute as @e[type=#zero:heavy] at @s if block ~ ~-2 ~ command_block{Command:"void_air"} run setblock ~ ~-2 ~ air
