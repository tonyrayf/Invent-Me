/// @param {array}  keys  Массив клавиш для проверки
/// @description          Проверяет на зажатие несколько указанных клавиш

function key_input_check(keys)
{
	var i = 0;
	repeat (array_length(keys))
	{
		if (keyboard_check(keys[i++])) return true;
	}
	return false;
}


/// @param {array}  keys  Массив клавиш для проверки
/// @description          Проверяет на нажатие несколько указанных клавиш

function key_input_check_pressed(keys)
{
	var i = 0;
	repeat (array_length(keys))
	{
		if (keyboard_check_pressed(keys[i++])) return true;
	}
	return false;
}


/// @param {array}  keys  Массив клавиш для проверки
/// @description          Проверяет на разжатие несколько указанных клавиш

function key_input_check_released(keys)
{
	var i = 0;
	repeat (array_length(keys))
	{
		if (keyboard_check_released(keys[i++])) return true;
	}
	return false;
}