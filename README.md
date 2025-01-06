omg this has an info icon in vscode oO

Jan 6th
---------
- Updated Changelog to reflect actual changes (#15)
- Renamed changelog.txt to README.md
- Fixed 'Thirst For Decay' advancement being invalid (#14)
- Fixed Warping Enderblade not teleporting you through various blocks (#16)

Jan 5th
---------
- Added a new music disc, obtainable only when a wither kills a creeper in the end.
- Added a new goat horn, obtainable only when a wither kills a goat in the end.
- Removed todo.txt
- Added changelog.txt
- Reworked Withering Blade
    - Renamed to Deathless Decay
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
    - Rewrote item tooltip
- Added per-player scaling. Some players will be slightly taller or shorter than others.
- Added new CWT
    - Jettison (Crafted with 1 gold block, 1 diamond, and 1 bow)
    - Karma (Crafted with 1 netherite imperon, 1 red dye, and 1 diamond)
    - NEIVA (crafted with 1 crossbow, 1 netherite ingot, and 1 redstone block)
- Added a Custom Helmet Texture 
    - Netherite Faceplate (Crafted with 1 Netherite Helmet and 1 Shears. Shears will be consumed on craft)
- Fixed bug where Warping Enderblade doesn't teleport you through copper grates (#13)

Jan 2nd
---------
Fixed bug where Warping Enderblade doesn't teleport you through Glass panes (#12)

Jan 1st
---------
- Reworked Dragonsbane
    - Renamed to Warping Enderblade
    - Reworked the Transmission functionality
        - Renamed to Warp
        - You now right click the sword to charge a warp, whereas before you would place the sword in your offhand and sneak to teleport instantly
        - Warps still cost 2 levels to preform, but that cost is eliminated in The End
        - You still require 2 levels to preform a warp, regardless of dimension
        - Warps now have a 5-second cooldown
        - Dragonsbane now warps you 30 blocks by default
        - Added config to modify the warp distance of the Enderblade (/function .cmd:config)
    - Named that regeneration ability Crystal Guard
    - Crystal Guard has a 25% chance to apply per hit (this was always the case, the thing I used to determine that)
    - Rewrote item tooltip
    - Changed crafting recipe.  
    It is now:
         1 Netherite Ingot  
         2 End Crystals  
         1 Enchanted Book with Mending on it  
         1 Ender Pearl  
         1 Experience Bottle  
         1 Turtle Scute  
         1 Dragon Head  
         1 Netherite Sword  
- Fixed bug where the music disc 'OMOCAT - My Time' was named incorrectly (#10)
- Removed unused disc code and scoreboards
- Removed individual give functions for music discs. Use `/loot give @s loot goofy_discs:discs/<disc_name>` to get individual discs or run `/function goofy_discs:give/all` to get all of them
- Fixed bug where Custom weapons textures (CWT) didn't update


Dec 31st 2024
---------
- Updated datapack to 1.21.4
- Old items will automatically update