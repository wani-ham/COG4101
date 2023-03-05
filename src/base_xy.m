function [bx, by] = base_xy(varargin)
%BASE_XY Generates maps of x- and y-values in the monitor coordinate.
%
%   [BX, BY] = BASE_XY(X [,Y] [,TILT]) returns Y-by-X matrices, whose elements
%   contain x- and y-values in the monitor coordinate tilted by TILT degrees.
%   The value is set to 0 at the center of both matrices.
%
%   Arguments:
%      X    - number of columns of output matrices.
%      Y    - number of rows, the same as X if empty or not provided.
%      TILT - tilt angle of the x- and y-axes, 0 if empty or not provided.
%
%   See also MESHGRID, ROTATE_XY.

	x    = parse_arg(varargin, 1, mfilename, 'x',    [], {'numeric'}, {'scalar', 'integer', 'finite', 'positive'});
	y    = parse_arg(varargin, 2, mfilename, 'y',    x,  {'numeric'}, {'scalar', 'integer', 'finite', 'positive'});
	tilt = parse_arg(varargin, 3, mfilename, 'tilt', 0,  {'numeric'}, {'scalar', 'real', 'finite', 'nonnan'});

	[mx, my] = meshgrid( ...
		(1:x) - (1 + x) / 2, ...
		(1:y) - (1 + y) / 2   ...
		);
	if mod(tilt, 360) == 0
		[bx, by] = deal(mx, my);
	elseif nargout < 2
		bx = rotate_xy(mx, my, tilt);
	else
		[bx, by] = rotate_xy(mx, my, tilt);
	end
end