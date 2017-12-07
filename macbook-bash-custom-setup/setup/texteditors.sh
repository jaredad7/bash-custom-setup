###Install Text Editors###
mkdir temp
cd temp

echo -e "\033[93mInstalling Text Editors...\033[0m"

#Install Sublime
decision="y"
if [ -e /usr/local/bin/subl ]
	then
	echo -e "\033[34mSublime Text already installed!\033[0m"
else
	echo -e "\nInstall Sublime Text? (y/n): "
	read decision
	if [ ! "$decision" == "n" ]
		then
		/usr/local/bin/brew cask install sublime-text
	fi
fi

#Install Brackets
decision="y"
if [ -e /Applications/Brackets.app/Contents/Resources/brackets.sh ]
	then
	echo -e "\033[34mBrackets already installed!\033[0m"
else
	echo -e "\nInstall Brackets? (y/n): "
	read decision
	if [ ! "$decision" == "n" ]
		then
		/usr/local/bin/brew cask install brackets
	fi
fi

#Install Atom
decision="y"
if [ -e /usr/local/bin/atom ]
	then
	echo -e "\033[34mBrackets already installed!\033[0m"
else
	echo -e "\nInstall Brackets? (y/n): "
	read decision
	if [ ! "$decision" == "n" ]
		then
		/usr/local/bin/brew cask install atom
	fi
fi

cd - > /dev/null
rm -Rf temp

exit 0