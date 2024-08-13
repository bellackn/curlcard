#!/usr/bin/env sh

###############################################
# Write a nice business card on the terminal. #
###############################################

######################################
# Font attributes                    #
######################################
bold="$(tput bold)"      #[1m
underline="$(tput smul)" #[4m
end_underline="$(tput rmul)"
hidden="$(tput invis)"
reverse="$(tput rev)"
reset="$(tput sgr0)"
# dim="$(tput dim)"
# blink="$(tput blink)"

######################################
# Background colours                 #
######################################
bg_black="$(tput setab 0)"
bg_red="$(tput setab 1)"
bg_green="$(tput setab 2)"
bg_yellow="$(tput setab 3)"
bg_blue="$(tput setab 4)"
bg_magenta="$(tput setab 5)"
bg_cyan="$(tput setab 6)"
bg_white="$(tput setab 7)"
bg_purple="$(tput setab 8)"
bg_default="$(tput setab 9)"

######################################
# Foreground colours                 #
######################################
black="$(tput setaf 0)"   #[30m
red="$(tput setaf 1)"     #[31m
green="$(tput setaf 2)"   #[32m
yellow="$(tput setaf 3)"  #[33m
blue="$(tput setaf 4)"    #[34m
magenta="$(tput setaf 5)" #[35m
cyan="$(tput setaf 6)"    #[36m
white="$(tput setaf 7)"   #[?m
purple="$(tput setaf 8)"  #[?m
default="$(tput setaf 9)" #[?m

cat <<EOF | tee card
${magenta}╭─────────────────────────────────────────────────────────╮
${magenta}│                                                         │
${magenta}│${reset}               ${bold}${magenta}Nico Bellack${reset}                              ${magenta}│
${magenta}│${reset}               ${bold}${purple}Freelance DevOps Expert 🚀 ${reset}               ${magenta}│
${magenta}│                                                         │
${magenta}│${reset}         ${bold}Web:${reset}  ${cyan}www.bellack.dev                           ${magenta}│
${magenta}│${reset}    ${bold}Mastodon:${reset}  ${cyan}social.linux.pizza${reset}${dim}/${magenta}@n2o                   ${magenta}│
${magenta}│${reset}        ${bold}Chat:${reset}  ${cyan}@bellackn:matrix.org                  ${magenta}    │
${magenta}│                                                         │
${magenta}│${reset}    ${bold}LinkedIn:${reset}  ${cyan}www.linkedin.com${reset}${dim}/in/${magenta}nico-bellack          ${magenta}│
${magenta}│${reset}  ${bold}Recruiting:${reset}  ${blue}hello@bellack.dev                         ${magenta}│
${magenta}│                                                         │
${magenta}│${reset}      ${bold}GitHub:${reset}  ${cyan}github.com${reset}${dim}/${magenta}bellackn                       ${magenta}│
${magenta}│                                                         │
${magenta}│${reset}    ${bold}Curlcard:${reset}  ${green}curl ${cyan}-L ${white}bellack.dev/card ${magenta}                 │
${magenta}│                                                         │
${magenta}╰─────────────────────────────────────────────────────────╯
EOF
