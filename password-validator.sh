#!/bin/bash
##input password for user check
Red='\033[0;31m'   # Red
Green='\033[0;32m' # Green
reset_color='\033[0m'
pass1=$1      # Takes Argument

##function password_validetor() { ##Function with all the parameters check
###Check Password Length and its contains

while getopts "f" flag; do
    case $flag in
        f)
            file=$2
            while read pass1; do
                pass1=$pass1
            ##    password_validetor ##Function call
            done < $file
            ;;
        *)
            echo "need to choose a valid switch"
            ;;
    esac
done
LEN=${#pass1} #Password Len Check

if [[ $LEN -ge 10 ]]; then
    if [[ $pass1 =~ [0-9] && $pass1 =~ [a-z] ]]; then
        if [[ $pass1 =~ [A-Z] ]]; then
            echo -e "Password Meet the Policy ${Green}$pass1 $reset_color" ##Highlight in Green When Ok
            exit 0

        else
            echo " you must enter Capital letters "
            echo -e "Password Doesnt Meet the Policy ${Red}$pass1 $reset_color" ##Highlight in Red When Not Ok
            exit 1
        fi
    else
        echo "Password Contains special character"
        echo -e "Password Doesnt Meet the Policy ${Red}$pass1 $reset_color" ##Highlight in Red When Not Ok
        exit 1
    fi
else
    echo "Password Doesnt Meet the Minimum Length"
    echo -e "Password Doesnt Meet the Policy ${Red}$pass1 $reset_color" ##Highlight in Red When Not Ok
    exit 1

fi
#}

echo Hello User!
echo 'Please enter Password and make sure it fits to our passwords policy'
echo 'Password need to follow this policy:'
echo 1. Length needs to be minimum of 10 characters.
echo 2. Contain both alphabet and number.
echo 3. Include both the small and capital
echo 4. case_letters
echo

##password_validetor ##Function call
