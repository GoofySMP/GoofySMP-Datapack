execute positioned ^ ^ ^ run function md:effect/neiva/sound_ring/2
execute positioned ^ ^ ^-.5 run function md:effect/neiva/sound_ring/_75
particle explosion ^ ^ ^ 0 0 0 0 1 force @a[tag=!md.dev]
particle sonic_boom ^ ^ ^.5 0 0 0 0 1 force @a[tag=!md.dev]
playsound block.respawn_anchor.deplete player @a[tag=!md.dev] ~ ~ ~ 2 2
playsound entity.warden.sonic_boom player @a[tag=!md.dev] ~ ~ ~ 2 1
playsound entity.generic.explode player @a[tag=!md.dev] ~ ~ ~ 2 1
playsound block.anvil.place player @a[tag=!md.dev] ~ ~ ~ 2 1.5