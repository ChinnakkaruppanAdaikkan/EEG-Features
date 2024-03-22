function Aproximate_Entropy = Ap_Entropy(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Aproximate_Entropy = approximateEntropy(Input_Signal_Double);