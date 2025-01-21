Jan 21st
===
### Bugs
Fixed [DP #28](https://github.com/GoofySMP/GoofySMP-Datapack/issues/28): Loot tables for CWT sometimes give wrong texture.

Jan 20th
===
### Features
- Added Netherite Elytra ([DP #19](https://github.com/GoofySMP/GoofySMP-Datapack/issues/19))
    - Crafted in the smithing table with an **Elytra**, **Netherite Ingot**, and **Netherite Upgrade Smithing Template**
    - Has 502 durability
    - Is immune to fire and lava like all other netherite items
    - Grants a slight speed debuff when worn
- Added some variations of the Deathless Decay ([DP #18](https://github.com/GoofySMP/GoofySMP-Datapack/issues/18))
    - Currently unobtainable through survival means, but can be obtained through `/loot give @s loot`
    - Variations include:
        - Quartz
        - Imperon
- Armour trims can now be removed by tossing a trimmed piece of armour and an axe on a smithing table.  
It is planned to change this to use the smithing table GUI
- Replaced the broken function `/function goofy_items:item/textures/give_all` with `/function goofy_items:give_all`
    - This function now gives all Custom Weapons Textures (CWT), custom items, and Custom Armour Textures (CAT)
- Added "Spinning Skull On Fire" painting from [Vanilla Tweaks](https://vanillatweaks.net/picker/resource-packs/)
### Changes
- Reformatted changelog to reflect minecraft snapshot logs.
- **Item names and tooltips are now driven by a lang file.** This allows for translations into other languages. ([DP #22](https://github.com/GoofySMP/GoofySMP-Datapack/issues/22))
- All imperons have reworked attributes.  
    - Same attack damage as a netherite sword
    - Increased attack range by 1 block
    - Decreased attack speed by 25%
- Added individual loot tables for all CWT, custom items, and all CAT. Basically, you can use `/loot give @s loot` to get these items now.
### Bugs
- Fixed [DP #27](https://github.com/GoofySMP/GoofySMP-Datapack/issues/27): Loot tables for custom discs, Deathless Decay, Endersbane, and custom goat horn have bonus rolls
- Fixed [DP #25](https://github.com/GoofySMP/GoofySMP-Datapack/issues/25): Deathless Decay tooltip displayed incorrectly when wither is present 

Jan 19th
===
### Features
- Added a new painting varient. I ain't spoiling what it is, just know that it's a 4x4 painting.
### Changes
- Tweaked tooltip of Deathless Decay whenever wither is in range to more clearly convey that a Nether Star is not required

Jan 18th
===
### Changes
- Renamed Warping Enderblade to Endersbane
### Bugs
- Fixed [RP #5](https://github.com/GoofySMP/GoofySMP-Resourcepack/issues/5): Disc 'Umbra Extensions - Verses [Extended]' used default texture


Jan 16th
===
### Features
- Added "Umbra Extensions - Verses [Extended]" ([RP #5](https://github.com/GoofySMP/GoofySMP-Resourcepack/issues/5)) 
Currently using default texture; will update at later date  
Obtainable exclusively through the creeper method

Jan 13th
===
### Features
Added two new discs  
- **Charlie Daniels - The Devil Went Down to Georgia** ([RP #3](https://github.com/GoofySMP/GoofySMP-Resourcepack/issues/3))  
Obtainable in Ancient Cities and through the creeper method
- **Jelly Roll - Run It** ([RP #4](https://github.com/GoofySMP/GoofySMP-Resourcepack/issues/4))  
Obtainable in Desert Temples and through the creeper method
### Bugs
Fixed [RP #1](https://github.com/GoofySMP/GoofySMP-Resourcepack/issues/1): Bonnie Tyler disc uses default texture

Jan 9th
===
### Bugs
- Fixed [RP #2](https://github.com/GoofySMP/GoofySMP-Resourcepack/issues/2): Netherite Apple is untextured

Jan 6th
===
### Changes
- Renamed changelog.txt to README.md
### Bugs
- Fixed [DP #14](https://github.com/GoofySMP/GoofySMP-Datapack/issues/14):'Thirst For Decay' advancement is invalid
- Fixed: [DP #16](https://github.com/GoofySMP/GoofySMP-Datapack/issues/16) Warping Enderblade doesn't teleport you through all transparent blocks
Fixed [DP #15](https://github.com/GoofySMP/GoofySMP-Datapack/issues/15): changelog.txt doesn't reflect full changelog

Jan 5th
===
### Features
- Added a new music disc, obtainable only when a wither kills a creeper in the end.
- Added a new goat horn, obtainable only when a wither kills a goat in the end.
- Added per-player scaling. Some players will be slightly taller or shorter than others.
- Added new CWT
    - Jettison (Crafted with 1 gold block, 1 diamond, and 1 bow)
    - Karma (Crafted with 1 netherite imperon, 1 red dye, and 1 diamond)
    - NEIVA (crafted with 1 crossbow, 1 netherite ingot, and 1 redstone block)
- Added a Custom Helmet Texture 
    - Netherite Faceplate (Crafted with 1 Netherite Helmet and 1 Shears. Shears will be consumed on craft)
### Changes
- Removed todo.txt
- Added changelog.txt
- Reworked Withering Blade
    - Renamed to Deathless Decay
    - Rewrote item tooltip
    - Rebalanced Frenzy ability
        - 50% chance to break a combo when taking damage (used to be 100%)
        - Buffed frenzy stages
            - Stage 1 now gives Strength 2, Speed 3, Haste 2. Requires a 5-hit-long unbroken combo
            - Stage 2 now gives Strength 3, Speed 4, Haste 3. Requires a 15-hit-long unbroken combo
            - Stage 3 now gives Strength 4, Speed 5, Haste 4. Requires a 25-hit-long unbroken combo
        - Added Wither buffing
            - If a wither is within 32 blocks of a player holding a Deathless Decay, they will recieve the following effects:
                * Withering ability will ALWAYS apply Wither I with a 50% chance to apply Wither III every hit
                * Comboing no longer requires a Nether Star
                * Combos will have a 25% chance to break when hit
### Bugs
- Fixed [DP #13](https://github.com/GoofySMP/GoofySMP-Datapack/issues/13): Warping Enderblade doesn't teleport you through Copper Grates

Jan 2nd
===
### Bugs
Fixed [DP #12](https://github.com/GoofySMP/GoofySMP-Datapack/issues/12): Enderblade doesn't teleport you through Glass Panes 

Jan 1st
===
### Changes
- Reworked Dragonsbane
    - Renamed to *Warping Enderblade*
    - Reworked the `Transmission` functionality
        - Renamed to `Warp`
        - You now right click the sword to charge a warp, whereas before you would place the sword in your offhand and sneak to teleport instantly
        - Warps still cost 2 levels to preform, but that cost is eliminated while in *The End*
            - You still need at least 2 levels to preform a warp, regardless of dimension
        - Warps now have a 5-second cooldown
        - Dragonsbane now warps you 30 blocks by default
        - Added config to modify the warp distance of the Enderblade in `/function .cmd:config`
    - Named the regeneration ability `Crystal Guard`
    - Crystal Guard has a 25% chance to apply per hit (this was always the case, the thing I used to determine that was bugged)
    - Rewrote item tooltip to better convey abilities
    - Changed crafting recipe.  
    It is now:
        - 1 Netherite Ingot  
        - 2 End Crystals  
        - 1 Enchanted Book with **Mending** on it  
        - 1 Ender Pearl  
        - 1 Experience Bottle  
        - 1 Turtle Scute  
        - 1 Dragon Head  
        - 1 Netherite Sword  
- Removed unused disc code and scoreboards
- Removed individual give functions for music discs. Use `/loot give @s loot goofy_discs:discs/<disc_name>` to get individual discs or run `/function goofy_discs:give/all` to get all of them
### Bugs
- Fixed [DP #11](https://github.com/GoofySMP/GoofySMP-Datapack/issues/11): Enderblade displays wrong cooldown in tooltip
- Fixed [DP #10](https://github.com/GoofySMP/GoofySMP-Datapack/issues/10): Music Disc 'OMOCAT - 178 My Time' is named incorrectly 
- Fixed untracked bug where Custom weapons textures (CWT) didn't update


Dec 31st 2024
===
### Changes
- Updated datapack to 1.21.4
- Old items will automatically update

Dec 29th 2024
===
### Features
- Added two new discs
    - **Howard Shore - Concerning Hobbits**  
    Obtainable through creeper-skeleton method
    Found in village plains chests (Not blacksmiths)
    - **Lucas Pope - Glory to Arstotzka**
    Obtainable through creeper-skeleton method
    Found in ruined portals