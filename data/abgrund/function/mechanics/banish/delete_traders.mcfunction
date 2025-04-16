#effects
$$(hash_effects)function abgrund:effect/aishiteitanoni/start {animation:'$(animation)'}
$$(hash_effects)execute on attacker run function abgrund:effect/aishiteitanoni/omen

#storage
data merge storage abgrund:perma_storage {wandering_trader_banished:true}

#actually deleting them
gamerule doTraderSpawning false
execute as @e[type=wandering_trader] run ride @s dismount
execute as @e[type=wandering_trader] at @s run tp @s ~ ~-10000 ~
kill @s