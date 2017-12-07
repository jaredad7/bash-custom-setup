###Initial setup for the rest of the project###

###Copy .bash_profile to the home directory.###
cp ../files/.bash_profile ~/

#Copy all other files to proper directory.
cp -R ../files/custom_bash_scripts/ ~/.custom_bash_scripts/
if [[ -e $(bash -c "echo ~/.custom_bash_scripts/git-completion.bash") ]]
	then
	echo -e "\033[34mGit tab completeion already installed!\033[0m"
else
	/usr/bin/curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.custom_bash_scripts/git-completion.bash
fi
cd ~/.custom_bash_scripts/
chmod 755 *.sh
chmod 755 *.bash
cd - > /dev/null

###Install homebrew###
echo -e "\033[93mInstalling Homebrew...\033[0m"
if [ -e "/usr/local/bin/brew" ]
	then
	echo -e "\033[34mHomebrew already installed!\033[0m"
else
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

exit 0
