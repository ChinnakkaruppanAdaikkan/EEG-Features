function Lempel_Ziv_or_Kolmogorov_Complexity = LZ_Complex(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Binary_Sequence=Input_Signal_Double>mean(Input_Signal_Double);
Lempel_Ziv_or_Kolmogorov_Complexity=kolmogorov(Binary_Sequence);