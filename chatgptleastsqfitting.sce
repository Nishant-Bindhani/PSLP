clear; clc
disp("Nishant Bindhani//Class:- IT-B//Roll No.:-102")
n=input("Enter total no of points : ")
for i=1:1:n
	x(i)=input("Enter value of x : ")
	y(i)=input("Enter value of y : ")
    xsquare(i)=(x(i))^2
	multiple(i)=x(i)*y(i)
    plot(x(i),y(i),".", "markersize", 10)
end
//xsquare=[0,0,0,0,0,0,0,0,0,0]
//ysquare=[0,0,0,0,0,0,0,0,0,0]
//multiple=[0,0,0,0,0,0,0,0,0,0]
//d=[0,0,0,0,0,0,0,0,0,0]
//dsquare=[0,0,0,0,0,0,0,0,0,0]
sumx=sum(x)
sumy=sum(y)
sumsqx=sum(xsquare)
sumxy=sum(multiple)
//∑y = an + b∑x
//∑xy = a∑x + b∑x2
A=[n sumx;sumx sumsqx]
B=[sumy;sumxy]
X=inv(A) * B
a=X(1,1)
b=X(2,1)
disp("The equation obtained by least square fitting is:-")
mprintf("\t y= %f + %fx \n", a, b);

xgrid();
function y1 = myquadratic ( x1 )
    y1 = a+b*x1
endfunction
for i=1:1:n
    d(i)=y(i)-myquadratic ( x(i) )
    dsquare(i)=(d(i))^2
    end
xdata = linspace (-20 , 20 , 50 );
ydata = myquadratic ( xdata );
plot ( xdata , ydata )
sumdsq=sum(dsquare)
disp("Sum of square of the errors:-")
disp(sumdsq)
