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

### Touchpad

Set scroll speed:
`sudo xinput list`
`xinput list-props '21' | grep -i scroll`
`xinput set-prop 21 "libinput Scrolling Pixel Distance" 290`

### Karabiner

Edit `~/.config/karabiner/karabiner.json`
