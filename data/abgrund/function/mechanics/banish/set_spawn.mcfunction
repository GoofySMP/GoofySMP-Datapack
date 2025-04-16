# @s = marker
data merge entity @s {Tags:["abg.this"]}

$function uthi:msg/debug {msg: '"Attempting to set player spawn within 5 blocks of ($(X), $(Z))"'}
$execute store success storage abgrund:perma_storage spawn_safe byte 1 in abgrund:limbo run \
    spreadplayers $(X) $(Z) 1 5 false @s
execute store result storage abgrund:temp test_spawn.X int 1 run data get entity @s Pos[0]
execute store result storage abgrund:temp test_spawn.Z int 1 run data get entity @s Pos[2]

execute if data storage abgrund:perma_storage {spawn_safe:1b} run forceload add ~ ~
$execute if data storage abgrund:perma_storage {spawn_safe:1b} at @s run \
    spawnpoint @a[nbt={UUID:$(UUID)}] ~ ~ ~

execute unless data storage abgrund:perma_storage {spawn_safe:1b} run function abgrund:mechanics/banish/set_spawn_failsafe with storage abgrund:temp banish
#data remove storage abgrund:temp banish
kill @s