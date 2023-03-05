function pixelmap = map_radial(varargin)
%MAP_RADIAL Generates a map of radially increasing values.
%
%   PIXELMAP = MAP_RADIAL(ROWS [,COLS] [,RATIO] [,TILT]) returns a ROWS-by-COLS
%   matrix, whose elements increase as their distances from the center of matrix
%   increase. Increments on the y-axis are determined by RATIO, and the x-axis
%   is tilted by TILT degrees.
%
%   Arguments:
%      ROWS  - number of rows.
%      COLS  - number of columns, the same as ROWS if empty or not provided.
%      RATIO - y-axis to x-axis ratio, 1 if empty or not provided.
%      TILT  - tilt angle of the x-axis, 0 if empty or not provided.
%
%   See also MAP_RECTANGULAR.

	rows  = parse_arg(varargin, 1, mfilename, 'rows',  [],   {'numeric'}, {'scalar', 'integer', 'finite', 'positive'});
	cols  = parse_arg(varargin, 2, mfilename, 'cols',  rows, {'numeric'}, {'scalar', 'integer', 'finite', 'positive'});
	ratio = parse_arg(varargin, 3, mfilename, 'ratio', 1,    {'numeric'}, {'scalar', 'real', 'finite', 'nonnan', 'positive'});
	tilt  = parse_arg(varargin, 4, mfilename, 'tilt',  0,    {'numeric'}, {'scalar', 'real', 'finite', 'nonnan'});

	[bx, by] = base_xy(cols, rows, tilt);
	pixelmap = xy2ecc(bx, by * ratio);
end