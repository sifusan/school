% Here you play the role of data analyst for the global warming
% investigation...
clear all
load('weather_data.mat');

plot(Bergen.Year, Bergen.Mar, 'x', Svalbard.Year, Svalbard.Mar, '*')
legend('Bergen', 'Svalbard', 'Location', 'NorthWest')
title('Historic monthly average temperatures for March')
xlabel('Year')
ylabel('temperature [deg C]')

% 2
bergen_avg_values = zeros(length(Bergen.Year), 1);

for i=1:length(Bergen.Year)
      bergen_avg_values(i) = get_yearly_average(Bergen, Bergen.Year(i));
end

svalbard_avg_values = zeros(length(Svalbard.Year), 1);
for i=1:length(Svalbard.Year)
        svalbard_avg_values(i) = get_yearly_average(Svalbard, Svalbard.Year(i));
end

figure(2)
hold on
title('Average temperature per year 1899-2018 Bergen and Svalbard');
plot(Bergen.Year, bergen_avg_values, 'x')
plot(Svalbard.Year, svalbard_avg_values, 'x')
legend('Bergen', 'Svalbard', 'Location', 'NorthWest')
xlabel('Year');
ylabel('Temp in celsius');

% 3
p_coeff_svalbard = polyfit(Svalbard.Year, svalbard_avg_values, 1);
xp=1899:1:2218;
yp = polyval(p_coeff_svalbard, xp);
figure(3)
hold on

approx_2_degrees = find(round(yp)==2, length(yp));
v = approx_2_degrees(1);
for i=1:length(approx_2_degrees)
    if (yp(approx_2_degrees(i)) > 2)
        v = approx_2_degrees(i);
        break
    end
    v = approx_2_degrees(i);
end

title('Expected year where average temp ~ 2 deg celsius');
plot(Svalbard.Year, svalbard_avg_values, 'x', xp, yp, 'm');
plot(xp, 2*ones(length(xp), 1));
plot(xp(v)*ones(40,1), -19:1:20);
legend('Svalbard avg temps', 'Linear fit', 'Temp=2C', 'Expected year: 2204-2205');
xlabel('Year');
ylabel('Temp in celsius');

% 4
p_coeff_1960 = polyfit(Svalbard.Year(62:length(Svalbard.Year)), svalbard_avg_values(62:length(svalbard_avg_values)), 1);
xp=1899:1:2018;
yp_1960 = polyval(p_coeff_1960, xp);
figure(4)
hold on
plot(Svalbard.Year, svalbard_avg_values,'x');
plot(xp, yp_1960, 'g');
p_coeff_2008 = polyfit(Svalbard.Year(110:length(Svalbard.Year)), svalbard_avg_values(110:length(svalbard_avg_values)), 1);

yp_2008 = polyval(p_coeff_2008, xp);
plot(xp, yp_2008, 'r');
title('Temperatures since 1960 and 2008');
legend('Svaldbard avg temps','Temp 1960-2018', 'Temp 2008-2018', 'Location', 'NorthWest');
xlabel('Year');
ylabel('Temp in celsius');

% 5
xp = 1899:1:2218;
yp_1960 = polyval(p_coeff_1960, xp);
yp_2008 = polyval(p_coeff_2008, xp);
approx_2_degrees_1960 = find(round(yp_1960)==2, length(yp_1960));
v_1960 = approx_2_degrees_1960(1);
for i=1:length(approx_2_degrees_1960)
    if (yp_1960(approx_2_degrees_1960(i)) > 2)
        v_1960 = approx_2_degrees_1960(i);
        break
    end
    v_1960 = approx_2_degrees_1960(i);
end

approx_2_degrees_2008 = find(round(yp_2008)==2, length(yp_2008));
v_2008 = approx_2_degrees_2008(1);
for i=1:length(approx_2_degrees_2008)
    if (yp_2008(approx_2_degrees_2008(i)) > 2)
        v_2008 = approx_2_degrees_2008(i);
        break
    end
    v_2008 = approx_2_degrees_2008(i);
end

figure(5)
hold on
plot(xp(v_1960), yp_1960(v_1960), 'o');
plot(xp, yp_1960, 'g');
plot(xp(v_2008), yp_2008(v_2008), 'o');
plot(xp, yp_2008, 'r');
plot(xp, 2*ones(length(xp), 1));
plot(xp, yp, 'm');
title('Temperatures since 1960 and 2008, with intersections at 2 degrees celsius');
legend('1960 2 deg', '1960-2018', '2008 2 deg', '2008-2018', '2 deg celsius', 'Location', 'NorthWest');
xlabel('Year');
ylabel('Temp in celsius');

% 6
figure(6)
hold on
p_coeff_bergen_1 = polyfit(Bergen.Year, bergen_avg_values, 1);
p_coeff_bergen_2 = polyfit(Bergen.Year, bergen_avg_values, 2);
p_coeff_bergen_3 = polyfit(Bergen.Year, bergen_avg_values, 3);
p_coeff_bergen_4 = polyfit(Bergen.Year, bergen_avg_values, 4);
p_coeff_bergen_5 = polyfit(Bergen.Year, bergen_avg_values, 5);

xp_bergen = 1957:1:2018;

yp_bergen_1 = polyval(p_coeff_bergen_1, xp_bergen);
yp_bergen_2 = polyval(p_coeff_bergen_2, xp_bergen);
yp_bergen_3 = polyval(p_coeff_bergen_3, xp_bergen);
yp_bergen_4 = polyval(p_coeff_bergen_4, xp_bergen);
yp_bergen_5 = polyval(p_coeff_bergen_5, xp_bergen);

plot(xp_bergen, yp_bergen_1);
plot(xp_bergen, yp_bergen_2);
plot(xp_bergen, yp_bergen_3);
plot(xp_bergen, yp_bergen_4);
plot(xp_bergen, yp_bergen_5);
title('nth degree polynomial fit of the Bergen temperature data');
legend('1st degree polyfit', '2nd degree polyfit', '3rd degree polyfit', '4th degree polyfit', '5th degree polyfit', 'Location', 'NorthWest');
xlabel('Year');
ylabel('Temp in celsius');

% 7
p_coeff_bergen = polyfit(Bergen.Year, bergen_avg_values, 1);
xp_bergen = 1957:1:2040;
yp_bergen = polyval(p_coeff_bergen, xp_bergen);

p_coeff_svalbard = polyfit(Svalbard.Year, svalbard_avg_values, 1);
xp_svalbard = 1899:1:2040;
yp_svalbard = polyval(p_coeff_svalbard, xp_svalbard);

figure(7)
hold on
plot(xp_bergen, yp_bergen);
plot(xp_svalbard, yp_svalbard);
title('Temperature data of Svalbard and Bergen, 1899/1957-2040');
xlabel('Year');
ylabel('Temp in celsius');
legend('Bergen', 'Svalbard', 'Location', 'NorthWest');