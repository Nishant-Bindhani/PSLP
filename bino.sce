clear; clc
disp("Nishant Bindhani\\ Class:IT-B \\ Roll Number:102")
x=[0,0,0,0,0,0,0,0,0,0,0]
pp=[0,0,0,0,0,0,0,0,0,0,0]
for i=1:1:11
	x(i)=input('Enter the value of x :')
	f(i)=input('Enter the value of f :')
end
e=2.718
for i=1:1:11
	y(i)=(f(i)*x(i))
end
N=sum(f)
p=sum(y)/(N*10)
q=1-p
for i=1:1:11
	pp(i)=round(N*(nchoosek(10,i-1)*(p^(i-1))*(q^(10-i+1))))
end
disp('Binomial probability distribution:')

disp("xi :"),disp(x)
disp("fi :"),disp(pp)
