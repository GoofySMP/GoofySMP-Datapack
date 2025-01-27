#get coord set 1
execute if score @s md.raySteps matches 400 run function md:neiva/grab_mot/set1

#get coord set 2
execute if score @s md.raySteps matches 399 run function md:neiva/grab_mot/set2

#computing the motion vector
execute if score @s md.raySteps matches 399 run function md:neiva/grab_mot/calc