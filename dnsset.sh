#!/bin/bash
mydns=$(curl https://shecan.ir/ -q | lynx -stdin -dump | grep DNS: -A 1 | grep -o '[1-9].*[0-9]$' | awk '{print $1}')
resolvectl dns wlp3s0 $mydns
