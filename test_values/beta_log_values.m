function [ n_data, x, y, fxy ] = beta_log_values ( n_data )

%*****************************************************************************80
%
%% BETA_LOG_VALUES returns some values of the logarithm of the Beta function.
%
%  Discussion:
%
%    In Mathematica, the function can be evaluated by:
%
%      Log[Beta[x]]
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 August 2004
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Milton Abramowitz and Irene Stegun,
%    Handbook of Mathematical Functions,
%    US Department of Commerce, 1964.
%
%    Stephen Wolfram,
%    The Mathematica Book,
%    Fourth Edition,
%    Wolfram Media / Cambridge University Press, 1999.
%
%  Parameters:
%
%    Input/output, integer N_DATA.  The user sets N_DATA to 0 before the
%    first call.  On each call, the routine increments N_DATA by 1, and
%    returns the corresponding data; when there is no more data, the
%    output value of N_DATA will be 0 again.
%
%    Output, real X, Y, the arguments of the function.
%
%    Output, real FXY, the value of the function.
%
  n_max = 17;

  fxy_vec = [ ...
      0.1609437912434100E+01, ... 
      0.9162907318741551E+00, ... 
      0.5108256237659907E+00, ... 
      0.2231435513142098E+00, ... 
      0.1609437912434100E+01, ... 
      0.9162907318741551E+00, ... 
      0.0000000000000000E+00, ... 
     -0.1791759469228055E+01, ... 
     -0.3401197381662155E+01, ... 
     -0.4941642422609304E+01, ... 
     -0.6445719819385578E+01, ... 
     -0.3737669618283368E+01, ... 
     -0.5123963979403259E+01, ... 
     -0.6222576268071369E+01, ... 
     -0.7138866999945524E+01, ... 
     -0.7927324360309794E+01, ... 
     -0.9393661429103221E+01 ];

  x_vec = [ ...
     0.2E+00, ...
     0.4E+00, ...
     0.6E+00, ...
     0.8E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     2.0E+00, ...
     3.0E+00, ...
     4.0E+00, ...
     5.0E+00, ...
     6.0E+00, ...
     6.0E+00, ...
     6.0E+00, ...
     6.0E+00, ...
     6.0E+00, ...
     7.0E+00 ];

  y_vec = [ ...
     1.0E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     1.0E+00, ...
     0.2E+00, ...
     0.4E+00, ...
     1.0E+00, ...
     2.0E+00, ...
     3.0E+00, ...
     4.0E+00, ...
     5.0E+00, ...
     2.0E+00, ...
     3.0E+00, ...
     4.0E+00, ...
     5.0E+00, ...
     6.0E+00, ...
     7.0E+00 ]; 

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    x = 0.0;
    y = 0.0;
    fxy = 0.0;
  else
    x = x_vec(n_data);
    y = y_vec(n_data);
    fxy = fxy_vec(n_data);
  end

  return
end