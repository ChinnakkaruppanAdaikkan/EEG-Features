function Crest_Factor = Crest_Factor(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Crest_Factor=max(abs(Input_Signal_Double))/rms(Input_Signal_Double);