HOME = os.getenv("HOME")
HS_HOME = HOME.."/.config/hammespoon"


hs.logger.defaultLogLevel="debug"

hs.loadSpoon("SpoonInstall")
hs.loadSpoon("ReloadConfiguration")

Install = spoon.SpoonInstall
Install.use_syncinstall = true


col = hs.drawing.color.x11

hyper       = {"cmd","alt","ctrl"}
shift_hyper = {"cmd","alt","ctrl","shift"}
ctrl_cmd    = {"cmd","ctrl"}


configWatchPaths = {
	HS_HOME.."/init.lua",
	HS_HOME.."/lib",
	HS_HOME.."/include"
}

Install:andUse("ReloadConfiguration", {watch_paths=configWatchPaths,start=true})
Install:andUse("FadeLogo", {config = {default_run = 0.3,}, start = true})
hs.notify.new({title = 'Hammerspoon', informativeText = 'Config loaded'}):send()
