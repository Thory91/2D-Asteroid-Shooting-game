/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 4FAC71FE
/// @DnDArgument : "x" "mouse_x "
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x , mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 76066247
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 1300AB5B
var l1300AB5B_0;
l1300AB5B_0 = mouse_check_button(mb_left);
if (l1300AB5B_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 732BFCCB
	/// @DnDParent : 1300AB5B
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1593BF5C
		/// @DnDParent : 732BFCCB
		/// @DnDArgument : "var" "current_weapon"
		if(current_weapon == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
			/// @DnDVersion : 1
			/// @DnDHash : 7D04C69B
			/// @DnDParent : 1593BF5C
			/// @DnDArgument : "sound" "sound2"
			/// @DnDArgument : "pitch" "random_range(1.5,2.0)"
			/// @DnDSaveInfo : "sound" "02997b0c-202d-4a0b-be37-fa19690a8a0c"
			audio_sound_pitch(sound2, random_range(1.5,2.0));
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 394B572B
			/// @DnDParent : 1593BF5C
			/// @DnDArgument : "soundid" "sound2"
			/// @DnDSaveInfo : "soundid" "02997b0c-202d-4a0b-be37-fa19690a8a0c"
			audio_play_sound(sound2, 0, 0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 27D4EE32
			/// @DnDParent : 1593BF5C
			/// @DnDArgument : "xpos" "x "
			/// @DnDArgument : "ypos" "y  "
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDArgument : "layer" ""Bullet_layer""
			/// @DnDSaveInfo : "objectid" "e25461bb-3aa4-4f1a-8c72-1a8b77017ce8"
			instance_create_layer(x , y  , "Bullet_layer", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 280FF1E9
			/// @DnDParent : 1593BF5C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02520885
		/// @DnDParent : 732BFCCB
		/// @DnDArgument : "var" "current_weapon"
		/// @DnDArgument : "value" "1"
		if(current_weapon == 1)
		{
			/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
			/// @DnDVersion : 1
			/// @DnDHash : 7C7D1BDD
			/// @DnDParent : 02520885
			/// @DnDArgument : "sound" "sound2"
			/// @DnDArgument : "pitch" "random_range(1.5,2.0)"
			/// @DnDSaveInfo : "sound" "02997b0c-202d-4a0b-be37-fa19690a8a0c"
			audio_sound_pitch(sound2, random_range(1.5,2.0));
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 6BD8ADDE
			/// @DnDParent : 02520885
			/// @DnDArgument : "soundid" "sound2"
			/// @DnDSaveInfo : "soundid" "02997b0c-202d-4a0b-be37-fa19690a8a0c"
			audio_play_sound(sound2, 0, 0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 11106284
			/// @DnDParent : 02520885
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDArgument : "layer" ""Bullet_layer""
			/// @DnDSaveInfo : "objectid" "e25461bb-3aa4-4f1a-8c72-1a8b77017ce8"
			instance_create_layer(x, y, "Bullet_layer", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79C2F498
			/// @DnDParent : 02520885
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 5;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7958C8AF
			/// @DnDParent : 02520885
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "ammo"
			ammo += 5;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 39E3E23B
			/// @DnDParent : 02520885
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "100"
			if(ammo >= 100)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 23B0544D
				/// @DnDParent : 39E3E23B
				/// @DnDArgument : "var" "ammo"
				ammo = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 23FDBA76
				/// @DnDParent : 39E3E23B
				/// @DnDArgument : "var" "current_weapon"
				current_weapon = 0;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B9F5CF0
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;