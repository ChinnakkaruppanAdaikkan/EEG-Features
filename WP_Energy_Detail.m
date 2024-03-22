function Wavelet_Packet_Energy_Detail = WP_Energy_Detail(Input_Signal)

wpt = wpdec(Input_Signal,1,'db1','shannon');
[Wavelet_Packet_Energy] = wenergy(wpt);
Wavelet_Packet_Energy_Detail = Wavelet_Packet_Energy(2);