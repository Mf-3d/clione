# まぁまずはアイテムが必要であろう
execute at @s run loot spawn ~ ~ ~ loot mf7cli_clione:items/clione_spawn_egg

# すぐ拾いてえよ
data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
recipe take @s mf7cli_clione:clione_spawn_egg

# なんだこのチェストは！消えてもらおう
clear @s chest 1

# 進捗消去
advancement revoke @s only mf7cli_clione:craft/clione_spawn_egg