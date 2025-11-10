hs.logger.defaultLogLevel="info"
hs.loadSpoon("SpoonInstall")

--smart config reloading
--hs.loadSpoon("ReloadConfiguration")
--spoon.ReloadConfiguration:start()

--sync notifications are easier to read
spoon.SpoonInstall.use_syncinstall = true

hyper       = {"cmd","alt","ctrl"}
shift_hyper = {"cmd","alt","ctrl","shift"}
ctrl_cmd    = {"cmd","ctrl"}

--abbreviations
col = hs.drawing.color.x11
Install=spoon.SpoonInstall

for file in hs.fs.dir("include/") do
    if file:sub(-4) == '.lua' then
        local name = "include." .. file:sub(1, -5) -- name.lua -> include.name
        require(name)
    end
end

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
configWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/hammerspoon/", reloadConfig):start()
Install:andUse("FadeLogo", {config = {default_run = 0.6,}, start = true})
hs.notify.new({title = 'Hammerspoon', informativeText = 'Config loaded'}):send()
