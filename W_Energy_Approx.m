function Wavelet_Energy_Approx = W_Energy_Approx(Input_Signal)

[c,l] = wavedec(Input_Signal,1,'db1');
[Wavelet_Energy_Approx,~] = wenergy(c,l);