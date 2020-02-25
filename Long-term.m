s = 15;
fs = 10;

sig1 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\SPO2_baseline.txt');
%sig2 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\SPO2_senang.txt');
%sig3 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\SPO2_sedih.txt');
%sig4 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\SPO2_marah.txt');
%sig5 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\PR_baseline.txt');
%sig6 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\PR_senang.txt');
%sig7 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\PR_sedih.txt');
%sig8 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\28. LAMIRA_$\PR_marah.txt');

hasil = segmen(s, fs, sig1);

[datasize, ~] = size(hasil);
feature = zeros(datasize,1);

for i = 1:datasize
    feature(i,1) = mean(hasil(i,:));        %Get Mean Value
end