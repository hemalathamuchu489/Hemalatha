#check if a number is prime or not
n=int(input(""))
count=0
for i in range(1,n+1):
    if(n%i==0):
        count+=1
if(count==2):
    print("Prime")
else:
    print("not")
    


#find the factorial of a number
n=int(input(""))
fact=1
for i in range (1,n+1):
    fact=fact*i
print(fact)


#print fibonacci series upto n numbers
n=int(input(""))
n1=0
n2=1
print("fibonacci series",n1,n2,end=" ")
for i in range (2,n):
    n3=n1+n2
    n1=n2
    n2=n3
    print(n3,end=" ")


#find the sum of digits of a given number
n=int(input(""))
val=0
sum=0
while n>0:
    d=n%10
    res=(val*10)+d
    sum=sum+res
    n=n//10
print(sum)


#reverse the digits of a give number
n=int(input(""))
val=0
while n>0:
    d=n%10
    res=(val*10)+d
    n=n//10
    print(res,end="")




























