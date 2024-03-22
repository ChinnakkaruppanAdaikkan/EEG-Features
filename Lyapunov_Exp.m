function Lyapunov_Exponent = Lyapunov_Exp(Input_Signal, Samp_Freq)

Input_Signal_Double=double(Input_Signal);
Lyapunov_Exponent=lyapunovExponent(Input_Signal_Double, Samp_Freq);