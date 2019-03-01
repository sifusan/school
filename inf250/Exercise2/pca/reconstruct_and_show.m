function [rank_approx]=reconstruct_and_show(score, coeffs, mean, nr_pcs, n)
    rank_approx = score(:,1:nr_pcs) * coeffs(:,1:nr_pcs)' + mean;
    for i=1:n
        r = round(rand() * 60000, 0) + 1;
        figure(i+20);
        imshow(loadimage(rank_approx, r));
    end
end