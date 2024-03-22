function Aproximation_to_Detail_Wavelet_Energy_Ratio = W_Energy_Ratio (Input_signal)

[c,l] = wavedec(Input_signal,1,'db1');
[Wavelet_Energy_Approximation,Wavelet_Energy_Detail] = wenergy(c,l);

Aproximation_to_Detail_Wavelet_Energy_Ratio=Wavelet_Energy_Approximation/Wavelet_Energy_Detail;