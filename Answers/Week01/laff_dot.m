function [ myDotProd ] = laff_dot( x, y )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

% Check if inputs are vectors
if ~isvector( x ) | ~isvector( y )
    disp( 'copy failed' );
    myDotProd = 'FAILED';
    return
end

% Check if vector sizes are the same
if ~( m_x * n_x == m_y * n_y )
    disp( 'copy failed' );
    myDotProd = 'FAILED';
    return
end    

% Basically we can only do 1xn or nx1 vectors, so check
% if we have a row or column vectors

myDotProd = 0;

if n_x == 1 % x is a column
    if n_y == 1 % y is a column
        for i = 1:m_x
            myDotProd = myDotProd + ( y( i, 1 ) * x( i, 1 ) );
        end
    else % y is a row
        for i = 1:m_x
            myDotProd = myDotProd + ( y( 1, i ) * x( i, 1 ) );
        end
    end
else % x is a row
     if n_y == 1 % y is a column
        for i = 1:n_x
            myDotProd = myDotProd + ( y( i, 1 ) * x( 1, i ) );
        end
    else % y is a row
        for i = 1:n_x
            myDotProd = myDotProd + ( y( 1, i ) * x( 1, i ) );
        end
    end   
end

return
end


