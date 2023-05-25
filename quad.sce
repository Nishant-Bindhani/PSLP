clear,clc
disp("Name:Nishant Bindhani\\ Class:IT-B \\ Roll number:102")
a=input("Enter the value of a for the equation: ")
b=input("Enter the value of b for the equation: ")
c=input("Enter the value of c for the equation: ")
D=b^2-4*a*c
if D<0
    disp("No real root exists.")
elseif D==0
    disp("Only 1 root exist.")
else
    disp("Two real roots exist.")
end
x=(-b+sqrt(D))/(2*a)
y=(-b-sqrt(D))/(2*a)
disp(x)
disp(y)

