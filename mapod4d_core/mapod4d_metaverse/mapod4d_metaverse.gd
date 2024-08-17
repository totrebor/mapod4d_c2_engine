## Metaverse MAPOD4D
##
## Implementatition of BubbleMetaverse MAPOD4D 
##

# tool

# class_name
class_name Mapod4dMetaverse

# extends
extends Mapod4dBaseBubblePlanet


# ----- signals

# ----- enums

# ----- constants
#const planet_sphere_res = preload(
#	"res://mapod4d_core/mapod4d_planet_model/mapod4d_planet_model_sphere/" + \
#	"mapod4d_planet_model_sphere.tscn") 
const planet_sphere_res = preload(
		"res://mapod4d_core/mapod4d_object/mapod4d_object_static/" + \
		"mapod4d_os_planet_model_sphere/mapod4d_os_planet_model_sphere.tscn")
	
# ----- exported variables

# ----- public variables
var location = Mapod4dTools.MAPOD4D_METAVERSE_LOCATION.M4D_LOCAL

# ----- private variables
var _list_of_planets = null
var _metaverse_id = null


# ----- onready variables
@onready var _utils = mapod4dGenLoaderSingleton.getTools()
@onready var _loader = mapod4dSceneLoaderSingleton

# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method

# Called when the node enters the scene tree for the first time.
func _ready():
	super()
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	location = _loader.current_metaverse_location()
	_metaverse_id = str(name).to_lower()
	var list_of_planets_path = _utils.get_metaverse_element_res_path(
			location, _metaverse_id, "list_of_planets.tres"
	)
	_list_of_planets = load(list_of_planets_path)
	_loader.mapod4d_print(
			"DEBUG Planets " + str(_list_of_planets.list.size()))
	var placeolder = get_node_or_null("Planets")
	if placeolder != null:
		var x_pos = -1.6
		var z_pos = 7.0
		var step = 0.9
		for planet_data in _list_of_planets.list:
			if planet_data is Mapod4dPlanetCoreRes:
				var planet = planet_sphere_res.instantiate()
				planet.internal_object.planet_id = planet_data.id
				planet.internal_object.metaverse_res_path = \
						_utils.get_metaverse_res_path(
									location, _metaverse_id)
				planet.set_name(planet_data.id)
				planet.set_position(Vector3(x_pos, 0, z_pos))
				#x_pos = x_pos - (1.5 + (1.0 / (1.0 + x_pos)))
				x_pos = x_pos + 1.5 * step
				z_pos = z_pos + 3.5
				step = step * 1.5
				placeolder.add_child(planet)
				planet.set_owner(placeolder)

# ----- remaining built-in virtual methods

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass # Replace with function body.

# ----- public methods


# ----- private methods
