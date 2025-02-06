# from ../step
tellraw @a[tag=gf.dev] "Ray: Ended before full 400 steps"
$execute if score #0 md.numbers matches $(end) run tellraw @a[tag=gf.dev] "Ray: Found Block"
$execute if score #1 md.numbers matches $(end) run tellraw @a[tag=gf.dev] {"text":"Ray: Found Entities","hoverEvent": {"action": "show_text","contents": {"selector": "@e[type=#md:ray_contact,dx=1]"}}}
execute if score @s md.raySteps matches 344.. run scoreboard players set #noTP md.rayOutput 1
execute if score @s md.raySteps matches 344.. run tellraw @a[tag=gf.dev] "Ray: Ended before 56 steps"
scoreboard players set @s md.raySteps 0