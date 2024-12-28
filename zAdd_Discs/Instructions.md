In this folder, I have supplied a template folder structure.
I recommend duplicating the Add_Discs folder first, such that you keep the template.
For this example, I will be adding Megalovania by Toby Fox

# HERE BE THE STEPS TO ADD THE DISC THINGY
1.  On all files present in `Add_Discs/goofy_discs/` (the folder next to this file), rename all files and folders  named 'template' with whatever you want to identify your song as. Make sure it doesn't conflict with an already-existing song id. You may not use CAPS or $ymbols in your name. Underscores are fine though. In this example, I will use **megalovania**. 
   * `Add_Discs/goofy_discs/advancements/template.json` --> `Add_Discs/goofy_discs/advancements/megalovania.json`  
   * `Add_Discs/goofy_discs/functions/give/template.mcfunction` --> `Add_Discs/goofy_discs/functions/give/megalovania.mcfunction`  
   * `Add_Discs/goofy_discs/functions/play/template/` --> `Add_Discs/goofy_discs/functions/play/megalovania/`  
   * `Add_Discs/goofy_discs/loot_tables/template.json` --> `Add_Discs/goofy_discs/loot_tables/megalovania.json`
2. In the files you just renamed (I'll stick to using megalovania to reference them) there will be some things you will have to edit. These are the files you need to worry about:
    > `Add_Discs/goofy_discs/advancements/megalovania.json`  
    > `Add_Discs/goofy_discs/functions/give/megalovania.mcfunction`  
    > `Add_Discs/goofy_discs/functions/play/megalovania/play.mcfunction`  
    > `Add_Discs/goofy_discs/functions/play/megalovania/check.mcfunction`  
    > `Add_Discs/goofy_discs/loot_tables/megalovania.json`  

In each of those files, replace the word 'template' with your name. If there is an Author/Composer and Song Title, rename those accordingly. Here is what it looks like in my case.
* `Add_Discs/goofy_discs/advancements/megalovania.json` Turns from  
    ```
    {
      "criteria": {
        "play_song": {
          "trigger": "item_used_on_block",
          "conditions": {
            "item": {
              "item": "music_disc_11",
              "nbt": "{GoofySMP:{disc:'template'}}"
            },
            "location": {
              "block": {
                "block": "jukebox"
              }
            }
          }
        }
      },
      "rewards": {
        "function": "goofy_discs:play/template/check"
      }
    }
    ```
    To
    ```
    {
      "criteria": {
        "play_song": {
          "trigger": "item_used_on_block",
          "conditions": {
            "item": {
              "item": "music_disc_11",
              "nbt": "{GoofySMP:{disc:'megalovania'}}"
            },
            "location": {
              "block": {
                "block": "jukebox"
              }
            }
          }
        }
      },
      "rewards": {
        "function": "goofy_discs:play/megalovania/check"
      }
    }
    ```
* `Add_Discs/goofy_discs/functions/give/megalovania.mcfunction` Turns from  
    ```
    loot give @s loot goofy_discs:discs/template
    ```
    To
    ```
    loot give @s loot goofy_discs:discs/megalovania
    ```
* `Add_Discs/goofy_discs/functions/play/megalovania/check.mcfunction` Turns from  
    ```
    #revoke advancement
    advancement revoke @s only goofy_discs:play_disc/template

    execute if score @s gf.disc.used matches 1.. run function goofy_discs:play/template/play
    ```
    To
    ```
    #revoke advancement
    advancement revoke @s only goofy_discs:play_disc/megalovania

    execute if score @s gf.disc.used matches 1.. run function goofy_discs:play/megalovania/play
    ```
* `Add_Discs/goofy_discs/functions/play/megalovania/play.mcfunction` Turns from  
    ```
    # Sound and actionbar title
    title @a[distance=..64] actionbar {"text":"Now Playing: Artist/Composer - Song Title ","color":"green"}
    playsound goofy_smp:music_disc.template record @a[distance=..64] ~ ~ ~ 4 1

    #stop the 11 disc from playing 
    # (because for some reason, the disc doesn't start playing on the same tick. Thus, I have to offset it)
    summon area_effect_cloud ~ ~ ~ {Tags:['gf.delete_11','gf.disc.expire'],Duration:3}
    schedule function goofy_discs:play/delete_11 2t
    ```
    To
    ```
    # Sound and actionbar title
    title @a[distance=..64] actionbar {"text":"Now Playing: Toby Fox - Megalovania ","color":"green"}
    playsound goofy_smp:music_disc.megalovania record @a[distance=..64] ~ ~ ~ 4 1
    
    #stop the 11 disc from playing 
    # (because for some reason, the disc doesn't start playing on the same tick. Thus, I have to offset it)
    summon area_effect_cloud ~ ~ ~ {Tags:['gf.delete_11','gf.disc.expire'],Duration:3}
    schedule function goofy_discs:play/delete_11 2t
    ```
* For `Add_Discs/goofy_discs/loot_tables/megalovania.json` you will have to worry about `CustomModelData`. Each disc has a unique one. Basically, reference CustomModelData.txt attached in this folder. Make an entry based off the template Turns from  
    ```
    {
      "type": "generic",
      "pools": [
        {
          "rolls": 1,
          "bonus_rolls": 1,
          "entries": [
            {
              "type": "item",
              "name": "music_disc_11",
              "functions": [
                {
                  "function": "set_lore",
                  "lore": [
                    {
                      "text": "Artist/Composer - Song Title",
                      "color": "gray",
                      "italic": false
                    },
                    {
                      "text": "Added by ______",
                      "color": "gray",
                      "italic": false
                    },
                    "",
                    {
                      "text": "Goofy SMP",
                      "color": "gold",
                      "bold": true,
                      "italic": false
                    }
                  ]
                },
                {
                  "function": "set_nbt",
                  "tag": "{CustomModelData:0, HideFlags:32,GoofySMP:{disc:'template',item:'record'}}"
                }
              ]
            }
          ]
        }
      ]
    }

    ```
    To
    ```
    {
      "type": "generic",
      "pools": [
        {
          "rolls": 1,
          "bonus_rolls": 1,
          "entries": [
            {
              "type": "item",
              "name": "music_disc_11",
              "functions": [
                {
                  "function": "set_lore",
                  "lore": [
                    {
                      "text": "Toby Fox - Megalovania",
                      "color": "gray",
                      "italic": false
                    },
                    {
                      "text": "Added by ______",
                      "color": "gray",
                      "italic": false
                    },
                    "",
                    {
                      "text": "Goofy SMP",
                      "color": "gold",
                      "bold": true,
                      "italic": false
                    }
                  ]
                },
                {
                  "function": "set_nbt",
                  "tag": "{CustomModelData:0, HideFlags:32,GoofySMP:{disc:'megalovania',item:'record'}}"
                }
              ]
            }
          ]
        }
      ]
    }
    ```
        

2.  In the directory `'data/goofy_discs/'`, there are a few files you will have to add onto. The files are:  
   > `data/goofy_discs/functions/give/all.mcfunction`  
   > `data/goofy_discs/functions/stop_disc.mcfunction`  
   > `data/goofy_discs/loot_tables/entity/creeper_extra_discs.json`  

    In those functions, there is a template line. 
    Copy-paste that line and replace the word 'template' with the name you're identifying the music disc as. **MAKE SURE IT IS THE SAME NAME AS THE ONE USED IN STEP ONE!!!**
3. Open the resource pack. Navigate to the directory `'assets/goofy_smp/sounds/records'`
4.  Place the sound file you want to use in that folder. It must be an ogg file. You can use an online converter,
    but I recommend using ffmpeg, a tool in your command line.
    Run this command for ffmpeg:  
    ```ffmpeg -i /path/to/input/file /path/to/resource/pack/assets/goofy_smp/sounds/records/template.ogg```  
    Ensure the name of the ogg you put into the sounds folder is the **SAME NAMESPACE**. Basically, just replace the word 'template' again.
5.  Go to `assets/goofy_smp/sounds.json`. You will find a block of code that looks like this:
    ```
      "music_disc.template": {
      "sounds": [
        {
          "name": "goofy_smp:records/template",
          "stream": true
        }
      ]
    }
    ```
    Copy-paste it (make sure a comma is present on the last curly braket) and replace 'template' with your name.
    The result should look something like this:
    ```
      "music_disc.megalovania": {
      "sounds": [
        {
          "name": "goofy_smp:records/megalovania",
          "stream": true
        }
      ]
    },
      "music_disc.template": {
      "sounds": [
        {
          "name": "goofy_smp:records/template",
          "stream": true
        }
      ]
    }
    ```