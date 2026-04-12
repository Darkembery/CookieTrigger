time += delta_time / 1000;

var current_index = floor(image_index)
var duration = ms_frames[current_index];

if (time >= duration)
{
	image_index++;
	time = 0;
	
	if (image_index >= image_number)
	image_index = 0;
}