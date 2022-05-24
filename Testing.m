load('data_uji.mat');
jumlahData = 3;
y = sim(net, data_uji);
kelas = zeros(1, jumlahData);
disp('Hasil Pengujian');

for(a = 1 : jumlahData)
    if(y(a) >= 0.5)
        disp('Kelas 2');
    else
        disp('Kelas 1');
    end
end