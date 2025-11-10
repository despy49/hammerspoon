hs.loadSpoon("WindowGrid")
--hs.loadSpoon("ToggleScreenRotation)
hs.loadSpoon("WindowHalfsAndThirds")
hs.loadSpoon("WindowScreenLeftAndRight")



--key binding to overlay a grid that allows resizing windows by specifying their opposite corners
myGrid = { w = 6, h = 4 }
Install:andUse("WindowGrid",
	{
        	config = { gridGeometries = {{ myGrid.w .."x" .. myGrid.h }} },
                hotkeys = {show_grid = {hyper, "g"}},
                start = true
        }
)


--Install:andUse("ToggleScreenRotation",{hotkeys = {first = {hyper, "f11"}}})


window_tiling_hotkeys = {
	left_half   = { {"ctrl",        "cmd"}, "Left" },
    	right_half  = { {"ctrl",        "cmd"}, "Right" },
    	top_half    = { {"ctrl",        "cmd"}, "Up" },
    	bottom_half = { {"ctrl",        "cmd"}, "Down" },
    	third_left  = { {"ctrl", "alt"       }, "Left" },
    	third_right = { {"ctrl", "alt"       }, "Right" },
    	third_up    = { {"ctrl", "alt"       }, "Up" },
    	third_down  = { {"ctrl", "alt"       }, "Down" },
    	top_left    = { {"ctrl",        "cmd"}, "1" },
    	top_right   = { {"ctrl",        "cmd"}, "2" },
    	bottom_left = { {"ctrl",        "cmd"}, "3" },
    	bottom_right= { {"ctrl",        "cmd"}, "4" },
    	max_toggle  = { {"ctrl", "alt", "cmd"}, "f" },
    	max         = { {"ctrl", "alt", "cmd"}, "Up" },
    	undo        = { {        "alt", "cmd"}, "z" },
    	center      = { {        "alt", "cmd"}, "c" },
    	larger      = { {        "alt", "cmd", "shift"}, "Right" },
    	smaller     = { {        "alt", "cmd", "shift"}, "Left" },
}

Install:andUse("WindowHalfsAndThirds",
	{
        	config = {use_frame_correctness = true},
                hotkeys = window_tiling_hotkeys,
--              loglevel = 'debug'
        }
)


Install:andUse("WindowScreenLeftAndRight",
	{
        	config = {animationDuration = 0},
                hotkeys = 'default',
--              loglevel = 'debug'
        }
)

--Install:andUse("ToggleScreenRotation", {hotkeys = { first = {hyper, "f12"}}})
