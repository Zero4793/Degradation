#Zero_4793

execute if score zero.datapackLoad server matches 1 run scoreboard players add zero.datapackCount server 1
execute if score zero.datapackLoad server matches 1 run tellraw @a [{"color":"aqua","text":"  "},{"text":"Degradation ","hoverEvent":{"action":"show_text","contents":{"text":"Desire paths, Decaying leaves, falling sand, and block weathering.","color":"blue"}},"color":"aqua","bold":true},{"text":"v"},{"score":{"name":"zero.degradation-a","objective":"version"}},{"text":"."},{"score":{"name":"zero.degradation-b","objective":"version"}},{"color":"light_purple","text":" by Zero_4793","hoverEvent":{"action":"show_text","contents":{"text":"Open PlanetMinecraft page for Zero_4793","color":"green"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/zero_4793/"}}]

function zero:degradation/leaves
function zero:degradation/paths
execute if score zero.tick server matches 0 run function zero:degradation/weathering
execute if score zero.tick server matches 0 run function zero:degradation/auto_air_update
#executing on all entities to update blocks constantly adds 2 ms ticks
