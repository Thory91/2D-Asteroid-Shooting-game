/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 1D36F3B7
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-4"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += -4;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54AE9E56
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "3"
if(y <= 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3B0AF7F8
	/// @DnDParent : 54AE9E56
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "0"
	x = x;
	y = 0;
}