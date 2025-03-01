instance_destroy(other);


if (size <= min_size) exit;


if (size > 1)
{
	size -= 1;
		
	image_xscale -= size_delta;
	image_yscale -= size_delta;
}
else if (destructable) instance_destroy();