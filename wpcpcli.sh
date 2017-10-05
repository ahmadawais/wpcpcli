#! /usr/bin/env bash
# WPC Partners Readme CLI (`wpcpcli`).
#
# Version: 1.0.0
# Author: Ahmad Awais
# Author URL: https://AhmadAwais.com/
#
#️ Usage: grcli

VERSION="1.0.0"

# Defaults.
####.#### ———————————————————————————————————————————— COLORS ———————————————————————————————————————————— ####.####
# colors from tput
# http://stackoverflow.com/a/20983251/950111
# Num  Colour    #define         R G B
# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1
#
# tput setab [1-7] # Set the background colour using ANSI escape
# tput setaf [1-7] # Set the foreground colour using ANSI escape
# tput sgr0    # Reset text format to the terminal's default
# tput bel     # Play a bell
#
# Usage:
# red=`tput setaf 1`
# green=`tput setaf 2`
# r=`tput sgr0`
# echo "${rb}red text ${green}green text${r}"

bb=`tput setab 0` #set background black
bf=`tput setaf 0` #set foreground black

gb=`tput setab 2` # set background green
gf=`tput setab 2` # set background green

blb=`tput setab 4` # set background blue
blf=`tput setaf 4` # set foreground blue

rb=`tput setab 1` # set background red
rf=`tput setaf 1` # set foreground red

wb=`tput setab 7` # set background white
wf=`tput setaf 7` # set foreground white

r=`tput sgr0`     # r to defaults

# CLI Start!
clear

echo "——————————————————————————————————"
echo "${gb}${bf}
⚡️ WPCouple Partners Readme CLI (wpcpcli)
— Version: $VERSION
${r}"


echo "-"
echo "——————————————————————————————————"
echo "${wb}${bf}➤  REPO URL:${r}"
echo "——————————————————————————————————"
read -r THE_REPO_URL

# Move to Sandbox.
cd /Users/"$USER"/web/sandbox

# Clone the repo.
rm -rf 'WPCPCLI_TMP'
mkdir 'WPCPCLI_TMP'
cd WPCPCLI_TMP
git clone $THE_REPO_URL .

#
# Readme Edits.
#

# Add HTML Table description at the top of readme file.
echo "
---
### 🙌 [WPCOUPLE PARTNERS](https://WPCouple.com/partners):
This open source project is maintained by the help of awesome businesses listed below. What? [Read more about it →](https://WPCouple.com/partners)

<table width='100%'>
    <tr>
        <td width='225'><a target='_blank' href='https://www.gravityforms.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrE/c' /></a></td>
        <td width='225'><a target='_blank' href='https://kinsta.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu5O/c' /></a></td>
        <td width='225'><a target='_blank' href='https://wpengine.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mto3/c' /></a></td>
        <td width='225'><a target='_blank' href='https://www.sitelock.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtyZ/c' /></a></td>
    </tr>
    <tr>
        <td width='225'><a target='_blank' href='https://wp-rocket.me/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrv/c' /></a></td>
        <td width='225'><a target='_blank' href='https://blogvault.net/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtph/c' /></a></td>
        <td width='225'><a target='_blank' href='http://cridio.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtmy/c' /></a></td>
        <td width='225'><a target='_blank' href='http://wecobble.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrW/c' /></a></td>
    </tr>
    <tr>
        <td width='225'><a target='_blank' href='https://www.cloudways.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu0C/c' /></a></td>
        <td width='225'><a target='_blank' href='https://www.cozmoslabs.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu9W/c' /></a></td>
        <td width='225'><a target='_blank' href='https://wpgeodirectory.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtwv/c' /></a></td>
        <td width='225'><a target='_blank' href='https://www.wpsecurityauditlog.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtkh/c' /></a></td>
    </tr>
    <tr>
        <td width='225'><a target='_blank' href='https://www.liquidweb.com//?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtnt/c' /></a></td>
        <td width='225'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
        <td width='225'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
        <td width='225'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
    </tr>
</table>
" >> README.md

echo "-"
echo "——————————————————————————————————"
echo "${wb}${bf}➤  PUSHING NOW...${r}"
echo "——————————————————————————————————"

git add README.md
git commit -m 'ADD: ReadMe FOSS WPCouple Partners info.'
git push

cd /Users/"$USER"/web/sandbox
rm -rf 'WPCPCLI_TMP'

echo "——————————————————————————————————"
echo "✅✅✅✅ DONE! 🎉 ✅✅✅✅"
echo "——————————————————————————————————"
