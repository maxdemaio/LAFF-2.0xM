function [ y_out ] = laff_axpy( alpha, x, y )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

% Check if inputs are vectors
if ~isvector( x ) | ~isvector( y )
    disp( 'copy failed' );
    y_out = 'FAILED';
    return
end

% Check if vector sizes are the same
if ~( m_x * n_x == m_y * n_y )
    disp( 'copy failed' );
    y_out = 'FAILED';
    return
end    

% Basically we can only do 1xn or nx1 vectors, so check
% if we have a row or column vectors

if n_x == 1 % x is a column
    if n_y == 1 % y is a column
        for i = 1:m_x
            y( i, 1 ) = alpha * x( i, 1 ) + y( i, 1 );
        end
    else % y is a row
        for i = 1:m_x
            y( 1, i ) = alpha * x( i, 1 ) + y( 1, i );
        end
    end
else % x is a row
     if n_y == 1 % y is a column
        for i = 1:n_x
            y( i, 1 ) = alpha * x( 1, i ) + y( i, 1 );
        end
    else % y is a row
        for i = 1:n_x
            y( 1, i ) = alpha * x( 1, i ) + y( 1, i );
        end
    end   
end

y_out = y;

return
end




