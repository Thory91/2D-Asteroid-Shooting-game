/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 515A5D43
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "6"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += 6;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C26AEA8
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "660"
if(y >= 660)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3FE12670
	/// @DnDParent : 7C26AEA8
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "0"
	x = x;
	y = 0;
}