#!/bin/zsh
 
ip_address=$(cat ~/.config/bin/target | awk '{print $1}')
machine_name=$(cat ~/.config/bin/target | awk '{print $2}')
 
if [ $ip_address ] && [ $machine_name ]; then
    echo "%{F#000000} ${F#ffffff}$ip_address%{u-}  $machine_name"
else
    echo "${F#000000} %{u-}%{F#000000} No target"
fi
