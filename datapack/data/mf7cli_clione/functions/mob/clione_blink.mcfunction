schedule clear mf7cli_clione:mob/clione_blink
execute as @e[tag=mf7cli_clione,type=minecraft:armor_stand] at @e[tag=mf7cli_clione,type=minecraft:armor_stand] if predicate mf7cli_clione:clione_random run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2}}]}
execute as @e[tag=mf7cli_clione,type=minecraft:armor_stand] at @e[tag=mf7cli_clione,type=minecraft:armor_stand] unless predicate mf7cli_clione:clione_random run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]}
schedule function mf7cli_clione:mob/clione_blink 2s