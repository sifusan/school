function[average]=get_yearly_average(data_set, year)
        i = year - (data_set.Year(1)) + 1;
        year_avg = zeros(1, 12);
        year_avg(1) = data_set.Jan(i);
        year_avg(2) = data_set.Feb(i);
        year_avg(3) = data_set.Mar(i);
        year_avg(4) = data_set.Apr(i);
        year_avg(5) = data_set.May(i);
        year_avg(6) = data_set.Jun(i);
        year_avg(7) = data_set.Jul(i);
        year_avg(8) = data_set.Aug(i);
        year_avg(9) = data_set.Sep(i);
        year_avg(10) = data_set.Oct(i);
        year_avg(11) = data_set.Nov(i);
        year_avg(12) = data_set.Dec(i);
        average = mean(year_avg);
end