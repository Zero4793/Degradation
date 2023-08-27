#Zero_4793

#gamerule

#version
scoreboard players set zero.degradation-a version 1
scoreboard players set zero.degradation-b version 5

#scoreboards
scoreboard objectives add zero.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add zero.run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add zero.jump minecraft.custom:minecraft.jump
scoreboard objectives add zero.grass dummy
scoreboard objectives add zero.dirt dummy
scoreboard objectives add zero.coarse dummy
scoreboard objectives add zero.gravel dummy
scoreboard objectives add zero.leaves dummy

#variable init
scoreboard players set zero.desirePaths server 5
