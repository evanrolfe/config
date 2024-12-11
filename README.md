# Config

### Keyboard

https://askubuntu.com/questions/482678/how-to-add-a-new-keyboard-layout-custom-keyboard-layout-definition

0. Keyboard settings -> make caps lock and additional escape

1. Add the sculpt keyboard here:
/usr/share/X11/xkb/symbols/gb

2. Add the sculpt GB variant keyboard here under `English (UK)` keyboard inside `<variantList></variantList>`:
/usr/share/X11/xkb/rules/evdev.xml
```
        <variant>
          <configItem>
            <name>sculpt</name>
            <description>English (UK, Microsoft Sculpt)</description>
          </configItem>
        </variant>
```

3. Add keyboard in setings

### VSCode
Ubuntu: (replace cmd=>ctrl) and set: `~/.config/Code/User/settings.json`, `~/.config/Code/User/keybindings.json`

### Touchpad

Set scroll speed:
`sudo xinput list`
`xinput list-props '21' | grep -i scroll`
`xinput set-prop 21 "libinput Scrolling Pixel Distance" 290`

Disable middle click on thinkpad (set it to left click):
`xinput` get the ID of the Touchpad

`xinput --get-button-map 15`, copy the numbers

`xinput --set-button-map 15 1 1 3 4 5 6 7` change the second value to 1.

Make it permanent by saving `Option "ButtonMapping" "1 1 3 4 5 6 7"` under `libinput touchscreen catchall` i.e.
```
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "ButtonMapping" "1 1 3 4 5 6 7"
EndSection
```

https://forums.linuxmint.com/viewtopic.php?t=396767

### Karabiner

Edit `~/.config/karabiner/karabiner.json`
