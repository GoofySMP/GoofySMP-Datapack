execute on attacker run advancement grant @s only abgrund:judgement
execute on attacker run scoreboard players add @s abg.killed_condemned 1
execute on attacker if score @s abg.killed_condemned matches 200.. run advancement grant @s only abgrund:judge_jury_executioner
#heaven
execute if entity @s[tag=abg.heaven] run loot spawn ~ ~ ~ loot abgrund:entities/condemned/heaven
#hell
execute if entity @s[tag=abg.hell] run loot spawn ~ ~ ~ loot abgrund:entities/condemned/hell
#other
execute unless entity @s[tag=abg.hell] unless entity @s[tag=abg.heaven] run loot spawn ~ ~ ~ loot abgrund:entities/condemned/other

function abgrund:effect/aishiteitanoni/start {animation:'spawn_short'}