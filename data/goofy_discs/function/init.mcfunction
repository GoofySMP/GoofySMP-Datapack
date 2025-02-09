#> BEGIN THE CLOCKS
#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set GoofyDiscs uthipacks.installed 1

# Every Tick
function goofy_discs:tick

# init message
tellraw @a [{"text":"Original \"Infinite Music Discs\" Datapack by ","color":"yellow"},{"text":"link2_thepast","color":"yellow","italic": true}]
tellraw @a {"text":"Rewritten by Uthimentius","color":"dark_red"}
