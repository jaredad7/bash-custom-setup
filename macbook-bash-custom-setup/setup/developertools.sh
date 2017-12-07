###Install basic tools for developers###
echo -e "\033[93mInstalling Basic Developer Tools...\nYou may need to enter your password for some.\033[0m"

###Get User's preferred programs###
#Only do this if all == "f"
if [ "$1" == "t" ]
	then
	inst_java="y"
	inst_py2="y"
	inst_py3="y"
	inst_mvn="y"
	inst_node="y"
else
	echo -e "\n\n\nPlease indicate which dev tools you would like to install.\nTo install all without prompt, press CTRL^C, then run ./setup --all\nDefault behavior assumes 'y'."
	echo "Install Java? (y/n): "
	read inst_java
	echo "Install Python 2 (default for most python apps)? (y/n): "
	read inst_py2
	echo "Install Python 3 (Python 2 will still be available if installed)? (y/n): "
	read inst_py3
	echo "Install Maven? (y/n): "
	read inst_mvn
	echo "Install Node? (y/n): "
	read inst_node
fi

#Java
if [ "$inst_java" == "n" ]
	then
	echo -e "\033[91mSkipping Java Install!\033[0m"
elif [ -e "/usr/bin/java" ] 
	then
	echo -e "\033[34mJava already installed!\033[0m"
else
	/usr/local/bin/brew cask install java
fi

#Python 2
if [ "$inst_py2" == "n" ]
	then
	echo -e "\033[91mSkipping Python 2 Install!\033[0m"
elif [ ! "$(brew list python2)" == "" ]
	then
	echo -e "\033[34mPython already installed!\033[0m"
else
	/usr/local/bin/brew install python
fi

#Python 3
if [ "$inst_py3" == "n" ]
	then
	echo -e "\033[91mSkipping Python 3 Install!\033[0m"
elif [ ! "$(brew list python3)" == "" ]
	then
	echo -e "\033[34mPython3 already installed!\033[0m"
else
	/usr/local/bin/brew install python3
fi

#Maven
if [ "$inst_mvn" == "n" ]
	then
	echo -e "\033[91mSkipping Maven Install!\033[0m"
elif [ ! "$(brew list maven)" == "" ]
	then
	echo -e "\033[34mMaven already installed!\033[0m"
else
	/usr/local/bin/brew install maven
fi

#Node
if [ "$inst_node" == "n" ]
	then
	echo -e "\033[91mSkipping Node Install!\033[0m"
elif [ ! "$(brew list node)" == "" ]
	then
	echo -e "\033[34mNode already installed!\033[0m"
else
	/usr/local/bin/brew install node
fi

exit 0