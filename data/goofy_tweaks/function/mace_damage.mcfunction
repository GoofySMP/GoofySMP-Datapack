tellraw @s "You cannot use the mace!"
advancement revoke @s only goofy_tweaks:tech/use_mace
summon donkey ~ ~ ~ {CustomName:"\"Almighty Donkey of Power (who really hates maces)\"",\
    Tags:["gf.donkey_of_power"],\
    Team:"uthi.no_collision",\
    ArmorItems:[{id:"minecraft:wheat_seeds",components:{enchantments:{levels:{"uthi:delete_user":1}}}},{},{},{}],\
    active_effects:[{id:"invisibility",ambient:true,duration:-1,amplifier:0,show_icon:false,show_particles:false}],\
    attributes:[{id:"scale",base:0.1}]}
damage @s 1500 goofy_tweaks:no_mace by @n[tag=gf.donkey_of_power]