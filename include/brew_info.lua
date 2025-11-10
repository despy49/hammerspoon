hs.loadSpoon("BrewInfo")
Install:andUse("BrewInfo",
	{
        	config = {
                	brew_info_style = {
                     	textFont = "Inconsolata",
                     	textSize = 14,
                     	radius = 10 }
                },
                
		hotkeys = {
                   show_brew_info = {hyper, "b"},
                   open_brew_url = {shift_hyper, "b"},
                }
        }
)
