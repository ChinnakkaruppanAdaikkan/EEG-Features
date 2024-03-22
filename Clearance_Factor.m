function Clearance_Factor = Clearance_Factor(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Clearance_Factor=max(abs(Input_Signal_Double))/(mean(sqrt(abs(Input_Signal_Double)))^2);