# Sound and actionbar title
title @a[distance=..64] actionbar {"text":"Now Playing: Howard Shore - Concerning Hobbits ","color":"green"}
playsound goofy_smp:music_disc.concerning_hobbits record @a[distance=..64] ~ ~ ~ 4 1

#stop the 11 disc from playing 
# (because for some reason, the disc doesn't start playing on the same tick. Thus, I have to offset it)
summon area_effect_cloud ~ ~ ~ {Tags:['gf.delete_11','gf.disc.expire'],Duration:3}
schedule function goofy_discs:play/delete_11 2t