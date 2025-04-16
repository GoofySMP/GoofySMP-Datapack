advancement revoke @s only abgrund:tech/any_damage

execute if entity @s[tag=abg.banished] if score @s abg.deaths matches 1.. run function abgrund:mechanics/banish/init