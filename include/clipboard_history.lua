hs.loadSpoon("TextClipboardHistory")
Install:andUse("TextClipboardHistory",
	{
        	disable = true,
                config = {show_in_menubar = false,},
                hotkeys = {toggle_clipboard = { { "cmd", "shift" }, "v" }},
                start = true,
        }
)
