#!/usr/bin/env bash

status=$(bspc config -d focused window_gap)

if [ $status = 0 ]; then
  bspc config border_width         1
  bspc config -d focused window_gap      5
  bspc config -d focused top_padding     25
  bspc config -d focused bottom_padding  25
  bspc config -d focused left_padding   50
  bspc config -d focused right_padding  50
else
  bspc config border_width         1
  bspc config -d focused window_gap       0
  bspc config -d focused top_padding      0
  bspc config -d focused bottom_padding   0
  bspc config -d focused left_padding     0
  bspc config -d focused right_padding    0
fi
