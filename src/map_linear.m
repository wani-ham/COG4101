function pixelmap = map_linear(varargin)
%MAP_LINEAR Generates a map of linearly increasing values.
%
%   PIXELMAP = MAP_LINEAR(ROWS [,COLS] [,TILT]) returns a ROWS-by-COLS matrix,
%   whose elements increase as their abscissae increase through the x-axis
%   tilted by TILT degrees. Value at the center of the matrix is 0.
%
%   Arguments:
%      ROWS - number of rows.
%      COLS - number of columns, the same as ROWS if empty or not provided.
%      TILT - tilt angle of the x-axis, 0 if empty or not provided.
%
%   See also MAP_SYMMETRIC.

	rows = parse_arg(varargin, 1, mfilename, 'rows', [],   {'numeric'}, {'scalar', 'integer', 'finite', 'positive'});
	cols = parse_arg(varargin, 2, mfilename, 'cols', rows, {'numeric'}, {'scalar', 'integer', 'finite', 'positive'});
	tilt = parse_arg(varargin, 3, mfilename, 'tilt', 0,    {'numeric'}, {'scalar', 'real', 'finite', 'nonnan'});

	pixelmap = base_xy(cols, rows, tilt);
end