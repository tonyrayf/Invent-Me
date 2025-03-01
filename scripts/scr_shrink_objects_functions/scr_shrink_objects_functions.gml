function shrink_set_size(_size)
{
	size = _size;
	
	image_xscale = 1 + size_delta * (size - 1);
	image_yscale = image_xscale;
}