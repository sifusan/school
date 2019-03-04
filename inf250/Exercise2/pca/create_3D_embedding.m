function create_3D_embedding(label_data, p_comp_1, p_comp_2, p_comp_3, p_nr1, p_nr2, p_nr3, title_name, fig_nr)
    nr_0 = 0;
    nr_1 = 0;
    nr_2 = 0;
    nr_3 = 0;
    nr_4 = 0;
    nr_5 = 0;
    nr_6 = 0;
    nr_7 = 0;
    nr_8 = 0;
    nr_9 = 0;

    for i=1:size(label_data)
        switch label_data(i)
            case 0
                nr_0 = nr_0 + 1;
            case 1
                nr_1 = nr_1 + 1;
            case 2
                nr_2 = nr_2 + 1;
            case 3
                nr_3 = nr_3 + 1;
            case 4
                nr_4 = nr_4 + 1;
            case 5
                nr_5 = nr_5 + 1;
            case 6
                nr_6 = nr_6 + 1;
            case 7
                nr_7 = nr_7 + 1;
            case 8
                nr_8 = nr_8 + 1;
            case 9
                nr_9 = nr_9 + 1;
        end
    end

    nr_0 = zeros(3, nr_0);
    nr_1 = zeros(3, nr_1);
    nr_2 = zeros(3, nr_2);
    nr_3 = zeros(3, nr_3);
    nr_4 = zeros(3, nr_4);
    nr_5 = zeros(3, nr_5);
    nr_6 = zeros(3, nr_6);
    nr_7 = zeros(3, nr_7);
    nr_8 = zeros(3, nr_8);
    nr_9 = zeros(3, nr_9);

    for i=1:size(label_data')
        x = p_comp_1(i,1);
        y = p_comp_2(i,1);
        z = p_comp_3(i, 1);
        switch label_data(i)
            case 0
                nr_0(1, i) = x;
                nr_0(2, i) = y;
                nr_0(3, i) = z;
            case 1
                nr_1(1, i) = x;
                nr_1(2, i) = y;
                nr_1(3, i) = z;
            case 2
                nr_2(1, i) = x;
                nr_2(2, i) = y;
                nr_2(3, i) = z;
            case 3
                nr_3(1, i) = x;
                nr_3(2, i) = y;
                nr_3(3, i) = z;
            case 4
                nr_4(1, i) = x;
                nr_4(2, i) = y;
                nr_4(3, i) = z;
            case 5
                nr_5(1, i) = x;
                nr_5(2, i) = y;
                nr_5(3, i) = z;
            case 6
                nr_6(1, i) = x;
                nr_6(2, i) = y;
                nr_6(3, i) = z;
            case 7
                nr_7(1, i) = x;
                nr_7(2, i) = y;
                nr_7(3, i) = z;
            case 8
                nr_8(1, i) = x;
                nr_8(2, i) = y;
                nr_8(3, i) = z;
            case 9
                nr_9(1, i) = x;
                nr_9(2, i) = y;
                nr_9(3, i) = z;
        end
    end
    
    figure(fig_nr)
    s0 = scatter3(nr_0(1,:), nr_0(2,:), nr_0(3,:), 3, 'red', 'filled');
    hold on
    title(title_name);
    xlabel("Principal component " + p_nr1);
    ylabel("Principal component " + p_nr2);
    zlabel("Principal component " + p_nr3);
    s1 = scatter3(nr_1(1,:), nr_1(2,:), nr_1(3,:), 1, [1 0.5 0.5], 'filled');
    s2 = scatter3(nr_2(1,:), nr_2(2,:), nr_2(3,:), 1, 'yellow', 'filled');
    s3 = scatter3(nr_3(1,:), nr_3(2,:), nr_3(3,:), 1, 'green', 'filled');
    s4 = scatter3(nr_4(1,:), nr_4(2,:), nr_4(3,:), 1, [0 1 0.5], 'filled');
    s5 = scatter3(nr_5(1,:), nr_5(2,:), nr_5(3,:), 1, 'cyan', 'filled');
    s6 = scatter3(nr_6(1,:), nr_6(2,:), nr_6(3,:), 1, 'blue', 'filled');
    s7 = scatter3(nr_7(1,:), nr_7(2,:), nr_7(3,:), 1, [0.1 0.4 0.8], 'filled');
    s8 = scatter3(nr_8(1,:), nr_8(2,:), nr_8(3,:), 1, 'magenta', 'filled');
    s9 = scatter3(nr_9(1,:), nr_9(2,:), nr_9(3,:), 1, [1 0.2 0.7], 'filled');
    legend([s0, s1, s2, s3, s4, s5, s6, s7, s8, s9], '0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
end