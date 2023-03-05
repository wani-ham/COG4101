function [] = V1_practice_new()
	image1 = double(imread('image.jpg'));
	gray_img = image1(:, :, mean(1:3));
   
    [X Y] = meshgrid(linspace(-0.67,0.67, 200));
    PSF = 0.47*exp(-3.3*((X*60).^2+(Y*60).^2))+0.53*exp(-0.93*(abs(X*60)+abs(Y*60)));
	Mcell = (4/3) * exp((-1*(X.^2+Y.^2))/(0.048^2)) - (1/3) * exp((-1*(X.^2+Y.^2))/(0.096^2));
    
    AfterPSF = conv2(gray_img, PSF, 'same');
	image_m = conv2(AfterPSF, Mcell, 'same');
	image_m_t = sc_threshold(image_m, 0.2);
    
	img_size = 60;
	RF_size = img_size*(1/5);
	t_elongation_factor = 1/1.5;
	t_freq = 2;
	t_meanlum = .5;
	t_contrast = .5;
	t_phase = 90;
    
	RF_orientation = 0; % Vertical
	V1_v = ptb.gabor_blended(img_size, img_size, t_meanlum, t_contrast, 1/img_size * t_freq, t_phase,  RF_orientation, RF_size, t_elongation_factor, RF_orientation);
    V1_v = V1_v*2 - 1; % Centering: the sum of filter output should be 0
    
    RF_orientation = 90; % Horizontal
    V1_h = ptb.gabor_blended(img_size, img_size, t_meanlum, t_contrast, 1/img_size * t_freq, t_phase,  RF_orientation, RF_size, t_elongation_factor, RF_orientation);
    V1_h = V1_h*2 - 1; % Centering: the sum of filter output should be 0

    RF_orientation = 55; % Diagonal
    V1_d = ptb.gabor_blended(img_size, img_size, t_meanlum, t_contrast, 1/img_size * t_freq, t_phase,  RF_orientation, RF_size, t_elongation_factor, RF_orientation);
    V1_d = V1_d*2 - 1; % Centering: the sum of filter output should be 0
 
	image_v1_v = conv2(image_m_t, V1_v, 'same');
    image_v1_v_t = sc_threshold(image_v1_v, 0.2);
    image_v1_h = conv2(image_m_t, V1_h, 'same');
    image_v1_h_t = sc_threshold(image_v1_h, 0.2);
    image_v1_d = conv2(image_m_t, V1_d, 'same');
    image_v1_d_t = sc_threshold(image_v1_d, 0.2);
    
    clf;
    figure(1); 
    subplot(1,2,1); imshow(sc_normalize(image_m)); title("Original Image");
    subplot(1,2,2); imshow(sc_normalize(image_m_t)); title("Original Image (Threshold)");

    figure(2); 
    subplot(1,2,1); imshow(sc_normalize(image_v1_v)); title("Image with Vertical RF Orientation");
    subplot(1,2,2); imshow(sc_normalize(image_v1_v_t)); title("Image with Vertical RF Orientation (Threshold)");

	figure(3); 
    subplot(1,2,1); imshow(sc_normalize(image_v1_h)); title("Image with Horizontal RF Orientation");
    subplot(1,2,2); imshow(sc_normalize(image_v1_h_t)); title("Image with Horizontal RF Orientation (Threshold)");

    figure(4); 
    subplot(1,2,1); imshow(sc_normalize(image_v1_d)); title("Image with 55d RF Orientation");
    subplot(1,2,2); imshow(sc_normalize(image_v1_d_t)); title("Image with 55d RF Orientation (Threshold)");

    figure(5); imshow(sc_normalize(sc_threshold((image_v1_h+image_v1_v+image_v1_d)./3, 0.2))); title("V1 Simulation");
end