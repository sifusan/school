function [image]=loadimage(images, image_nr)
    data = images(image_nr,:);
    image = format_image(data);
end