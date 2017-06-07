# Ensure we use the appropriate gtkrc-2.0 file
export GTK2_RC_FILES=$HOME/.gtkrc-2.0

# Workaround a bug in XI focus-in events. See:
#  https://bugzilla.gnome.org/show_bug.cgi?id=677329
export GDK_CORE_DEVICE_EVENTS=1

# GDM move Xauthority in some obscure place
# See:
#  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=614972
#  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=586685
[ "$XAUTHORITY" = $HOME/.Xauthority ] || {
    XAUTHORITY=$HOME/.Xauthority xauth merge $XAUTHORITY
    export XAUTHORITY=$HOME/.Xauthority
}
xserverauthfile=$XAUTHORITY

# multi screen
# build-in monitor: 112 dpi xrandr --dpi 112
#xrandr --dpi 96x96 --output VGA1 --primary --auto --output LVDS1 --auto --below VGA1

# merge .Xresource
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# input method
[ -x /usr/bin/fcitx ] && fcitx 2> /dev/null &

# backlight
[ -x /usr/bin/xbacklight ] && xbacklight = 80 2> /dev/null

# ck-launch is no recommended because system-login.service has control all
# Only with dbus-launch nautilus's auto mount feature can works appropriately
#DISPLAY=:0.1
#exec dbus-launch --sh-syntax --exit-with-session awesome &
#DISPLAY=:0.0
exec dbus-launch --sh-syntax --exit-with-session awesome
