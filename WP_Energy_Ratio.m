function Aproximation_to_Detail_Wavelet_Packet_Energy_Ratio = WP_Energy_Ratio(Input_Signal)

wpt = wpdec(Input_Signal,1,'db1','shannon');
[Wavelet_Packet_Energy] = wenergy(wpt);
Wavelet_Packet_Energy_Approx = Wavelet_Packet_Energy(1);
Wavelet_Packet_Energy_Detail = Wavelet_Packet_Energy(2);
Aproximation_to_Detail_Wavelet_Packet_Energy_Ratio=Wavelet_Packet_Energy_Approx/Wavelet_Packet_Energy_Detail;