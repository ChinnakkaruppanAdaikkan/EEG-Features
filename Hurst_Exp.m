function Hurst_Exp = Hurst_Exp(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Hurst_Exp= dfa(Input_Signal_Double);
