hs.loadSpoon("EjectMenu")
Install:andUse("EjectMenu", {
	config = {
        		eject_on_lid_close = false,
                	eject_on_sleep = false,
                	show_in_menubar = true,
                	notify = true,
                 },
        hotkeys = { ejectAll = { hyper, "=" } }, start = true,
})
