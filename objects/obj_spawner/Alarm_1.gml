/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 580F07E6
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_rapidFire"
/// @DnDArgument : "layer" ""Player_layer""
/// @DnDSaveInfo : "objectid" "e1ae74a4-6918-47e4-9ec4-8798ba2863cf"
instance_create_layer(random(room_width), random(room_height), "Player_layer", obj_rapidFire);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7957FDBD
/// @DnDArgument : "steps" "spawnrate_pwrup"
/// @DnDArgument : "alarm" "1"
alarm_set(1, spawnrate_pwrup);