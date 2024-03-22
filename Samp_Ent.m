function Sample_Entropy = Samp_Ent(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Sample_Entropy=SampEn_Brian_Lord(Input_Signal_Double,0.2,3);