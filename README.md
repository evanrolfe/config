# Config

### Keyboard

https://askubuntu.com/questions/482678/how-to-add-a-new-keyboard-layout-custom-keyboard-layout-definition

0. Keyboard settings -> make caps lock and additional escape

1. Edit:
/usr/share/X11/xkb/symbols/gb

2. Edit:
/usr/share/X11/xkb/rules/evdev.xml

3. Add keyboard in setings

### VSCode

### Touchpad

Set scroll speed:
`sudo xinput list`
`xinput list-props '21' | grep -i scroll`
`xinput set-prop 21 "libinput Scrolling Pixel Distance" 290`

### Karabiner

Edit `~/.config/karabiner/karabiner.json`
