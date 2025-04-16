execute if entity @s[tag=abg.condemned] unless data entity @s {Health:0.0f} run function abgrund:effect/judgement/hit

#the part where he kills you
execute if entity @s[tag=abg.condemned] if data entity @s {Health:0.0f} run function abgrund:judgement/drop_check
execute unless entity @s[tag=abg.banished] if entity @s[type=#abgrund:banishable] if data entity @s {Health:0.0f} unless predicate abgrund:dimension/limbo run function abgrund:mechanics/banish/checks {hash_effects:''}