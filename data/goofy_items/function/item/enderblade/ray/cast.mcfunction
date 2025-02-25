# From function:item/enderblade/use

$function uthi:utils/raycast_block/cast {\
    skipped_blocks:"#goofy_items:teleport_permeable", \
    action_blocks:"#uthi:empty", \
    ray_steps:$(enderblade_warp_distance), \
    step_size:.25, \
    action_function: "uthi:empty", \
    step_function:"goofy_items:item/enderblade/ray/vis", \
    end_function:"goofy_items:item/enderblade/ray/end"}

#function uthi:utils/raycast_block/cast {skipped_blocks:"#goofy_items:teleport_permeable",action_blocks:"uthi:empty",ray_steps:120,step_size:.25,action_function:"uthi:empty",step_function:"goofy_items:item/enderblade/ray/vis",end_function:"goofy_items:item/enderblade/ray/end"}