cd `dirname $0`

echo -e "\033[32m>> iOS code checker <<\033[0m\n"
while :; do echo
echo -e "Would you like to use the code checker ? [ yes / no ]\n"   
echo -n ">  "
read  flag_read
flag=$(echo $flag_read | tr "[:upper:]" "[:lower:]" )

if [[ "$flag" == "yes" ]]; then

	if [ ! -d "spacecommander" ]; then
		$(git clone 'https://github.com/whihail/spacecommander.git')
	fi
	if [ -f "spacecommander/setup-repo.sh" ]; then
 		$(spacecommander/setup-repo.sh) 
 	fi

 	break

 elif [[ "$flag" == "no" ]]; then

	if [  -d "spacecommander" ]; then
		$(rm -rf "spacecommander")
	fi
	if [  -f ".git/hooks/pre-commit" ]; then
		$(rm -rf ".git/hooks/pre-commit")
	fi
  	sed -i.bak '/codelog=/d' ~/.bash_profile
  	sed -i.bak '/codereset=/d' ~/.bash_profile

	if [[ -L ".clang-format" ]]; then
		 $(rm -rf ".clang-format")
	fi
	
	cd ~/Documents &&  $(rm -rf "codeCheckerCache")

	echo -e "\033[32m>> remove the code checker success \033[0m\n"
	break
 else

	continue
 fi 
 
    break
 done
