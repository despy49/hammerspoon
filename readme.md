#Install hammerspoon
```bash
brew install hammerspoon
mkdir -p ~/.config/hammerspoon/Spoons
```

#Download spoons 
```bash
git clone https://github.com/Hammerspoon/Spoons.git hs-spoons && cd hs-spoons/Spoons
find ./ -type f -name "*.zip" -d 1 -exec sh -c  "unzip -d $HOME/.config/hammerspoon/Spoons {}" '{}' \; 
cd ../.. && rm -rf hs-spoons
```

# Change HS Spoons directories
```bash
echo -e 'HOME = os.getenv("HOME")\npackage.path= HOME.."/.config/hammerspoon/?.lua;"..HOME.."/.config/hammerspoon/?/?.lua;"..package.path\npackage.cpath = HOME.."/.config/hammerspoon/?.so;"..package.cpath' > ~/.config/hammerspoon/init.lua
```
#Change HS HOME dir
```bash
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"
```

#Start hammerspoon
```
open -n /Applications/Hammerspoon.app
```
