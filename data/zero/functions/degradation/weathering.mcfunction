#Zero_4793

execute at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[weather]}
execute as @e[type=area_effect_cloud,tag=weather] at @s run spreadplayers ~ ~ 16 64 false @s
execute as @e[type=area_effect_cloud,tag=weather] at @s positioned ~ ~-1 ~ run function zero:degradation/weather
