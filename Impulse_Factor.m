function Impulse_Factor = Impulse_Factor(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Impulse_Factor=max(abs(Input_Signal_Double))/mean(abs(Input_Signal_Double));