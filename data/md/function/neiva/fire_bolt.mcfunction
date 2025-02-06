#Tagging shooter
tag @p add md.shotSource

#dev
tellraw @a[tag=gf.dev] "Bolt sufficent"

#cast ray
function md:neiva/ray/cast

#untagging shooter
tag @p remove md.shotSource

#prep Bullet
function md:neiva/bullet_prep