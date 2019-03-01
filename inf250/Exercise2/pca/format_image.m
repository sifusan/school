function[image]=format_image(data)
    image = zeros(28, 28);
    index_1 = 1;
    index_2 = 28;
    for i=1:28
        image(i,:) = data(index_1:index_2);
        index_1 = index_1 + 28;
        index_2 = index_2 + 28;
    end
end