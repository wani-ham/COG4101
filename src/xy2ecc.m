function eccmat = xy2ecc(varargin)
%XY2ECC Generates a map of distances from the center of the matrix.
%
%   ECCMAT = XY2ECC(BX ,BY) returns a matrix with the same size as BX and BY,
%   whose elements contain the distance from the center of given monitor
%   coordinates, BX and BY.
%
%   Arguments:
%      BX - matrix containing x-values of the monitor coordinate.
%      BY - matrix containing y-values of the monitor coordinate.
%
%   See also BASE_XY.

	bx = parse_arg(varargin, 1, mfilename, 'bx', [], {'numeric'}, {'real', 'finite', 'nonnan'});
	by = parse_arg(varargin, 2, mfilename, 'by', [], {'numeric'}, {'real', 'finite', 'nonnan', 'size', size(bx)});

	eccmat = sqrt((bx .^ 2) + (by .^ 2));
end