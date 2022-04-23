# Clioneのメインイベント
execute as @e[type=armor_stand, tag=clione_stand] at @s run function mf7cli_clione:mob/clione_main
execute as @e[type=wandering_trader, tag=clione_core] at @s run function mf7cli_clione:mob/clione_core_main

# スニークイベント
execute as @a[scores={clione_sneak=50..}] at @s run function mf7cli_clione:event/sneak_event

# 右クリックイベント
execute as @p[limit=1,scores={clione_right_click=1..},nbt={SelectedItem:{tag:{CustomModelData:1,mf7cli_item_id:1}}}] at @s run function mf7cli_clione:event/spawn_egg_rclick