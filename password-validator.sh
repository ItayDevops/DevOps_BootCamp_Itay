#!/bin/bash
##input password for user check

echo Hello User!
echo 'Please enter Password and make sure it fits to our passwords policy'
echo 'Password need to follow this policy:'
echo 1. Length needs to be minimum of 10 characters.
echo 2. Contain both alphabet and number.
echo 3. Include both the small and capital 
echo 4. case_letters
read -sp "Password: " password1 
echo
if $password1 =! 