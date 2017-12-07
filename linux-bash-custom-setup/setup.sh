###Put various setup functionalities into other scripts###
cd setup
chmod 755 *.sh
./init.sh
./predix-install.sh
./developertools.sh $all
./texteditors.sh
./cron.sh
./misc.sh
cd .. > /dev/null

#Create secondary profile
touch ~/.secondary_profile.sh

#Source bash profile
source ~/.bash_profile

###Setup complete###
echo -e "\n\n\nSetup Complete."
echo -e "Note, you may need to remove the following line from your .bash_profile (find it in you home directory; it is a hidden file):\n\talias pip='pip2'"
return 0