function gratingmat = mk_grating(varargin)
%MK_GRATING Converts a matrix to a sinusoidal grating.
%
%   GRATINGMAT = MK_GRATING(PIXELMAP, FREQ [,PHASE]) returns a matrix with the
%   size of PIXELMAP. Elements of the PIXELMAP are used as input values of a
%   sinusoidal grating with the frequency of FREQ cycles per pixel and the phase
%   of PHASE degrees. Output values are scaled from 0 to 1.
%
%   Arguments:
%      PIXELMAP - a matrix generated by MAP_* functions.
%      FREQ     - frequency of a sinusoid, given in cycles per pixel.
%      PHASE    - tilt angle of the x-axis, 90 if empty or not provided.
%
%   Example:
%     imshow(mk_grating(map_linear(200), 1 / 50));	% 1 cycle / 50 pixels
%
%   See also MAP_LINEAR, MAP_RADIAL.

	pixelmap = parse_arg(varargin, 1, mfilename, 'pixelmap', [], {'numeric'}, {'nonempty', 'real', 'finite', 'nonnan'});
	freq     = parse_arg(varargin, 2, mfilename, 'freq',     [], {'numeric'}, {'scalar', 'real', 'finite', 'nonnan'});
	phase    = parse_arg(varargin, 3, mfilename, 'phase',    90, {'numeric'}, {'scalar', 'real', 'finite', 'nonnan'});

	gratingmat = sind(pixelmap * freq * 360 + phase) * .5 + .5;
end