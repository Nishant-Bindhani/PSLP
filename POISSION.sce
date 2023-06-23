clear; clc
disp("Nishant\\ Class:IT-B \\ Roll Number:102")
x=[0,0,0,0,0]
pp=[0,0,0,0,0]
for i=1:1:5
	x(i)=input('Enter the value of x :')
	f(i)=input('Enter the value of f :')
end
e=2.718
for i=1:1:5
	y(i)=(f(i)*x(i))
end
N=sum(f)
mean1=sum(y)/N
for i=1:1:5
	pp(i)=round(N*(((mean1^(i-1))*(e^(-mean1)))/factorial(i-1)))
end
disp('Predicted probability distribution:')

disp("xi :"),disp(x)
disp("fi :"),disp(pp)
