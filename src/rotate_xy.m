function [rx, ry] = rotate_xy(varargin)
%ROTATE_XY Rotates maps of x- and y-values in the monitor coordinate.
%
%   [RX, RY] = ROTATE_XY(BX ,BY, TILT) returns matrices with the same size as BX
%   and BY, whose elements contain x- and y-values in the monitor coordinate
%   tilted by TILT degrees from the given monitor coordinates, BX and BY.
%
%   Arguments:
%      BX   - matrix containing x-values of the monitor coordinate.
%      BY   - matrix containing y-values of the monitor coordinate.
%      TILT - tilt angle of the x-and y-axes, 90 if empty or not provided.
%
%   See also BASE_XY.

	bx   = parse_arg(varargin, 1, mfilename, 'bx',   [], {'numeric'}, {'real', 'finite', 'nonnan'});
	by   = parse_arg(varargin, 2, mfilename, 'by',   [], {'numeric'}, {'real', 'finite', 'nonnan', 'size', size(bx)});
	tilt = parse_arg(varargin, 3, mfilename, 'tilt', 90, {'numeric'}, {'scalar', 'real', 'finite', 'nonnan'});

	rx = bx * cosd(tilt) + by * sind(tilt);
	if nargout > 1
		ry = bx * cosd(tilt + 90) + by * sind(tilt + 90);
	end
end