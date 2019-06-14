#python program that takes in 2 integers and swap 
#without using a third integer in the program

x = int(input("Please give a number as 1st variable: "))
y = int(input("Please give a number as 2nd variable: "))

x = x + y
y = x - y
x = x - y

print('The value of the 1st variable: ', x)
print('The value of the 2nd variable: ', y)
