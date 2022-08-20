#!/usr/bin/env bash

set -euo pipefail

readonly hwmon_path=/sys/devices/platform/dell_smm_hwmon/hwmon/hwmon?

function set_fan() {
  echo "$1" > $hwmon_path/pwm1
}

echo Starting fan loop

while sleep 5; do
  temp="$(cat $hwmon_path/temp2_input)"

  if [[ $temp > 60000 ]]; then
    set_fan 200
  elif [[ $temp > 50000 ]]; then
    set_fan 100
  else
    set_fan 0
  fi
done
