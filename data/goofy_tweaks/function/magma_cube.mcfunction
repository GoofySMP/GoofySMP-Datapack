advancement revoke @s only goofy_tweaks:tech/die_magma_cube
stopsound @a[distance=..64] record goofy_smp:meme.thick_of_it
playsound goofy_smp:meme.thick_of_it record @a[distance=..64] ~ ~ ~ 5 1

tellraw @a[distance=..64] ["",{"selector": "@s"},{"text": " went through the thick of it o3"}]
tellraw @a[distance=..64] {"text":" F3 + T to stop all sounds","color": "gray"}