data merge entity @s {DespawnDelay:0,Silent:true,HandItems:[{id:"minecraft:air",Count:1}]}

effect give @s minecraft:invisibility 1000000 0 true
effect give @s minecraft:instant_health 1000000 0 true

execute at @s unless entity @e[type=armor_stand,tag=clione_stand,distance=..1] run function mf7cli_clione:mob/clione_core_stoping
execute at @s if entity @e[type=armor_stand,tag=clione_stand,distance=..1] run data merge entity @s {NoAI:false}
execute at @s as @e[type=armor_stand,tag=clione_stand,distance=..1] run tp @e[type=armor_stand,tag=clione_stand,distance=..1,limit=1] @e[type=wandering_trader, tag=clione_core,distance=..1,limit=1]