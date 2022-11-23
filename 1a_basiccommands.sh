#!/bin/sh
# echo, ls, read, cat, touch, test, arithmetic comparison, conditional, loops, grep, sed etc. 


touch file.txt       #Create empty file
mkdir newDir         #Create New Directory
mkdir newDirTwo

nano file.txt        # terminal based text editor

# ADD CONTENT

# Hello
# This is content of the file
# Hello there
# Hello HELLO HEY
# Hi there. Greetings!
# Bye

echo "Hello world!"
echo "This content is appended to file" >> file.txt  # >> to append the file

ls             #List 
ls -alt

read $usr_input   # GET INPUT
echo $usr_input   # SHOW VARIABLE DATA

read -sp "Enter sensitive data: "   
echo $REPLY

cat file.txt                  #Read data from file
cat file.txt > newFile.txt    # > Overwrite file
cat newFile.txt


a=20
b=20
if test "$a" -eq "$b"      #-eq is equal 
then
   echo "a is equal to b"
else
   echo "a is not equal to b"
fi

c="Hello World!"
d="Bye!"
if test "$c" = "$d"
then
   echo "c is equal to c"
else
   echo "d is not equal to d"
fi


s=("football" "cricket" "hockey") #String List
for n in ${s[@]};                   #For loop 
do
    echo $n
done

t=7
for (( i=1 ; i<=$n ; i++ )); 
do
    echo $i
done

u=7
while [ $u -gt 4 ];
do
    echo $u
    ((u--))
done

grep -i "hello" file.txt   #insensitive search data
grep -iv "hello" file.txt  
grep -c "H" file.txt       #This prints only a count of the lines that match a pattern

sed 's/hello/ciao/g' file.txt #Replacing all the occurrence of the pattern in a line 
