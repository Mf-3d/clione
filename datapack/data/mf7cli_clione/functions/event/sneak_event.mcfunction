tell @a Clioneを一体キルしようとしています。
execute as @e[distance=..3, type=armor_stand, tag=clione_stand, limit=1] run tell @a Clioneを一体キルしました。
execute as @e[distance=..3, type=armor_stand, tag=clione_stand, limit=1] at @s run data merge entity @s {Motion:[0.0,0.5,0.0]}
execute as @e[distance=..3, type=armor_stand, tag=clione_stand, limit=1] at @s run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 2
execute as @e[distance=..3, type=armor_stand, tag=clione_stand, limit=1] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:1,mf7cli_item_id:1, display:{Name:'{"text":"Clione spawn egg","color":"aqua","italic":false}'}}, Count:1b}}
execute at @e[distance=..3, type=armor_stand, tag=clione_stand, limit=1] at @s run kill @e[distance=..3, type=armor_stand, tag=clione_stand, limit=1] 
execute at @e[distance=..3, type=wandering_trader, tag=clione_core, limit=1] at @s run kill @e[distance=..3, type=wandering_trader, tag=clione_core, limit=1] 
scoreboard players set @a[scores={clione_sneak=1..}] clione_sneak 0