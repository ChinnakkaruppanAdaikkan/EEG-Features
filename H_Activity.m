function Hjorth_Activity = H_Activity(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Hjorth_Activity=sqrt(var(diff(Input_Signal_Double))/var(Input_Signal_Double));