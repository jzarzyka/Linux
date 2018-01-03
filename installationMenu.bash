#!/bin/bash

# Store options selected by the user
USER_DATA=/tmp/menu.sh.$$

function language(){
	dialog --clear -- title "Language" --menu "Please select:" 10 50 2 \ #box height, width, menu
		1 English \
		2 Polish 2>$USER_DATA
	lang=$(<$USER_DATA)
}

function nodeVersionManager(){
	dialog --clear --title "Node.JS version" --menu "Please select:" 10 50 2 \
		1 32-bit \
		2 64-bit 2>$USER_DATA
	version=$(<$USER_DATA)
}

function plugins(){
	dialog --clear --title "JavaScript linters" --menu "Please select:" 10 50 2 \
		1 ESLint \
		2 JSHint 2>$USER_DATA
	plugins=$(<$USER_DATA)
}

function debuggers(){
	dialog --clear --title "Debuggers" --menu "Please select:" 10 50 2 \
		1 Node inspector \
		2 Node debugger 2>$USER_DATA
	debuggers=$(<$USER_DATA)
}

function database(){
	dialog --clear --title "Database" --menu "Please select:" 10 50 2 \
		1 NoSQL \
		2 SQL 2>$USER_DATA
	database=$(<$USER_DATA)
}

function sqlType(){
	dialog --clear --title "SQL database" --menu "Please select:" 10 50 3 \
		1 MySQL \
		2 PostgreSQL \
		3 Oracle 2>$USER_DATA
	sqlType=$(<$USER_DATA)
}

function ide(){
	dialog --clear --title "IDE" --menu "Please select:" 10 50 4 \
		1 VS Code \
		2 Webstorm \
		3 Atom \
		4 Sublime Text 2>$USER_DATA
	ide=$(<$USER_DATA)
}

function browser(){
	dialog --clear --title "Browser" --menu "Please select:" 10 50 4 \
		1 Google Chrome \
		2 Firefox \
		3 Chromium \
		4 Opera 2>$USER_DATA
	browser=$(<$USER_DATA)
}

function versionControlSystem(){
	dialog --clear -- title "Version Control System" --menu "Please select:" 10 50 2 \ #box height, width, menu
		1 GitHub \
		2 Other 2>$USER_DATA
	versionControlSystem=$(<$USER_DATA)
}

function installation(){
	while true; do
	clear
	
	#language
	
	nodeVersionManager
	case $version in
		1) #installation command
			;;
		2) #installation command
			;;
	esac
	
	plugins
	case $plugins in
		1) #installation command
			;;
		2) #installation command
			;;
	esac
	
	debuggers
	case $debuggers in
		1) #installation command
			;;
		2) #installation command
			;;
	esac
	
	database
	case $database in
		1) #installation command
			;;
		2) sqlType
			case $sqlType in
			1) #installation command
				;;
			2) #installation command
				;;
			esac
		;;
	esac
	
	ide
	case $ide in
		1) #installation command
			;;
		2) #installation command
			;;
		3) #installation command
			;;
		4) #installation command
			;;
	esac
	
	browser
	case $browser in
		1) #installation command
			;;
		2) #installation command
			;;
		3) #installation command
			;;
		4) #installation command
			;;
	esac
	
	versionControlSystem
	case $versionControlSystem in
		1) #installation command
			;;
		2) #installation command
			;;
	esac
	
	done
}

installation
rm $USER_DATA
clear
