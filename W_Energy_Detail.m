function Wavelet_Energy_Detail = W_Energy_Detail(Input_Signal)

[c,l] = wavedec(Input_Signal,1,'db1');
[~, Wavelet_Energy_Detail] = wenergy(c,l);