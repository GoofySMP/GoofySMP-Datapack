#> SCOREBOARDS
#combat tag
scoreboard objectives add gf.ct dummy
scoreboard objectives add gf.ct_display dummy

#withering blade
scoreboard objectives add gf.combo dummy
#NTS: ref is for refresh. used for tracking how long someone goes w/out adding to their combo
scoreboard objectives add gf.combo_ref dummy

#enderblade
scoreboard objectives add gf.ray_steps dummy

#> default configs
scoreboard objectives add gf.config dummy
function .cmd:z_change_value/defaults

#> timers
function goofy_items:clocks/10t
function goofy_items:tick

#> init message
tellraw @a "- - - - - - - - - - - - -"
tellraw @a [{"text":"Successfully loaded the ","color":"gray"},{"text":"Goofy SMP","color":"gold","bold": true},{"text":" datapack!","color":"gray"}]
tellraw @a {"text":"Created by Uthimentius (you're welcome)","color":"red"}
tellraw @a "- - - - - - - - - - - - -"