# Bash Scripting Basics  

##  1. Hello World  
```bash
#!/bin/bash
echo "Hello, World!"
`````
##  2. Variables
```bash
#!/bin/bash
name="Rudra"
echo "My name is $name"
````
## 3. User Input
```bash
#!/bin/bash
echo -n "Enter your name: "
read username
echo "Hello, $username!"
````
## 4. If-Else Condition
```bash
#!/bin/bash
echo -n "Enter a number: "
read num

if [ $num -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or smaller"
fi
````
## 5. For Loop
```bash
#!/bin/bash
for i in 1 2 3 4 5
do
    echo "Looping ... number $i"
done
````
