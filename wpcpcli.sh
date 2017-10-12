#! /usr/bin/env bash
# WPC Partners Readme CLI (`wpcpcli`).
#
# Version: 1.0.0
# Author: Ahmad Awais
# Author URL: https://AhmadAwais.com/
#
# Usage: wpcpcli [ -c |--config ], [ -h | help ]
#️  - [ -h | help ] Use help
#️  - [ -c | --config ] Already configured repos will be changed.

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

# Declare an array of GITHUB repos.
declare -a THE_GITHUB_REPOS_ARRAY=(
"https://github.com/ahmadawais/WPImgOptimizer"
"https://github.com/ahmadawais/WPGitDeploy-CLI"
"https://github.com/ahmadawais/BR-CLI"
"https://github.com/ahmadawais/WPCustomize"
"https://github.com/ahmadawais/WPSass"
"https://github.com/ahmadawais/YearWithWP"
"https://github.com/ahmadawais/_child"
"https://github.com/ahmadawais/WPGitHubAPI"
"https://github.com/ahmadawais/WPGulpTheme"
"https://github.com/ahmadawais/WPAutoPot"
"https://github.com/ahmadawais/WP-Salts-Update-CLI"
"https://github.com/ahmadawais/TitleCaseIt"
"https://github.com/ahmadawais/WP-Plugin-Age"
"https://github.com/ahmadawais/cPanel-EasyEngine-Migrate-CLI"
"https://github.com/ahmadawais/Twig-Tutorial"
"https://github.com/ahmadawais/IMG-OPT-CLI"
"https://github.com/ahmadawais/Sublime-WP-Customizer"
"https://github.com/ahmadawais/Gutenberg-Boilerplate"
"https://github.com/ahmadawais/WPGulp"
"https://github.com/ahmadawais/git"
"https://github.com/ahmadawais/wpcpcli"
"https://github.com/ahmadawais/WP-HTML-Author-Bio"
"https://github.com/ahmadawais/WPTakeaway"
"https://github.com/ahmadawais/WPDEV"
"https://github.com/ahmadawais/brandfie"
"https://github.com/ahmadawais/ReSass"
"https://github.com/ahmadawais/hyperterm-cobalt3-theme"
"https://github.com/ahmadawais/WPDOEE"
"https://github.com/ahmadawais/Gutenberg-Blocks"
"https://github.com/ahmadawais/WP-REST-Allow-All-CORS"
"https://github.com/ahmadawais/Advanced-Gulp-WordPress"
"https://github.com/ahmadawais/GRCLI"
"https://github.com/ahmadawais/PTCL-CLI"
"https://github.com/ahmadawais/Cobalt3-iTerm"
"https://github.com/ahmadawais/WP-Shortcode-Boilerplate"
"https://github.com/ahmadawais/dotFiles"
"https://github.com/ahmadawais/AA-Google-Analytics"
"https://github.com/ahmadawais/aa.com"
"https://github.com/ahmadawais/Sendy-PHP-API"
"https://github.com/ahmadawais/Say-Hi-The-WPCrowd"
"https://github.com/ahmadawais/TheWPCrowd-Slack"
"https://github.com/ahmadawais/mkdocs-material-custom"
"https://github.com/ahmadawais/Easy-Membership"
"https://github.com/ahmadawais/WP-Welcome-Page-Boilerplate"
"https://github.com/ahmadawais/Debug-Meta-Data"
"https://github.com/ahmadawais/Woo-Keep-The-Change"
"https://github.com/ahmadawais/Twitter-PHP-App-with-API-1.1"
"https://github.com/ahmadawais/html5slides"
"https://github.com/ahmadawais/Talk_Personal_Development_for_a_WordPress_Developer"
"https://github.com/ahmadawais/jekyll-test"
"https://github.com/ahmadawais/aa_plugin"
"https://github.com/ahmadawais/Change-Theme-Version"
"https://github.com/ahmadawais/Link-Shortcodes"
"https://github.com/ahmadawais/WPTallyAPI-Shortcodes"
"https://github.com/ahmadawais/Neat"
"https://github.com/ahmadawais/FB-Quote-Plugin-For-WP"
"https://github.com/ahmadawais/FB-Save-Button-For-WP"
"https://github.com/ahmadawais/PostStatus-Slack-App"
"https://github.com/ahmadawais/aacom-electron"
"https://github.com/ahmadawais/WP-OOP-Settings-API"
)

# Debugger.
# echo "ℹ️ | DEBUG: Starting... | ℹ️ "

# CLI Start!
clear

echo "${gb}${bf}
⚡️ WPCouple Partners Readme CLI (wpcpcli)
— Version: $VERSION
${r}"

# If not preconfig. i.e. running wpcpcli without -c argument :).
if [[ $# -eq 0 ]] ; then
	echo "-"
	echo "——————————————————————————————————"
	echo "${wb}${bf}➤  SINGLE REPO URL:${r}"
	echo "——————————————————————————————————"
	read -r THE_REPO_URL

	#
	# AUTOMATION.
	#

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

	# Split readme from the partners line into xx00 and xx01 files.
	csplit readme.md '/WPCouple.com/partners/'

	# Create wpcpinfo with the info.
	echo "### 🙌 [WPCOUPLE PARTNERS](https://WPCouple.com/partners):
This open source project is maintained by the help of awesome businesses listed below. What? [Read more about it →](https://WPCouple.com/partners)

<table width='100%'>
	<tr>
		<td width='333.33'><a target='_blank' href='https://www.gravityforms.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrE/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://kinsta.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu5O/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://wpengine.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mto3/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='https://www.sitelock.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtyZ/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://wp-rocket.me/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrv/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://blogvault.net/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtph/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='http://cridio.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtmy/c' /></a></td>
		<td width='333.33'><a target='_blank' href='http://wecobble.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrW/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://www.cloudways.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu0C/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='https://www.cozmoslabs.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu9W/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://wpgeodirectory.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtwv/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://www.wpsecurityauditlog.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtkh/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='https://mythemeshop.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/n3ug/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://www.liquidweb.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtnt/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
	</tr>
</table>" > wpcpinfo

	# Add old readme + new wpcpinfo and create a new README.md file.
	cat xx00 wpcpinfo > README.md

	# Remove useless files.
	rm xx00
	rm xx01
	rm wpcpinfo

	echo "-"
	echo "${wb}${bf}➤  PUSHING NOW...${r}"
	echo "-"

	git add .
	git commit -m 'ADD: ReadMe FOSS WPCouple Partners info.'
	git push

	cd /Users/"$USER"/web/sandbox
	rm -rf 'WPCPCLI_TMP'

	echo "——————————————————————————————————————————————————————————————————————————————————————————————————————"
	echo "✅ ${gb}${bf}DONE! 🎉 — GITHUB URL: ${r} $THE_REPO_URL "
	echo "——————————————————————————————————————————————————————————————————————————————————————————————————————"
else
	# Check all params for config
	for i in "$@" ; do
		# Config.
		if [[ $i == "--config" || $i == "-c" ]] ; then
			IS_CONFIG="YES"
		fi

		# Help.
		if [[ $i == "-h" || $i == "help" ]] ; then
			echo "————————————————————————————————————————————————————————————————————"
			echo "⚡️ Usage: ptcli [ -c |--config ], [ -h | help ]"
			echo "⚡️ # Usage: wpcpcli [ -c |--config ], [ -h | help ]"
			echo "⚡️ #️  - [ -h | help ] Use help"
			echo "⚡️ #️  - [ -c | --config ] Already configured repos will be changed."
			echo "————————————————————————————————————————————————————————————————————"
		fi
	done
fi

# If following the preconfig in the CLI.
if [[ $IS_CONFIG == "YES" ]] ; then
	# Loop over all the GitHub Repos.
	for i in "${THE_GITHUB_REPOS_ARRAY[@]}"
	do
		# Individual repo.
		THE_REPO_URL="$i"

		#
		# AUTOMATION.
		#
		echo "-"
		echo "🔥 ${wb}${bf}Starting with a new repo...${r}"
		echo "-"

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

		# Split readme from the partners line into xx00 and xx01 files.
		csplit readme.md '/WPCouple.com/partners/'

		# Create wpcpinfo with the info.
		echo "### 🙌 [WPCOUPLE PARTNERS](https://WPCouple.com/partners):
This open source project is maintained by the help of awesome businesses listed below. What? [Read more about it →](https://WPCouple.com/partners)

<table width='100%'>
	<tr>
		<td width='333.33'><a target='_blank' href='https://www.gravityforms.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrE/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://kinsta.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu5O/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://wpengine.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mto3/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='https://www.sitelock.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtyZ/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://wp-rocket.me/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrv/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://blogvault.net/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtph/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='http://cridio.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtmy/c' /></a></td>
		<td width='333.33'><a target='_blank' href='http://wecobble.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrW/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://www.cloudways.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu0C/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='https://www.cozmoslabs.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu9W/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://wpgeodirectory.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtwv/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://www.wpsecurityauditlog.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtkh/c' /></a></td>
	</tr>
	<tr>
		<td width='333.33'><a target='_blank' href='https://mythemeshop.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/n3ug/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://www.liquidweb.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtnt/c' /></a></td>
		<td width='333.33'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
	</tr>
</table>" > wpcpinfo

		# Add old readme + new wpcpinfo and create a new README.md file.
		cat xx00 wpcpinfo > README.md

		# Remove useless files.
		rm xx00
		rm xx01
		rm wpcpinfo

		echo "-"
		echo "➤ ${wb}${bf}  PUSHING NOW...${r}"
		echo "-"

		git add .
		git commit -m 'ADD: ReadMe FOSS WPCouple Partners info.'
		git push

		cd /Users/"$USER"/web/sandbox
		rm -rf 'WPCPCLI_TMP'

		echo "——————————————————————————————————————————————————————————————————————————————————————————————————————"
		echo "✅ ${gb}${bf}DONE! 🎉 — GITHUB URL: ${r} $THE_REPO_URL "
		echo "——————————————————————————————————————————————————————————————————————————————————————————————————————"
	done
fi


