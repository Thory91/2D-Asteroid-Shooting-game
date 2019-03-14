/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 50755E44
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-6"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += -6;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57B6B2D7
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "3"
if(y <= 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 33793C1F
	/// @DnDParent : 57B6B2D7
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "660"
	x = x;
	y = 660;
}