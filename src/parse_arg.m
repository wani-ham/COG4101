function value = parse_arg(args, argIndex, funcName, varName, default, classes, attributes)
%PARSE_ARG Parses an argument from VARARGIN.
%
%  A wrapper function of VALIDATEATTRIBUTES, intended for internal use only.
%
%  See also VARARGIN, VALIDATEATTRIBUTES.

	if (argIndex > length(args)) || isempty(args{argIndex})
		value = default;
	else
		value = args{argIndex};
	end
	validateattributes(value, classes, attributes, funcName, varName, argIndex);
end