function [data, meta_data]=load_data(filename, identifier)
    fid = fopen(filename, 'r');
    if (strcmp(identifier,'image'))
        magic_n = swapbytes(uint32(fread(fid, 1, 'uint32')));
        nr_ele = swapbytes(uint32(fread(fid, 1, 'uint32')));
        r = swapbytes(uint32(fread(fid, 1, 'uint32')));
        c = swapbytes(uint32(fread(fid, 1, 'uint32')));
        meta_data = struct('magic_number', magic_n, 'nr_elements', nr_ele, 'rows', r, 'cols', c);
        data = zeros(nr_ele, r*c);

        for i=1:nr_ele
            for j=1:r * c
                data(i, j) = swapbytes(uint8(fread(fid, 1, 'uint8')));
            end
        end
    end
    if (strcmp(identifier, 'label'))
        magic_n = swapbytes(uint32(fread(fid, 1, 'uint32')));
        nr_it = swapbytes(uint32(fread(fid, 1, 'uint32')));
        meta_data = struct('magic_number', magic_n, 'nr_items', nr_it);
        data = zeros(1,nr_it);
        
        for i=1:nr_it
            data(i) = swapbytes(uint8(fread(fid, 1, 'uint8')));
        end
    end
    fclose(fid);
end