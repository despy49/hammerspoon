hs.loadSpoon("Seal")
hs.loadSpoon("PopupTranslateSelection")
hs.loadSpoon("DeepLTranslate")


Install:andUse("Seal",
	{
        	hotkeys = { show = { {"alt"}, "space" } },
                fn = function(s)
                s:loadPlugins({"apps", "calc", "safari_bookmarks", "screencapture", "useractions"})
                s.plugins.safari_bookmarks.always_open_with_safari = false
                s.plugins.useractions.actions =
                     {
                        --<<useraction-definitions>>
			
			["Hammerspoon docs webpage"] = {
  				url = "http://hammerspoon.org/docs/",
  				icon = hs.image.imageFromName(hs.image.systemImageNames.ApplicationIcon),
			},
			
			--[[
				["Translate using Leo"] = {
					url = "http://dict.leo.org/englisch-deutsch/${query}",
  					icon = 'favicon',
  					keyword = "leo",
				}
			]]

			--[[
				["Leave corpnet"] = {
  					fn = function()
    					spoon.WiFiTransitions:processTransition('foo', 'corpnet01')
  					end,
  					icon = work_logo,
				},

				["Arrive in corpnet"] = {
  					fn = function()
    					spoon.WiFiTransitions:processTransition('corpnet01', 'foo')
  					end,
  					icon = work_logo,
				},
			]]
                     }
                s:refreshAllCommands()
                end,
                start = true,
        }
)


local wm=hs.webview.windowMasks
Install:andUse("PopupTranslateSelection",
	{
        	disable = false,
                config = {
                	popup_style = wm.utility|wm.HUD|wm.titled|
                     	wm.closable|wm.resizable,
                },
                hotkeys = {
                	translate_to_en = { hyper, "e" },
                   	translate_to_de = { hyper, "d" },
                   	translate_to_es = { hyper, "s" },
                   	translate_de_en = { shift_hyper, "e" },
                   	translate_en_de = { shift_hyper, "d" },
                }
        }
)


Install:andUse("DeepLTranslate",
	{
        	disable = false,
                config = {
                   	popup_style = wm.utility|wm.HUD|wm.titled|
                     	wm.closable|wm.resizable,
                },
                hotkeys = {translate = { hyper, "e" },}
        }
)
