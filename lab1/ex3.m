function [A] = ex3(a,b,c)
% Area = TRIarea(a,b,c);
if (a+b>c) && (a+c>b) && (b+c>a)
    s = (a+b+c)/2;
    A = sqrt(s*(s-a)*(s-b)*(s-c));
else
    A = 0;
end