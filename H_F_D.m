function Higuchi_Fractal_Dimension = H_F_D(Input_Signal)

Input_Signal = Input_Signal(:);
Input_Signal_Double=double(Input_Signal);
kmax=floor(length(Input_Signal_Double)/2);
Higuchi_Fractal_Dimension=HFDCALC(Input_Signal_Double,kmax);