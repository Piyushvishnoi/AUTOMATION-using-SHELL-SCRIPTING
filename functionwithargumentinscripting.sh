#!/bin/bash
#declaration of function
#first way of declaration
function newone()
{
echo $1 
}
#second way of declaration
quit()
{
exit
}
#calling of function by argument passing
newone hello
newone world
function newone1()
{
echo $1 $2 
}
newone1 hello world
quit
