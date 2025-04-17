#> crafting because that doesn't need to happen every tick

##Custom Items

# Enderblade
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:netherite_ingot",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:end_crystal",count:2}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:enchanting_table",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:experience_bottle",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:turtle_scute",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:dragon_head",count:1}},distance=0...5] \
run function goofy_items:item/enderblade/craft

# Withering Blade
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:wither_rose",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1,}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:soul_sand",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:gold_block",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:nether_wart",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:sugar",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:glowstone_dust",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}},distance=0...5] \
run function goofy_items:item/wither_blade/craft

# Withering Imperon
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"goofy_smp:imperon"}}}] \
if entity @n[type=item,nbt={Item:{id:"minecraft:wither_rose",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1,}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:soul_sand",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:gold_block",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:nether_wart",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:sugar",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:glowstone_dust",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}},distance=0...5] \
run function goofy_items:item/wither_blade/craft_imperon

##Retexturing

# remove texture
execute as @s[nbt= {Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}] if entity @n[type=item, nbt= !{Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}, nbt={Item:{id:"minecraft:wooden_axe",   count:1}},distance=0...5] run function goofy_items:item/textures/clear_texture
execute as @s[nbt= {Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}] if entity @n[type=item, nbt= !{Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}, nbt={Item:{id:"minecraft:stone_axe",    count:1}},distance=0...5] run function goofy_items:item/textures/clear_texture
execute as @s[nbt= {Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}] if entity @n[type=item, nbt= !{Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}, nbt={Item:{id:"minecraft:golden_axe",   count:1}},distance=0...5] run function goofy_items:item/textures/clear_texture
execute as @s[nbt= {Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}] if entity @n[type=item, nbt= !{Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}, nbt={Item:{id:"minecraft:iron_axe",     count:1}},distance=0...5] run function goofy_items:item/textures/clear_texture
execute as @s[nbt= {Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}] if entity @n[type=item, nbt= !{Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}, nbt={Item:{id:"minecraft:diamond_axe",  count:1}},distance=0...5] run function goofy_items:item/textures/clear_texture
execute as @s[nbt= {Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}] if entity @n[type=item, nbt= !{Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}, nbt={Item:{id:"minecraft:netherite_axe",count:1}},distance=0...5] run function goofy_items:item/textures/clear_texture

#remove trim - Replace with smithing table recipe
execute if data entity @s Item.components."minecraft:trim" if entity @n[type=item, nbt= !{Item: {components: {"minecraft:custom_data":{goofy_smp: {texture: 1b}}}}}, nbt={Item:{id:"minecraft:shears",count:1}},distance=0...5] run function goofy_items:item/textures/clear_trim


##CWT

# Archan
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:gold_nugget",count:1,}},distance=0...5] \
run function goofy_items:item/textures/acharn

# Urfael
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:gold_ingot",count:1,}},distance=0...5] \
run function goofy_items:item/textures/urfael

# Determination
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:light_blue_dye",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:pink_dye",count:1,}},distance=0...5] \
run function goofy_items:item/textures/determination

# Shiv
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:stick",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:string",count:1,}},distance=0...5] \
run function goofy_items:item/textures/toothbrush_shiv

# Baseball bat / DOWN GOES ANDERSON
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:stick",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:oak_log",count:1,}},distance=0...5] \
run function goofy_items:item/textures/anderson

# Imperon
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:stick",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:netherite_scrap",count:1,}},distance=0...5] \
run function goofy_items:item/textures/imperon

# LimeGreenPVP
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:red_sand",count:1,}},distance=0...5] \
run function goofy_items:item/textures/limegreepvp

# Blazer
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:fire_charge",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:netherrack",count:1,}},distance=0...5] \
run function goofy_items:item/textures/blazer

# Run n' Gun Crossbow
execute as @s[nbt= {Item: {id: "minecraft:crossbow",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:2,}},distance=0...5] \
run function goofy_items:item/textures/run_gun

# Angered Soul (or that big axe)
execute as @s[nbt= {Item: {id: "minecraft:netherite_axe",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:soul_sand",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:netherite_ingot",count:1,}},distance=0...5] \
run function goofy_items:item/textures/angered_soul

# Frying Pan (for gay_people_inc)
execute as @s[nbt= {Item: {id: "minecraft:netherite_axe",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:2,}},distance=0...5] \
run function goofy_items:item/textures/frying_pan

# Sauron's Mace (EmpyrianElite)
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:iron_block",count:1,}},distance=0...5] \
run function goofy_items:item/textures/sauron_mace

# Hyperion (PotatoKing5185)
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:tnt",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:diamond",count:1,}},distance=0...5] \
run function goofy_items:item/textures/hyperion

# Hockey Stick (JBDoesStuff)
execute as @s[nbt= {Item: {id: "minecraft:netherite_hoe",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:blue_dye",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:red_dye",count:1,}},distance=0...5] \
run function goofy_items:item/textures/hockey_stick

# Orphan Obliterator
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:gold_ingot",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:diamond_block",count:1,}},distance=0...5] \
run function goofy_items:item/textures/orphan_obliterator

# Dark Moon Greatsword/Celestina (Ossmodius)
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:stone",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:lapis_block",count:1,}},distance=0...5] \
run function goofy_items:item/textures/dark_moon_greatsword

# Blood Blade (TacticalSoupCan)
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:redstone",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:netherite_scrap",count:1,}},distance=0...5] \
run function goofy_items:item/textures/blood_blade

# Twil Blades (LazyNarru)
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:emerald",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:gilded_blackstone",count:1,}},distance=0...5] \
run function goofy_items:item/textures/twil_blades

# Karma
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"goofy_smp:imperon"}}}] \
if entity @n[type=item,nbt={Item:{id:"minecraft:diamond",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:red_dye",count:1,}},distance=0...5] \
run function goofy_items:item/textures/karma

# Jettison
execute as @s[nbt= {Item: {id: "minecraft:bow",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:diamond",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:gold_block",count:1,}},distance=0...5] \
run function goofy_items:item/textures/jettison

# Imperon Deathless Decay
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{"goofy_smp": {"item": "withering_blade",}}}}}] \
if entity @n[type=item,nbt={Item:{id:"minecraft:netherite_scrap",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:stick",count:1,}},distance=0...5] \
run function goofy_items:item/textures/withering_blade_imperon

# Imperon Deathless Decay
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{"goofy_smp": {"item": "withering_blade",}}}}}] \
if entity @n[type=item,nbt={Item:{id:"minecraft:obsidian",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:crying_obsidian",count:1,}},distance=0...5] \
run function goofy_items:item/textures/withering_blade_obsidian

# Quartz Blade
execute as @s[nbt= {Item: {id: "minecraft:netherite_sword",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:quartz",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:obsidian",count:1,}},distance=0...5] \
run function goofy_items:item/textures/quartz_blade


##CAT

# Netherite Faceplate
execute as @s[nbt= {Item: {id: "minecraft:netherite_helmet",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:lava_bucket",count:1}},distance=0...5] \
run function goofy_items:item/textures/netherite_faceplate

# Creepy Mask
execute as @s[nbt= {Item: {id: "minecraft:netherite_helmet",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:gold_ingot",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:goat_horn",count:1,}},distance=0...5] \
run function goofy_items:item/textures/creepy_mask

# Creepy Mask Saturated
execute as @s[nbt= {Item: {id: "minecraft:netherite_helmet",count:1,components:{"minecraft:item_model":"goofy_smp:creepy_mask"}}}] \
if entity @n[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:1}},distance=0...5] \
if entity @n[type=item,nbt={Item:{id:"minecraft:red_dye",count:1,}},distance=0...5] \
run function goofy_items:item/textures/creepy_mask_saturated

# Verbannung
execute as @s[nbt= {Item: {id: "minecraft:netherite_axe",count:1}}] unless data entity @s Item.components."minecraft:custom_data" \
if entity @n[type=item,nbt={Item:{id:"minecraft:obsidian",count:1,}},limit=1,sort=nearest,distance=0...6] \
if entity @n[type=item,nbt={Item:{id:"minecraft:white_dye",count:1}},limit=1,sort=nearest,distance=0...6] \
if entity @n[type=item,nbt={Item:{id:"minecraft:fire_charge",count:1}},limit=1,sort=nearest,distance=0...6] \
if entity @n[type=item,nbt={Item:{id:"minecraft:music_disc_11",count:1}},limit=1,sort=nearest,distance=0...6,nbt={Item:{components:{"minecraft:custom_data":{"abgrund": {"item": "essence_of_abgrund"}}}}}] \
run function goofy_items:item/textures/verbannung

# Cycling Armour
#execute as @s[nbt= {Item: {count:1}},predicate=goofy_items:misc/trimed_armor] unless data entity @s Item.components."minecraft:custom_data".goofy_smp.item_properties{does_trim_cycle:true} \
#if entity @n[type=item,nbt={Item:{id:"minecraft:clock",count:1}},distance=0...5] \
#run function goofy_items:item/textures/cycling