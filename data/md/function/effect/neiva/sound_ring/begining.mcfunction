execute positioned ^ ^ ^1 run function md:effect/neiva/sound_ring/1
execute positioned ^ ^ ^2 run function md:effect/neiva/sound_ring/3
execute positioned ^ ^ ^3 run function md:effect/neiva/sound_ring/2
execute positioned ^ ^ ^4.25 run function md:effect/neiva/sound_ring/_75
particle explosion ^ ^ ^1 0 0 0 0 1 force @a[tag=!gf.dev]
particle sonic_boom ^ ^ ^3 0 0 0 0 1 force @a[tag=!gf.dev]
playsound block.respawn_anchor.deplete player @a[tag=!gf.dev] ~ ~ ~ 1 2
playsound block.respawn_anchor.charge player @a[tag=!gf.dev] ~ ~ ~ 1 1
playsound item.crossbow.shoot player @a[tag=!gf.dev] ~ ~ ~ 1 1
playsound entity.generic.explode player @a[tag=!gf.dev] ~ ~ ~ 1 1
playsound block.anvil.place player @a[tag=!gf.dev] ~ ~ ~ 1 1.5
playsound block.respawn_anchor.charge player @a[tag=!gf.dev] ~ ~ ~ 1 1.1
playsound block.respawn_anchor.charge player @a[tag=!gf.dev] ~ ~ ~ 1 .9