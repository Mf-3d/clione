# 右クリックイベント
execute as @p[limit=1,scores={clione_right_click=1..},nbt={SelectedItem:{tag:{CustomModelData:1,mf7cli_item_id:1}}}] at @s run function mf7cli_clione:event/spawn_egg_rclick

execute as @e[tag=mf7cli_clione,type=armor_stand] at @s run function mf7cli_clione:mob/clione_main