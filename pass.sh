#!/bin/bash
echo "Random password generator"
echo "Length of password";
read length;
while true;
 do
   if ! [[ $length =~ ^[0-9]+$ ]] ; 
   then 
	 echo "Please type number"; 
	 read length;
   else
     if [[ $length -gt 100  ]];#you can change the value here for longer password
      then
  	echo "The length must be less then 100"
  	read length;
     else break;
     fi
  fi 
done

#Change the value at head for longer password
pass=`strings /dev/urandom | head -n 100 | tr -d '\n\t[:blank:]' | fold -w $length | head -n 1 `
echo "Copy the pass under:"
echo $pass
