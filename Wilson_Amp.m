%%%Compute Wilsons Amplitude (WAMP) of a signal%%%
%%%https://www.sciencedirect.com/science/article/pii/S1319157815000981
%%%https://www.sciencedirect.com/science/article/pii/S0045790617338405
%%%https://jneuroengrehab.biomedcentral.com/articles/10.1186/1743-0003-7-21
function WAMP_Value=Wilson_Amp(Input_Signal)
Input_Signal=double(Input_Signal);
Absolute_Derivative_of_Input_Signal=abs(diff(Input_Signal));
Threshold_Value=mean(Absolute_Derivative_of_Input_Signal);
Abs_Der_Above_Thresh=Absolute_Derivative_of_Input_Signal>Threshold_Value;
WAMP_Value=sum(Abs_Der_Above_Thresh)/length(Abs_Der_Above_Thresh);


