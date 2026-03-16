#!/usr/bin/env dash


# USE FOR PERCENTAGE + USAGE
# amdgpu_top -J -n 1 | jq -r '(.devices[] | (.Info.DeviceName + ": " + (.gpu_activity.GFX.value|tostring ) + "%" + ", " + (.VRAM."Total VRAM Usage".value|tostring) + "/" + (.VRAM."Total VRAM".value|tostring) + "MiB"))' | sed 's/^.*: \([0-9]\+%\), \([0-9]\+\/[0-9]\+MiB\)$/\1 \2/'

# JUST PERCENTAGE
amdgpu_top -J -n 1 | jq -r '.devices[0] | "\(.gpu_activity.GFX.value)%"'
