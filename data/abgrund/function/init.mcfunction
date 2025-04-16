
# SCOREBOARDS
#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set Abgrund uthipacks.installed 1
# judgement Enchant
scoreboard objectives add abg.health health
scoreboard objectives add abg.killed_condemned dummy
scoreboard objectives add abg.feed_cool dummy
# misc
scoreboard objectives add abg.deaths deathCount

# Limbo
#forceload spawn chunk
execute store success storage abgrund:temp forceloaded_chunk byte 1 in abgrund:limbo run forceload query 0 0
execute unless data storage abgrund:temp {forceloaded_chunk:1b} in abgrund:limbo run function uthi:utils/forceload {X:0,Z:0}
data remove storage abgrund:temp forceloaded_chunk

execute unless data storage abgrund:perma_storage limbo_spawn run function abgrund:mechanics/limbo_spawn/find
#spawnpoint clearer my beloved
execute in abgrund:limbo_biome_map run setblock 0 0 0 bedrock


#worldgen things
function uthi:scoreboard_presets/worldgen/mob_caps
scoreboard objectives add abg.mob_caps dummy
scoreboard players set $rabbit_max abg.mob_caps 30
scoreboard players set %limbo_creature abg.mob_caps 0
scoreboard players set %jardin_creature abg.mob_caps 0
scoreboard players set %rabbit abg.mob_caps 0

# START THE CLOCKS
schedule function abgrund:clocks/main 1t replace
schedule function abgrund:clocks/7s 1t replace