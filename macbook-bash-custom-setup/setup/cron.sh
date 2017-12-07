###Adds a few commands to the crontab. All of them are optional###

###Add command to the user's crontab to update homebrew at lunchtime everyday.

check="~/.custom_bash_scripts/update-brew.sh"
isThere=$(crontab -l | grep "~/.custom_bash_scripts/update-brew.sh")
if [ isThere == "" ]
	then
		echo -e "\nWould you like a scheduled job to update homebrew and its installed applications every day at noon? (y/n): "
		read decision
		if [ "$decision" == "y" ]
		then
			line="0 12 * * * ~/.custom_bash_scripts/update-brew.sh"
			(crontab -l; echo "$line" ) | crontab -
		else
			echo echo -e "\033[91mSkipping Homewbrew Update Job Install!\033[0m"
		fi
else
	echo -e "\033[34mHomebrew Update Job already installed!\033[0m"
fi