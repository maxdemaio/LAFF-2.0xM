function [ alpha ] = laff_norm2( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[ m_x, n_x ] = size( x );

% Check if inputs are vectors
if ~isvector( x )
    disp( 'copy failed' );
    alpha = 'FAILED';
    return
end

% Basically we can only do 1xn or nx1 vectors, so check
% if we have a row or column vectors

alpha = 0;

if n_x == 1 % x is a column
    for i = 1:m_x
        alpha = alpha + ( x( i, 1 ) ^ 2 );
    end
elseif m_x == 1 % x is a row
    for i = 1:n_x
        alpha = alpha + ( x( 1, i ) ^ 2 );
    end 
end

% Finally take the square room of the sum of squares
alpha = sqrt(alpha)

return
end


