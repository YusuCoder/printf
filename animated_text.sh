#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
RESET='\033[0m'

tput civis

display_frame(){
    local text=("$@")
    local rows=${#text[@]}
    local cols=${#text[0]}
    local start_row=0
    local start_col=0

    clear

    for (( i=0; i<rows; i++ )); do
        tput cup $(( start_row + i )) $start_col

        echo -e "${MAGENTA}${text[$i]}${RESET}"
    done
    sleep 0.5
}

animation_name=$(cat animated_cat.sh)
cd ./text_files

frames=$(cat text_List)

frame_count=$(echo "$frames" | wc -l)
current_frame_index=1

while [ $current_frame_index -le $frame_count ]; do
    frame=$(echo "$frames" | sed -n "${current_frame_index}p")
    frameText=()
    while IFS= read -r line; do
        frameText+=("$line")
    done < "$frame"

    display_frame "${frameText[@]}"
    ((current_frame_index++))

    if [ $current_frame_index -gt $frame_count ]; then
        break
    fi
done

cd ..

tput cnorm


# display_frame(){
#     local text=("$@")
#     local rows=${#text[@]}
#     local cols=${#text[0]}
#     local start_row=0
#     local start_col=0

#     clear

#     for (( i=0; i<rows; i++ )); do
#         tput cup $(( start_row + i )) $start_col

#         echo -e "${RED}${text[$i]}${RESET}"
#     done
#     sleep 0.5
# }

# animation_name=$(cat animated_cat.sh)

# frames=$(cat text_List)

# while true; do
#     for frame in $frames; do
#         frameText=()
#         while IFS= read -r line; do
#             frameText+=("$line")
#         done < "$frame"

#         display_frame "${frameText[@]}"
#     done
# done

# tput cnorm

