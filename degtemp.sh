#!/bin/bash
echo "1 : degF to degC 2 : degC to degF "
read -p "Enter choice : " choice
funFtoC ( ) {
   read -p "Enter Temp(F):" tempf
   tempc=$((($tempf-32)*5/9))
   echo "temp(C):" $tempc
}
funCtoF ( ) {
   read -p "Enter temp(C):" tempc
   tempf=$((($tempc*9/5)+32))
   echo "temp(f):" $tempf
}



case $choice in
   "1")
      funFtoC
      ;;
   "2")
      funCtoF
      ;;
   *)
      echo "Wrong choice"
      ;;
esac


#!/bin/bash
sum=0
pallindrome () {
read -p "Enter number:" N
N1=$N
while [ $N -gt 0 ]
do
   temp=$(($N%10))
   sum=$(($sum*10+$temp))
   N=$(($N/10))
done
if [ $N1 -eq $sum ]
then
   echo "its pallindrome"
else
   echo "not pallindrome"
fi
}

