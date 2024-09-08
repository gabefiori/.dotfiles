#!/usr/bin/env bash

dir="$HOME/.config/rofi/"
theme='theme'

rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi

