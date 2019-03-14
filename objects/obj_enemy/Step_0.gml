/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2BF8E906
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "fb7a87cc-3d59-4612-99a9-e7f162f8beeb"
var l2BF8E906_0 = false;
l2BF8E906_0 = instance_exists(obj_player);
if(l2BF8E906_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 14E99FA2
	/// @DnDParent : 2BF8E906
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1317660E
	/// @DnDParent : 2BF8E906
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 656F6DF2
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E343818
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B241CAD
	/// @DnDApplyTo : a1eda571-836a-4dec-aa58-8cc5411cc7f1
	/// @DnDParent : 1E343818
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "score"
	with(obj_score) {
	score += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 2F33D3BC
	/// @DnDParent : 1E343818
	/// @DnDArgument : "sound" "sound_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "6f12d7f2-1474-487c-b204-778d0e6be9aa"
	audio_sound_pitch(sound_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 51275125
	/// @DnDParent : 1E343818
	/// @DnDArgument : "soundid" "sound_death"
	/// @DnDSaveInfo : "soundid" "6f12d7f2-1474-487c-b204-778d0e6be9aa"
	audio_play_sound(sound_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4360E250
	/// @DnDParent : 1E343818
	instance_destroy();
}