# これをいつも実行してるのもねぇ
data merge entity @s {DespawnDelay:0,Silent:true,HandItems:[{id:"minecraft:air",Count:1}]}

# これもねぇ、、
effect give @s minecraft:invisibility 1000000 0 true
effect give @s minecraft:instant_health 1000000 0 true

# 周りにclione_mainがなかったときはclione_core_stoppingを実行する
# execute at @s unless entity @e[type=armor_stand, tag=clione_stand] run function mf7cli_clione:mob/clione_core_stopping
# これは1ブロック以内にスタンドがいれば動かすということ
execute at @s if entity @e[type=armor_stand,tag=clione_stand,distance=..1] run data merge entity @s {NoAI:false}
# 一応近くにclione_mainがあればtpする
execute at @s as @e[type=armor_stand,tag=clione_stand,distance=..1] run tp @e[type=armor_stand,tag=clione_stand,distance=..1,limit=1,scores={clione_id}] @s
execute at @s as @s if score players clione_id = @e[type=armor_stand,tag=clione_stand,distance=..1,limit=1] clione_id run tp @s @e[type=armor_stand,tag=clione_stand,distance=..1,limit=1]