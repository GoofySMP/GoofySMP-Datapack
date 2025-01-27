# from ../step
tellraw @a[tag=md.dev] "Ray: Ended before full 400 steps"
execute if score @s md.raySteps matches 344.. run scoreboard players set #noTP md.rayOutput 1
execute if score @s md.raySteps matches 344.. run tellraw @a[tag=md.dev] "Ray: Ended before 56 steps"
scoreboard players set @s md.raySteps 0