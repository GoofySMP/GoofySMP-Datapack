#from ../ray

#debug particles
execute if score @s md.raySteps matches ..391 run particle dust{color:[1,0,1],scale:2} ~ ~ ~ 0.0 0.0 0.0 0 1 force @a[tag=md.dev]

#effects
execute if predicate md:50 run particle dust{color:[0.5,0.5,0.5],scale:1} ^0.25 ^ ^ 0 0 0 0 1 force @a[tag=!md.dev]
execute if predicate md:50 run particle dust{color:[0.5,0.5,0.5],scale:1} ^ ^0.25 ^ 0 0 0 0 1 force @a[tag=!md.dev]
execute if predicate md:50 run particle dust{color:[0.5,0.5,0.5],scale:1} ^ ^-0.25 ^ 0 0 0 0 1 force @a[tag=!md.dev]
execute if predicate md:50 run particle dust{color:[0.5,0.5,0.5],scale:1} ^-0.25 ^ ^ 0 0 0 0 1 force @a[tag=!md.dev]
execute if predicate md:02 run function md:effect/neiva/sound_ring/1


#computing the motion vector
function md:neiva/grab_mot/grab_motion

#check for blocks or guys
execute if score @s md.raySteps matches ..399 unless block ~ ~ ~ #md:ray_permeable run function md:neiva/ray/pre_end
execute if score @s md.raySteps matches ..399 unless block ~ ~ ~ #md:ray_permeable run tellraw @a[tag=md.dev] "Ray: Found Block"
execute if score @s md.raySteps matches ..399 positioned ~-.5 ~-.5 ~-.5 if score @s md.raySteps matches ..399 if entity @e[type=#md:ray_contact,tag=!md.shotSource,dx=1] run tellraw @a[tag=md.dev] {"text":"Ray: Found Entities","hoverEvent": {"action": "show_text","contents": {"selector": "@e[type=#md:ray_contact,dx=1]"}}}
execute if score @s md.raySteps matches ..399 positioned ~-.5 ~-.5 ~-.5 if score @s md.raySteps matches ..399 if entity @e[type=#md:ray_contact,tag=!md.shotSource,dx=1] run function md:neiva/ray/pre_end

#actually moves the ray
execute if score @s md.raySteps matches 1.. at @s run tp ^ ^ ^.25
scoreboard players remove @s md.raySteps 1

#if score0, end
execute if score @s md.raySteps matches ..0 at @s run function md:neiva/ray/end

#call func again, if steps remaining
execute if score @s md.raySteps matches 1.. at @s run function md:neiva/ray/step