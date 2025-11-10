--[[	Load private config
	local localfile = hs.configdir .. "/local/init-local.lua"
	if hs.fs.attributes(localfile) then
  		dofile(localfile)
	end
]]

function BTT_restart_hammerspoon(s)
  BTT:bindSpoonActions(s, {
                         config_reload = {
                           kind = 'touchbarButton',
                           uuid = "FF8DA717-737F-4C42-BF91-E8826E586FA1",
                           name = "Restart",
                           icon = hs.image.imageFromName(
                             hs.image.systemImageNames.ApplicationIcon),
                           color = hs.drawing.color.x11.orange,
  }})
end
