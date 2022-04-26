# 意味が分からん人はあまり触らないほうがいい
# スニークの時間
scoreboard objectives add clione_sneak minecraft.custom:minecraft.sneak_time

# 右クリックした回数
scoreboard objectives add clione_right_click minecraft.used:carrot_on_a_stick

# 歩く速さ
scoreboard objectives add clione_speed dummy
scoreboard objectives add clione_move_power dummy

# 薮氏のカスタムクラフター用
data modify storage yv:custom_crafter Import append value {Pattern:[{Count:1b,Slot:1b,id:"minecraft:ice"},{Count:1b,Slot:2b,id:"minecraft:ice"},{Count:1b,Slot:10b,id:"minecraft:ice"},{Count:1b,Slot:11b,id:"minecraft:ice"}],Result:{Count:1b,Slot:15b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1,mf7cli_item_id:1,Damage:0}}}

# 定期実行用
# function mf7cli_clione:event/interval