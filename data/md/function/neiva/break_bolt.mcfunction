#effects
playsound entity.item.break player @a ~ ~ ~
execute as @p at @s anchored eyes run particle item{item:{id:arrow}} ^ ^ ^0.5 0.1 0.1 0.1 0.05 10
tellraw @a[tag=gf.dev] "Bolt insufficent"

#tell user HEY
title @p actionbar "Your arrow wasn't stong enough"

#recipe jazz
execute unless entity @p[advancements={md:recipe/reinforced_arrow=true}] run recipe take @s md:reinforced_arrow
execute unless entity @p[advancements={md:recipe/reinforced_arrow=true}] run recipe take @s md:reinforced_arrow_alt
advancement grant @p only md:recipe/reinforced_arrow

#end arrow
kill @s