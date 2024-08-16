## A brief description of your script.
##
## A more detailed description of the script.
##
## @tutorial:            http://the/tutorial1/url.com
## @tutorial(Tutorial2): http://the/tutorial2/url.com

## tool

## class_name
class_name Mapod4dComponentInitData

## extends
extends RefCounted

# ----- signals

# ----- enums

# ----- constants

# ----- exported variables

# ----- public variables

# ----- private variables
var _flagNetConnectionRequested = false


# ----- public methods
func setFlagNetConnectionRequested(flag: bool):
	var tmp = _flagNetConnectionRequested
	_flagNetConnectionRequested = flag
	return tmp

func getFlagNetConnectionRequested():
	return _flagNetConnectionRequested

# ----- private methods
