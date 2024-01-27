#!/usr/bin/env bash

# SOURCES:
# https://github.com/magical-heyrovsky
# https://github.com/flatpak/flatpak/issues/994#issuecomment-1484158855
# https://apple.stackexchange.com/questions/296477/my-command-line-says-complete13-command-not-found-compdef
# https://unix.stackexchange.com/questions/353076/how-to-indent-an-heredoc-inside-an-heredoc-the-right-way

# * leading tabs: indent here-document (heredoc)
# * spaces: indent code within heredoc
if [[ $# -eq 0 ]]; then
	cat <<- 'DESCRIPTION'

	SETUP:
	    Place in path (e.g., /usr/local/bin/fp) and make executable (chmod +x fp).

	USAGE:
	    fp <app>

	DESCRIPTION
	exit 0
fi

# fp auto-completion
() {
	# list of each flatpak app name in lowercase ("Brave Browser" == "brave")
	local FLATPAK_APPS=$(flatpak list --app | cut -f1 | awk '{print tolower($1)}')
	autoload -Uz bashcompinit && bashcompinit
	autoload -Uz compinit && compinit
	complete -W $FLATPAK_APPS fp
}

# run flatpak apps from cli (e.g., "fp okular")
function fp() {
	app=$(flatpak list --app | cut -f2 | awk -v app="$1" '(tolower($NF) ~ tolower(app))')

	# abort if the app name was not entered
	test -z $1 && printf "\nINSTALLED APPS\n$app\n" && return

	# remove app name from "$@" array
	shift 1

	# run the flatpak app async (subshell in background) and don't show any stdout and stderr
	( flatpak run "$app" "$@" &> /dev/null & )
}

# launch main function with all arguments
fp "$@"
