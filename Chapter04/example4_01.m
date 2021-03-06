% Load image
A = imread('images/cameraman.tif');

% Set filter to apply
func = @(x) uint8(mean(x(:)));

% Apply over 3 x 3 neighbourhood
B = nlfilter(A, [3, 3], func);

% Display images
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);
