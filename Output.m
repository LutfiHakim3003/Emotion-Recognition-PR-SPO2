s = 15;
fs = 10;

sig1 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\01. RISMAN\Baseline RISMAN.txt');
sig2 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\32. YUNIARTA\PR_sedih.txt');
sig3 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\SPO2_marah.txt');

plot(sig1)
hasil = segmen(s, fs, sig1);
% Plot any frame
%plot(hasil(1,:))
%Potong1 = sig1(1501:1783);
%Potong2 = sig2(1801:1958);
%Potong3 = sig3(1801:1967);
%Potong4 = sig4(1501:1771);
%Potong5 = sig5(1801:1985);
[datasize, ~] = size(hasil);
feature = zeros(datasize,13);

for i = 1:datasize
    feature(i,1) = mean(hasil(i,:));        %Get Mean Value
    feature(i,2) = max(hasil(i,:));         %Get Maximum Value
    feature(i,3) = min(hasil(i,:));         %Get Minimum Value
    feature(i,4) = std(hasil(i,:));         % Get Standard Deviation
    feature(i,5) = kurtosis(hasil(i,:));    % Get Kurtosis
    feature(i,6) = skewness(hasil(i,:));    % Get Skewness
    feature(i,7) = median(hasil(i,:));      % Get Media value
    feature(i,8) = mode(hasil(i,:));        % Get Modus value
    feature(i,9) = range(hasil(i,:));       % Get Range = Max - Min
    feature(i,10) = var(hasil(i,:));        % Get Variation Data
    feature(i,11) = feature(i,2) / feature(i,3); % Get Ratio
    feature(i,12) = mad(hasil(i,:));        % Get Mean Absolute Deviation
    feature(i,13) = mad(hasil(i,:),1);      % Get Median Absolut Deviation
end