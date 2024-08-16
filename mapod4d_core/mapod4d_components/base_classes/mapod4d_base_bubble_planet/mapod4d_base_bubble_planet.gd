## Base Mapod4d bubble planet
##
## Node3D derived sferical bubble planter
##

# tool

# class_name
class_name Mapod4dBaseBubblePlanet

# extends
extends Node3D


# ----- signals

# ----- enums

# ----- constants

# ----- exported variables

# ----- public variables

# ----- private variables
var _mapod4dData = null

# ----- onready variables


# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method

# Called when the node enters the scene tree for the first time.
func _ready(): 
	_mapod4dData = Mapod4dComponentData.new()
	_mapod4dData.setDescriprion("Mapod4dBaseBubblePlanet")

# ----- remaining built-in virtual methods

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass # Replace with function body.

# ----- public methods
func getData():
	return _mapod4dData

## base init func called from loader
## after instance (ready ok)
func mapod4dInit(_data: Mapod4dComponentInitData):
	return true


## base setup func called from loader
## after instance (ready ok)
func mapod4dSetup(_data: Mapod4dComponentInitData):
	return true


# ----- private methods
