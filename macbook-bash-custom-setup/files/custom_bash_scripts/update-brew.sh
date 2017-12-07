#Update brew and brew cask.
output=$(ps -o stat= -p $$)
trimmed="$(echo -e "${output}" | tr -d '[:space:]')"

#User wants help, then exit.
if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
	echo "Runs brew update and brew upgrade."
	echo "If run in background, it will be silent."
	exit 0
fi

if [ "$trimmed" == "S" ]
then #Running in background, be silent.
	/usr/local/bin/brew update >> /dev/null
	/usr/local/bin/brew upgrade >> /dev/null
else #Not in background, do not be silent.
	/usr/local/bin/brew update
	/usr/local/bin/brew upgrade
fi