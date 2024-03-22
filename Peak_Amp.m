function Peak_Amp = Peak_Amp(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Peak_Amp=max(abs(Input_Signal_Double));