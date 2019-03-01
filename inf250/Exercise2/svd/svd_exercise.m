function svd_exercise(imagename,sigma_threshold)

image = imread(imagename); % loads image in integer format as a 3d-array
image = im2double(image);


figure(1)
imshow(image)
%% TODO
% Decompose the image in rgb values here. (Yop this one is trivial)
R = image(:,:,1);
G = image(:,:,2);
B = image(:,:,3);

%% TODO
% Compute the Single Value decomposition for each channel here.
% Remember that you need to be able to reconstruct the image later on.
[Ur, Sr, Vr] = svd(R);
[Ug, Sg, Vg] = svd(G);
[Ub, Sb, Vb] = svd(B);
 
figure(3)
plot(Sr)
title('Red sigma k');
xlabel("k");
ylabel("value");

figure(4)
plot(Sb)
title("Blue sigma k");
xlabel("k");
ylabel("value");
 
figure(5)
plot(Sg)
title("Green sigma k");
xlabel("k");
ylabel("value");

%% TODO
% Find the value of j for each colour channel based on the sigma_threshold.
j_red = 0;
j_blue = 0;
j_green = 0;
for i=1:numel(Sr)
    if (Sr(i) > sigma_threshold)
        j_red = j_red+1;
    end

end
for i=1:numel(Sb)
    if (Sb(i) > sigma_threshold)
        j_blue = j_blue+1;
    end

end
for i=1:numel(Sg)
    if (Sg(i) > sigma_threshold)
        j_green = j_green+1;
    end

end
j_red
j_blue
j_green


%% TODO
% Reconstruct the respective RGB components of the image using
% only singular values that are bigger than the given threshold.
% Use the value j to slice the matices, before multiplying them.
% This is a lossy reconstruction.
SIGMA_R = Sr(:,1:j_red);
SIGMA_G = Sg(:,1:j_green);
SIGMA_B = Sb(:,1:j_blue);


V_R = Vr(:,1:j_red);
V_G = Vg(:,1:j_green);
V_B = Vb(:,1:j_blue);

R_K = Ur * SIGMA_R * V_R';
G_K = Ug * SIGMA_G * V_G';
B_K = Ub * SIGMA_B * V_B';
%Compose the final image
AK = zeros(size(image));
AK(:,:,1) = R_K;
AK(:,:,2) = G_K;
AK(:,:,3) = B_K;

%Show the composed image
figure(2)
imshow(AK);
