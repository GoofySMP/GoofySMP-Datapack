#tp to limbo
particle minecraft:dust{color:1,scale:2} ~ ~1 ~ 1 1 1 1 500
$function uthi:msg/debug {msg: '"Attempting to teleport player within 5 blocks of ($(X), $(Z))"'}
$execute in abgrund:limbo store success storage abgrund:temp spawn_success byte 1 run spreadplayers $(X) $(Z) 0 5 false @s

#fallback
execute unless data storage abgrund:temp {spawn_success:1b} run function uthi:msg/error {msg: '"Unable to find safe teleport point!"'}
$execute unless data storage abgrund:temp {spawn_success:1b} run execute in abgrund:limbo run tp @s $(X) 576 $(Z)
execute unless data storage abgrund:temp {spawn_success:1b} run effect give @s slow_falling 60

data remove storage abgrund:temp spawn_success
execute at @s run particle minecraft:dust{color:1,scale:2} ~ ~1 ~ 1 1 1 1 500