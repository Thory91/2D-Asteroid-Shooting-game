/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 5745286F
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0906853A
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4FE0ECB0
var l4FE0ECB0_0;
l4FE0ECB0_0 = mouse_check_button(mb_left);
if (l4FE0ECB0_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0533A7B7
	/// @DnDParent : 4FE0ECB0
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 3FA3249E
		/// @DnDParent : 0533A7B7
		/// @DnDArgument : "sound" "sound2"
		/// @DnDArgument : "pitch" "random_range(1.5,2.0)"
		/// @DnDSaveInfo : "sound" "02997b0c-202d-4a0b-be37-fa19690a8a0c"
		audio_sound_pitch(sound2, random_range(1.5,2.0));
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 70202679
		/// @DnDParent : 0533A7B7
		/// @DnDArgument : "soundid" "sound2"
		/// @DnDSaveInfo : "soundid" "02997b0c-202d-4a0b-be37-fa19690a8a0c"
		audio_play_sound(sound2, 0, 0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0AE7EEA3
		/// @DnDParent : 0533A7B7
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""Bullet_layer""
		/// @DnDSaveInfo : "objectid" "e25461bb-3aa4-4f1a-8c72-1a8b77017ce8"
		instance_create_layer(x, y, "Bullet_layer", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31DBC3CA
		/// @DnDParent : 0533A7B7
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 5;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C32AFE1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;