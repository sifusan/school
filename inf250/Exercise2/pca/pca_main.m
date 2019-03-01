%
%   The main pca script should be found here.
%   You can use as many helper functions as you need.
%   Include them in your sumbission and make sure that
%   I only need to run this file to get all the results.
%
close all
clear all

% 1
[test_image_data, test_image_metadata] = load_data('digits/t10k-images-idx3-ubyte', 'image');
[train_image_data, train_image_metadata] = load_data('digits/train-images-idx3-ubyte', 'image');
[test_label_data, test_label_metadata] = load_data('digits/t10k-labels-idx1-ubyte', 'label');
[train_label_data, train_label_metadata] = load_data('digits/train-labels-idx1-ubyte', 'label');

% 2
[coeff_train_image, score_train_image, latent_train_image] = pca(train_image_data);
% [coeff_test_image, score_test_image, latent_test_image] = pca(test_image_data);
% [coeff_train_label, score_train_label, latent_train_label] = pca(train_label_data);
% [coeff_test_label, score_test_label, latent_test_label] = pca(test_label_data);

% 3
principal_component_1 = score_train_image(:,1);
principal_component_2 = score_train_image(:,2);

create_2D_embedding(train_label_data, principal_component_1, principal_component_2, 1, 2, "PCA decomp of train data with 2 principal components", 1);

% 4
create_2D_embedding(test_label_data, principal_component_1, principal_component_2, 1, 2, "PCA decomp of test data with 2 principal components", 2);

% 5
mu_train_image = mean(test_image_data);
rec = reconstruct_and_show(score_train_image, coeff_train_image, mu_train_image, 2, 20);

% 6
figure(4)
hold on
xlabel("Eigenvalues at index=x");
ylabel("Value");
plot(latent_train_image);
hold off

figure(5)
hold on
xlim([0, 100]);
xlabel("Eigenvalues at index=x");
ylabel("Value");
plot(latent_train_image);
hold off

% 7
figure(6)
hold on
xlabel("Principal component coeff");
ylabel("Variance");
plot(coeff_train_image(:,1));
hold off

% 8
principal_component_3 = score_train_image(:,3);
create_2D_embedding(train_label_data, principal_component_1, principal_component_3, 1, 3, "PCA decomp of train data with princiapl components 1 and 3", 7);
create_2D_embedding(train_label_data, principal_component_2, principal_component_3, 2, 3, "PCA decomp of train data with princpial components 2 and 3", 8);
create_3D_embedding(train_label_data, principal_component_1, principal_component_2, principal_component_3, 1, 2, 3, "PCA decomp of train data with 3 principal components", 9);