## A brief description of your script.
##
## A more detailed description of the script.
##
## @tutorial:            http://the/tutorial1/url.com
## @tutorial(Tutorial2): http://the/tutorial2/url.com

## tool

## class_name
class_name Mapod4dGenLoader

## extends
extends Node

# ----- signals

# ----- enums

# ----- constants

# ----- exported variables

# ----- public variables

# ----- private variables
var _mapod4dTools = Mapod4dTools.new()

# ----- onready variables


# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method

## Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# ----- remaining built-in virtual methods

## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass # Replace with function body.

# ----- public methods
func getTools():
	return _mapod4dTools

# ----- private methods
