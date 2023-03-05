function [t_image] = sc_threshold(t_image, t_thres)
ThresM = t_thres*max(max(t_image));
t_image = (t_image>ThresM) - (t_image<(-1*ThresM));

