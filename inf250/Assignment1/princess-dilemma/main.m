
for o=1:10
    married_best = zeros(1,10);
    married_second_best = zeros(1,10);
    not_married = zeros(1,10);
    for k=1:10
        for i=1:1000
            princes = zeros(1,10);
            for j=1:10
                r = (rand()*intmax('int64')) - (rand()*intmax('int64'));
                princes(j) = r;
            end
            length(princes)

            result = best_k(k,princes);

            if result == 1
                married_best(k) = married_best(k)+1;
            elseif result == 2
                married_second_best(k) = married_second_best(k)+1;
            elseif result == -1
                not_married(k) = not_married(k)+1;
            end
        end  
    end

    optimal = 0;
    amount = 0;
    for k=1:10
        if married_best(k) > amount
            amount = married_best(k);
            optimal = k;
        end
    end

    figure
    hold on;
    title("Princess dilemma: Graphical representation of marrying results");
    xlabel("How many princes to turn down before inviting the rest")
    ylabel("Times married/not married");

    plot(married_best);
    plot(married_second_best);
    plot(not_married);
    plot(optimal, amount, 'p', 'MarkerSize',20);
    legend('Married Best', 'Married second best', 'Did not marry', ['Optimal x= ' num2str(optimal)]);
    fprintf("Married_best: %d\n", married_best);
    fprintf("Married_second_best: %d\n", married_second_best);
    fprintf("Not Married: %d\n", not_married);
    fprintf("The optimal amount of princes to turn down would be %d\n: ", optimal);
end