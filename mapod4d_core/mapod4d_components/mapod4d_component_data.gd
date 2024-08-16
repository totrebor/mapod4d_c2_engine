## A brief description of your script.
##
## A more detailed description of the script.
##

# tool

# class_name
class_name Mapod4dComponentData

# extends
extends RefCounted




# ----- signals

# ----- enums

# ----- constants

# ----- exported variables

# ----- public variables

# ----- private variables
var _description: String = "None"


# ----- public methods
func setDescription(description: String):
	var tmp = _description
	_description = description
	return tmp


func gatDescription():
	return _description

# ----- private methods
