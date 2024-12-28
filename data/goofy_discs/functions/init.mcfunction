# scoreboard business
scoreboard objectives add gf.disc.used minecraft.used:minecraft.music_disc_11
scoreboard objectives add gf.disc.expire minecraft.used:minecraft.music_disc_11

#> BEGIN THE CLOCKS
# Every Tick
function goofy_discs:tick

# init message
tellraw @a [{"text":"Original \"Infinite Music Discs\" Datapack by ","color":"yellow"},{"text":"link2_thepast","color":"yellow","italic": true}]
tellraw @a {"text":"Rewritten by Uthimentius","color":"dark_red"}
