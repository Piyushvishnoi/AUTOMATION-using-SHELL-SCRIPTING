#!/bin/bash
#here in scripting all the variables are by default global
function newone()
{
name=$1
#echo $name
}
name=Piyush
echo $name
newone hello
#newone world
echo $name
#making it local variable
function newone1()
{
local name=$1
#echo $name
echo $name
}
newone1 world
echo $name
