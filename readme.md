#Install hammerspoon
```bash
brew install hammerspoon
mkdir -p ~/.config/hammerspoon/Spoons
```

#Download spoons 
```bash
git clone https://github.com/Hammerspoon/Spoons.git hs-spoons && cd hs-spoons/Spoons
find ./ -type f -iname ".zip" -d 1 -exec unzip {'-d', '$HOME/.config/hammerspoon/Spoons/'} \;
cd .. && rm -rf hs-spoons
```

# Change HS Spoons directories
```bash
echo 'HOME = os.getenv("HOME")' > ~/hammerspoon/init.lua

echo 'package.path= HOME.."/.config/hammerspoon/?.lua;"..HOME.."/.config/hammerspoon/?/?.lua;"..package.path
' >> ~/.hammerspoon/init.lua

echo 'package.cpath = HOME.."/.config/hammerspoon/?.so;"..package.cpath
' >> ~/.hammerspoon/init.lua
```
#Change HS HOME dir
```bash
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"
```

#Start hammerspoon
```
open -n /Applications/Hammerspoon.app
```
