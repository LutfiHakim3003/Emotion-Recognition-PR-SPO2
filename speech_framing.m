% This file creates frames from Speech Signal
% 
% Created By: JCBRO Labs
% Date: 22/05/2017
% website: www.jcbrolabs.org
% mail: jcbrolabs@gmail.com
close all; clear all;

% Read Audio File.
[data, fs] = wavread('10a07La_boredom');

% do framing
f_d = 0.025;
f_size = round(f_d * fs);
n = length(data);
n_f = floor(n/f_size);  %no. of frames
temp = 0;
for i = 1 : n_f
    
   frames(i,:) = data(temp + 1 : temp + f_size);
   temp = temp + f_size;
end

% Plot any frame
plot(frames(11,:));