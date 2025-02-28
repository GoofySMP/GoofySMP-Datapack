tellraw @a[tag=uthi.dev] ["Removed technical attributes from [",{"selector": "@a[tag=gf.tech_attribute]"},"]"]
execute as @a[tag=gf.tech_attribute] run attribute @s explosion_knockback_resistance modifier remove goofy_items:technical.enderblade_corrupted_explosion
tag @a[tag=gf.tech_attribute] remove gf.tech_attribute