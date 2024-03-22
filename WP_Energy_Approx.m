function Wavelet_Packet_Energy_Approx = WP_Energy_Approx(Input_Signal)

wpt = wpdec(Input_Signal,1,'db1','shannon');
[Wavelet_Packet_Energy] = wenergy(wpt);
Wavelet_Packet_Energy_Approx = Wavelet_Packet_Energy(1);