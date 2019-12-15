num=1221
echo "no is: " $num 
# Storing the remainder 
s=0 
temp=$num 
# Store number in reverse  
# order 
rev=""
# Store original number  
# in another variable 

   
while [ $num -gt 0 ] 
do
    s=$(( $num % 10 ))   
    num=$(( $num / 10 ))  
     # Store previous number and 
    # current digit in reverse  
    rev=$( echo ${rev}${s} )  
done
echo "after reversing no is:" $rev
if [ $temp -eq $rev ]; 
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
