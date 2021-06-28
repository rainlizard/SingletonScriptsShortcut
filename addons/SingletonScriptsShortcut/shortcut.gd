extends MenuButton
tool
onready var scriptIconTexture = get_icon("Script", "EditorIcons")
var popup = get_popup()

func add_singletons(dictionary, plugin, currentlyOpen):
	var dictionaryKeys = dictionary.keys()
	var dictionaryValues = dictionary.values()
	for i in dictionary.size():
		popup.add_item(dictionaryKeys[i])
		popup.set_item_metadata(i, dictionaryValues[i])
		popup.set_item_icon(i, scriptIconTexture)
		
		if dictionaryValues[i] == currentlyOpen:
			popup.set_item_disabled(i,true)
