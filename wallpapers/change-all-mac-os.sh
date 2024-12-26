#/bin/bash

WALLPAPER_DIR="~/Gallery/Photos/Wallpapers"


WALLPAPER1="MacBook Pro 2021 14/MBP_2021_14_dark.jpg"
# WALLPAPER1="MacBook Pro 2021 14/MBP_2021_14_xray_dark.jpg"
# WALLPAPER1="MacBook Pro 2021 14/MBP_2021_14.jpg"
# WALLPAPER1="MacBook Pro 2021 14/MBP_2021_14_xray.jpg"


WALLPAPER2="São Paulo Panorama/São Paulo Panorama 1-left 1920x1080.png"
WALLPAPER3="São Paulo Panorama/São Paulo Panorama 2-center 1920x1080.png"
WALLPAPER4="São Paulo Panorama/São Paulo Panorama 3-right 1920x1080.png"

# WALLPAPER2="Serra Fina IV/Serra Fina IV panorama 01 1-left 1920x1080.png"
# WALLPAPER3="Serra Fina IV/Serra Fina IV panorama 01 2-center 1920x1080.png"
# WALLPAPER4="Serra Fina IV/Serra Fina IV panorama 01 3-right 1920x1080.png"

# WALLPAPER2="Serra Fina IV/Serra Fina IV panorama 02 1-left 1920x1080.png"
# WALLPAPER3="Serra Fina IV/Serra Fina IV panorama 02 2-center 1920x1080.png"
# WALLPAPER4="Serra Fina IV/Serra Fina IV panorama 02 3-right 1920x1080.png"

# WALLPAPER2="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 1 1-left 1920x1080.png"
# WALLPAPER3="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 1 2-center 1920x1080.png"
# WALLPAPER4="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 1 3-right 1920x1080.png"

# WALLPAPER2="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 2 1-left 1920x1080.png"
# WALLPAPER3="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 2 2-center 1920x1080.png"
# WALLPAPER4="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 2 3-right 1920x1080.png"

# WALLPAPER2="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 3 1-left 1920x1080.png"
# WALLPAPER3="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 3 2-center 1920x1080.png"
# WALLPAPER4="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 3 3-right 1920x1080.png"

# WALLPAPER2="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 4 1-left 1920x1080.png"
# WALLPAPER3="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 4 2-center 1920x1080.png"
# WALLPAPER4="Chapada Diamantina IV/03 sliced/Chapada Diamantina IV 4 3-right 1920x1080.png"


KEY_CODES=(18 19 20 21 23 22 26 28 25 29) # refers desktops 1, 2, ... 8, 9, 0
KEY_CODE_F11=103
SLEEP=0.5

for i in "${KEY_CODES[@]}"; do
  # ctrl+alt+(0-9) to change desktop
  osascript -e "tell application \"System Events\" to key code $i using {control down, option down}"
  sleep $SLEEP

  # F11 to show desktop
  osascript -e "tell application \"System Events\" to key code $KEY_CODE_F11"
  sleep $SLEEP

  osascript -e "tell application \"System Events\" to set picture of desktop 1 to \"$WALLPAPER_DIR/$WALLPAPER1\""
  osascript -e "tell application \"System Events\" to set picture of desktop 2 to \"$WALLPAPER_DIR/$WALLPAPER2\""
  osascript -e "tell application \"System Events\" to set picture of desktop 3 to \"$WALLPAPER_DIR/$WALLPAPER3\""
  osascript -e "tell application \"System Events\" to set picture of desktop 4 to \"$WALLPAPER_DIR/$WALLPAPER4\""
  sleep $SLEEP

  # F11 to restore windows
  osascript -e "tell application \"System Events\" to key code $KEY_CODE_F11"
  sleep $SLEEP
done

# ctrl+alt+1 to go to first desktop
osascript -e "tell application \"System Events\" to key code 18 using {control down, option down}"
