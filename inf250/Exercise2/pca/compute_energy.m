function [energy, components] = compute_energy(data, percentage)

    energy = 0;
    components = 0;
    limit = sum(data) * (percentage/100);
    for i=1:size(data)
        energy = energy + data(i);
        components = components + 1;
        if (energy >= limit)
            break
        end
    end
end