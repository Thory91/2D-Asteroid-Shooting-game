/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 733B338C
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""Enemy_layer""
/// @DnDSaveInfo : "objectid" "173d0cd9-e0fd-48d9-bdb9-36d5daa5c670"
instance_create_layer(random(room_width), random(room_height), "Enemy_layer", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 62763220
/// @DnDArgument : "steps" "spawnrate_enemy"
alarm_set(0, spawnrate_enemy);