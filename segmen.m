function frames = segmen(s, fs, data)
f_size = round(s * fs);
n = length(data);
n_f = floor (n / f_size); % No frames
temp = 0;
for i = 1 : n_f 
   frames(i,:) = data(temp + 1 : temp + f_size);
   temp = temp + f_size;
end
end
