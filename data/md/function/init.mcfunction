#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set #UthiMurderDrones uthipacks.installed 1

#Config + Defaults
scoreboard objectives add md.config dummy
execute unless score #loaded md.config matches 1 run scoreboard players set #NEIVACool md.config 1
scoreboard players set #loaded md.config 1
#NEIVA
scoreboard objectives add md.bulletTime dummy
scoreboard objectives add md.bulletZ dummy
scoreboard objectives add md.bulletX dummy
scoreboard objectives add md.bulletY dummy
scoreboard objectives add md.raySteps dummy
scoreboard objectives add md.rayOutput dummy

scoreboard objectives add md.neivaCooldown dummy

scoreboard objectives add md.effect dummy
function md:tick