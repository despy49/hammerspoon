-- Make F12 (the button where PrintScreen is on PC keyboards) send ctrl-shift-cmd-4
hs.hotkey.bind({}, 'f12', function() hs.eventtap.keyStroke({'ctrl', 'shift', 'cmd'}, '4', 0) end)
