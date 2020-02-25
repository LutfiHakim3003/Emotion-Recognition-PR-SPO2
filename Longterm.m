sig1 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\29. BENG ANDAYANI\SPO2_baseline.txt');
sig2 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\29. BENG ANDAYANI\SPO2_senang.txt');
sig3 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\30. SANIPAH\SPO2_reco1.txt');
sig4 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\SPO2_sedih.txt');
sig5 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\SPO2_reco2.txt');
sig6 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\SPO2_marah.txt');
sig7 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\SPO2_reco3.txt');
sig8 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\PR_baseline.txt');
sig9 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\PR_senang.txt');
sig10 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\PR_reco1.txt');
sig11 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\PR_sedih.txt');
sig12 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\PR_reco2.txt');
sig13 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\PR_marah.txt');
sig14 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\31. SULIKAH_$\PR_reco3.txt');

n = length(sig1);
hasil = long(n, sig1);
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