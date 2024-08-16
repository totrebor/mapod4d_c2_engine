# tool

# class_name
class_name Mapod4dMain

# extends
extends Control
## Main object of multiverse.
##
## This object support autoload of general scenes and metaverses.
##

# ----- signals

# ----- enums

# ----- constants

# ----- exported variables

# ----- public variables

# ----- private variables

# ----- onready variables
@onready var _flagNetConnectionRequested = false
@onready var _utils = $Utils
@onready var _progress_bar_panel = $Utils/ProgressBar
@onready var _progress_bar = \
		$Utils/ProgressBar/Panel/VBoxContainer/MarginContainerPB/Bar

# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	mapod4dNetSingleton.start($PlayerSpawnerArea)


# ----- remaining built-in virtual methods
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass # Replace with function body.


# ----- public methods

## int somes data and configuration
## not used
func init_main():
	if _utils != null:
		for child in _utils.get_children():
			if "visible" in child:
				child.visible = false


## start progress bar
func init_progress_bar():
	_progress_bar.value = 0.0
	_progress_bar_panel.visible = true


## set progress bar
func set_progress_bar(value: float):
	_progress_bar.value = value


## end progress bar
func end_progress_bar():
	_progress_bar.value = 0.0
	_progress_bar_panel.visible = false


func get_fNCR():
	return _flagNetConnectionRequested

# ----- private methods
