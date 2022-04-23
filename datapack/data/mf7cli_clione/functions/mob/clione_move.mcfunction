# イベント
# 乱数を生成
execute as @s run function mf7cli_common:random

# 移動イベント (直線移動)
# execute as @e[type=armor_stand, tag=clione_stand, limit=1] if score number RNG_77 matches <number> run <command>
execute as @s if score number RNG_77 matches 0 run data merge entity @s {Motion:[0.5,0.5,0.0]}
execute at @s if score number RNG_77 matches 0 run tp @s ~ ~ ~ -90 ~
execute as @s if score number RNG_77 matches 2 run data merge entity @s {Motion:[0.0,0.5,0.5]}
execute at @s if score number RNG_77 matches 2 run tp @s ~ ~ ~ 0 ~
execute as @s if score number RNG_77 matches 3 run data merge entity @s {Motion:[-0.5,0.5,0.0]}
execute at @s if score number RNG_77 matches 3 run tp @s ~ ~ ~ 90 ~
execute as @s if score number RNG_77 matches 4 run data merge entity @s {Motion:[0.0,0.5,0.5]}
execute at @s if score number RNG_77 matches 4 run tp @s ~ ~ ~ 0 ~
execute as @s if score number RNG_77 matches 5 run data merge entity @s {Motion:[0.0,0.5,-0.5]}
execute at @s if score number RNG_77 matches 5 run tp @s ~ ~ ~ 180 ~

# 移動イベント (ジャンプ)
execute as @s if score number RNG_77 matches 1 run data merge entity @s {Motion:[0.0,0.25,0.0]}
execute as @e[type=armor_stand, tag=clione_stand, limit=1] if score number RNG_77 matches 6 run data merge entity @s {Motion:[0.0,0.5,0.0]}

# 移動イベント (回転)
execute at @s if score number RNG_77 matches 7 run tp @s ~ ~ ~ 180 ~
execute at @s if score number RNG_77 matches 8 run tp @s ~ ~ ~ 0 ~
execute at @s if score number RNG_77 matches 9 run tp @s ~ ~ ~ 90 ~
execute at @s if score number RNG_77 matches 10 run tp @s ~ ~ ~ -90 ~
execute at @s if score number RNG_77 matches 11 run tp @s ~ ~ ~ -45 ~
execute at @s if score number RNG_77 matches 12 run tp @s ~ ~ ~ 45 ~

# ランダム移動定期実行用
schedule function mf7cli_clione:mob/clione_move 100t