execute as @s at @s unless entity @e[type=minecraft:pig,tag=mf7cli_clione,distance=0..1] run kill @s

execute as @s at @s if predicate mf7cli_clione:clione_random run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2}}]}
execute as @s at @s unless predicate mf7cli_clione:clione_random run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]}

execute as @e[tag=mf7cli_clione,type=minecraft:pig] at @s store result entity @e[tag=mf7cli_clione,type=minecraft:armor_stand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]