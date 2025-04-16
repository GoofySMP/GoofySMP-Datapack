execute on attacker run advancement grant @s only abgrund:verbannung
$execute if entity @s[type=wandering_trader] run function abgrund:mechanics/banish/delete_traders {hash_effects:'$(hash_effects)',animation:'spawn'}
$execute if entity @s[type=player] unless entity @s[nbt={UUID:[I;-792631139,1382434740,-1725666761,1257002739]}] run function abgrund:mechanics/banish/aishiteitanoni {hash_effects:'$(hash_effects)',animation:'spawn'}
#banish
function abgrund:mechanics/banish/init