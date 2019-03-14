var l2BF8E906_0 = false;
l2BF8E906_0 = instance_exists(obj_player);
if(l2BF8E906_0)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	speed = spd;
}

image_angle = direction;

if(hp <= 0)
{
	with(obj_score) {
	score += 5;
	
	}

	RNG += 1;

	audio_sound_pitch(sound_death, random_range(0.8,1.2));

	audio_play_sound(sound_death, 0, 0);

	if(RNG >= 3)
	{
		instance_change(obj_rapidFire, true);
	}
}

instance_destroy();