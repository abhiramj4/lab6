function [ x1 ] = findX1( Y )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
a1 = 5-Y;
a2 = 4+Y;
a3 = 1+Y;

A = [a1 -4 4
    -5 a2 3
    5 3 a3
];

b = [1;4;-2];

allX = A\b;
x1 = allX(1);
end

