scoreboard players add #clione.Setting mf7cli.doBlink 1
execute if score #clione.Setting mf7cli.doBlink matches 2 run scoreboard players set #clione.Setting mf7cli.doBlink 0

execute if score #clione.Setting mf7cli.doBlink matches 0 run scoreboard players set #clione.Setting mf7cli.doBlink 1
execute if score #clione.Setting mf7cli.doBlink matches 1 run scoreboard players set #clione.Setting mf7cli.doBlink 0

execute if score #clione.Setting mf7cli.doBlink matches 0 run tell @s クリオネのまばたき表示をオフにしました　再読み込み後適用されます
execute if score #clione.Setting mf7cli.doBlink matches 1 run tell @s クリオネのまばたき表示をオンにしました　再読み込み後適用されます