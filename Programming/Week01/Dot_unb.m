
% Copyright 2021 The University of Texas at Austin
%
% For licensing information see
%                http://www.cs.utexas.edu/users/flame/license.html 
%                                                                                 
% Programmed by: Max DeMaio
%                

function [ alpha_out ] = Dot_unb( alpha, X, Y )
  alpha = 0;
  [ XT, ...
    XB ] = FLA_Part_2x1( X, ...
                         0, 'FLA_TOP' );

  [ YT, ...
    YB ] = FLA_Part_2x1( Y, ...
                         0, 'FLA_TOP' );

  while ( size( XT, 1 ) < size( X, 1 ) )

    [ X0, ...
      x1t, ...
      X2 ] = FLA_Repart_2x1_to_3x1( XT, ...
                                    XB, ...
                                    1, 'FLA_BOTTOM' );

    [ Y0, ...
      y1t, ...
      Y2 ] = FLA_Repart_2x1_to_3x1( YT, ...
                                    YB, ...
                                    1, 'FLA_BOTTOM' );

    %------------------------------------------------------------%

    alpha = chi1 * psi1 + alpha;

    %------------------------------------------------------------%

    [ XT, ...
      XB ] = FLA_Cont_with_3x1_to_2x1( X0, ...
                                       x1t, ...
                                       X2, ...
                                       'FLA_TOP' );

    [ YT, ...
      YB ] = FLA_Cont_with_3x1_to_2x1( Y0, ...
                                       y1t, ...
                                       Y2, ...
                                       'FLA_TOP' );

  end

  alpha_out = alpha;


return
