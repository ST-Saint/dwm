run_once () {
    if ! pgrep -x ${1} > /dev/null
    then
        shift
        $@ &
    fi
}

run_once dwmblocks $HOME/.dwm/dwmblocks/dwmblocks
run_once dunst dunst
run_once picom picom
run_once volumicon volumeicon
run_once ibus-daemon ibus-daemon -x -d
run_once nitrogen nitrogen --no-startup-id --restore
run_once flameshot flameshot
run_once netease-cloud-m netease-cloud-music
run_once WeChat WeChat
run_once discord discord
run_once emacs LC_LANG=zh_cn emacs
run_once chrome google-chrome-stable
