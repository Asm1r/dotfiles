xrdb -merge .Xresources
xset m 4 &
xset r rate 200 50 &
setxkbmap -layout us -option caps:swapescape
xsetroot -cursor_name left_ptr
redshift -l 44.7569:19.126 -m vidmode -r &
unclutter &
sinac -w 1800 && sudo pm-suspend &
imlibsetroot ~/pictures/wallpaper &
getmail.sh &
exec startdwm.sh
