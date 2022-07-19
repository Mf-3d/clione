summon minecraft:armor_stand ^ ^ ^ {Tags:[clione_stand]}
summon minecraft:wandering_trader ^ ^ ^ {Tags:[clione_core]}

# 紐付け ---------------------------------------------------------------------------------------------
# Area Effect Cloudを召喚
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}

# 召喚したAECのUUIDを取得
execute store result score @e[type=armor_stand, tag=clione_stand, limit=1] clione_id run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]
execute store result score @e[type=armor_stand, tag=clione_core, limit=1] clione_id run data get entity @e[type=armor_stand, tag=clione_stand, limit=1] clione_id

# 1tick内に同じ人が複数回乱数生成をするとき (3コマンド→4コマンド)
# kill @e[tag=RNG,distance=..0.01,limit=1]

# 取得したUUIDを100で割った時の余りを取得
# scoreboard players operation @s rng %= #100 rng
# ----------------------------------------------------------------------------------------------------

scoreboard players set @a[scores={clione_right_click=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}}] clione_right_click 0
item replace entity @e[type=armor_stand, tag=clione_stand] armor.head with minecraft:stick{CustomModelData:1}
data merge entity @e[type=armor_stand, tag=clione_stand, limit=1] {Invisible:1b,NoGravity:false,Small:true,DisabledSlots:4144896,Marker:false,Invulnerable:1}