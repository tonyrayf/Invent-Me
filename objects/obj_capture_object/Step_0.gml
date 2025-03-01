var inst = instance_place(x, y, obj_weapon_throwable);
if (inst != noone)
{
	captured_weapon = inst.object_index == obj_weapon_minus_knife ? weapon.knife : weapon.shuriken;
	instance_destroy(inst);
	
	
	capture_func();
}