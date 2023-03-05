function appliedmap = apply_alpha(varargin)
%APPLY_ALPHA Blends two matrices based on a provided alpha map.
%
%   APPLIEDMAP = APPLY_ALPHA(GROUNDMAP, PIXELMAP, ALPHAMAP) returns a matrix
%   with the size of GROUNDMAP. PIXELMAP is superimposed on the GROUNDMAP to
%   produce APPLIEDMAP. Opacity of the PIXELMAP is modulated depending on the
%   ALPHAMAP, of which elements range between 0 (transparent) to 1 (opaque).  
%
%   Arguments:
%      GROUNDMAP - a background image matrix, filled with .5 if empty.
%      PIXELMAP  - a foreground image matrix.
%      ALPHAMAP  - an alpha map, ranging between 0 (transparent) and 1 (opaque).

	pixelmap  = parse_arg(varargin, 2, mfilename, 'pixelmap',  [], {'numeric'}, {'nonempty', 'real', 'finite', 'nonnan'});
	alphamap  = parse_arg(varargin, 3, mfilename, 'alphamap',  [], {'numeric'}, {'real', 'finite', 'nonnan', '2d'});
	if isempty(alphamap)
		alphamap = pixelmap(:, :, end);
		pixelmap = pixelmap(:, :, 1:max(1, end - 1));
	else
		validateattributes(alphamap, {'numeric'}, {'size', [size(pixelmap, 1), size(pixelmap, 2)]}, mfilename, 'alphamap', 3);
	end
	groundmap = parse_arg(varargin, 1, mfilename, 'groundmap', .5, {'numeric'}, {'nonempty', 'real', 'finite', 'nonnan'});
	if isscalar(groundmap)
		groundmap = ones(size(pixelmap)) * groundmap;
	else
		validateattributes(groundmap, {'numeric'}, {'size', size(pixelmap)}, mfilename, 'groundmap', 1);
	end

	alphamap = repmat(alphamap, [1, 1, size(pixelmap, 3)]);
	appliedmap = (pixelmap .* alphamap) + (groundmap .* (1 - alphamap));
end