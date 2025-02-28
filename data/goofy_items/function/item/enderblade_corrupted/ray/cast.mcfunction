# From function:item/enderblade_corrupted/use

$function uthi:utils/raycast_block/cast {\
    skipped_blocks:"#goofy_items:teleport_permeable", \
    action_blocks:"#uthi:empty", \
    ray_steps:$(enderblade_corrupted_warp_distance), \
    step_size:.5, \
    action_function: "uthi:empty", \
    step_function:"goofy_items:item/enderblade_corrupted/ray/vis", \
    end_function:"goofy_items:item/enderblade_corrupted/ray/end"}
