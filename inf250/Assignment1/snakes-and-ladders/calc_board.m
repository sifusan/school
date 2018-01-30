function [b]=calc_board()
temp = 30:60:570;
r_temp = fliplr((temp));
b = [temp r_temp temp r_temp temp r_temp temp r_temp temp r_temp];