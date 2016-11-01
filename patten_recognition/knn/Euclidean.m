function [ distance ] = Euclidean( a,b )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

distance = sum(sum((b-a).^2));

end

