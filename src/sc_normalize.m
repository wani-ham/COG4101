function [t_img] = sc_normalize(t_img)
		imax = max(t_img(:));
		imin = min(t_img(:));
		t_img = (cast(t_img, 'double') - imin) / (imax - imin);
end