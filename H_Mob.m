function Hjorth_Mobility = H_Mob(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Hjorth_Mobility=sqrt(var(diff(Input_Signal_Double))/var(Input_Signal_Double));