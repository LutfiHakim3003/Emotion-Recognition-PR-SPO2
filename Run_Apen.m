s = 30;
fs = 10;

sig1 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\04. USNATI_$\PR_senang.txt');
sig2 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\04. USNATI_$\PR_sedih.txt');
sig3 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\04. USNATI_$\PR_marah.txt');
sig4 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\04. USNATI_$\SPO2_senang.txt');
sig5 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\04. USNATI_$\SPO2_sedih.txt');
sig6 = load('D:\STUDY\2. Master of Telematics\THESIS\Thesisku\DATA PENELITIAN\Data Mentah\04. USNATI_$\SPO2_marah.txt');

%plot(sig1)
hasil1 = segmen(s, fs, sig1);
[datasize, ~] = size(hasil1);
feature1 = zeros(datasize,1);
    hasil2 = segmen(s, fs, sig2);
    [datasize, ~] = size(hasil2);
    feature2 = zeros(datasize,1);
hasil3 = segmen(s, fs, sig3);
[datasize, ~] = size(hasil3);
feature3 = zeros(datasize,1);
    hasil4 = segmen(s, fs, sig4);
    [datasize, ~] = size(hasil4);
    feature4 = zeros(datasize,1);
hasil5 = segmen(s, fs, sig5);
[datasize, ~] = size(hasil5);
feature5 = zeros(datasize,1);
    hasil6 = segmen(s, fs, sig6);
    [datasize, ~] = size(hasil6);
    feature6 = zeros(datasize,1);

for i = 1:datasize
  feature1(i,1) = Apen(5,0.5,hasil1(i,:));
end
for i = 1:datasize
  feature2(i,1) = Apen(5,0.5,hasil2(i,:));        
end
for i = 1:datasize
  feature3(i,1) = Apen(5,0.5,hasil3(i,:));        
end
for i = 1:datasize
  feature4(i,1) = Apen(5,0.5,hasil4(i,:));        
end
for i = 1:datasize
  feature5(i,1) = Apen(5,0.5,hasil5(i,:));        
end
for i = 1:datasize
  feature6(i,1) = Apen(5,0.5,hasil6(i,:));        
end