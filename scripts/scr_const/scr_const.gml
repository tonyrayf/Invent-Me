#macro LEFT -1
#macro RIGHT 1

#macro UP  -1
#macro DOWN 1


#macro VIEW_9__16 9 / 16


//Nested collapse
#macro nested_collapse throw("nested collapse")
#macro nested_begin try 
#macro nested_rumbled catch(__e__) 


enum weapon
{
	shuriken,
	knife,
}