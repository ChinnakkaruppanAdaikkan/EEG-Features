function Hjorth_Complexity = H_Complex(Input_Signal, Sampling_Frequency)

Input_Signal_Double=double(Input_Signal);

Num_Samples=length(Input_Signal_Double);
Log_2_Num_Samples=log2(Num_Samples);
Ceil_Log_2_Num_Samples=ceil(Log_2_Num_Samples);
Expected_Num_Samples=2^Ceil_Log_2_Num_Samples;
Num_Zeros_to_be_Padded=Expected_Num_Samples-Num_Samples;
%Zero_Padded_Signal=padarray(Input_Signal,[Num_Zeros_to_be_Padded 0],0,'post');
Zero_Padded_Signal=padarray(Input_Signal_Double,[0 Num_Zeros_to_be_Padded],0,'post');
Num_Samples_Zero_Padded_Signal=length(Zero_Padded_Signal);
Hamming_Window_Array=hamming(Num_Samples_Zero_Padded_Signal);
Wndowed_Signal=Zero_Padded_Signal.*Hamming_Window_Array;
Spectral_Coefficients_Array=fft(Wndowed_Signal);
Frequency_Vector=0:Sampling_Frequency/Num_Samples_Zero_Padded_Signal:Sampling_Frequency/2;
Half_length_Spectrum=Spectral_Coefficients_Array(1:(Num_Samples_Zero_Padded_Signal/2)+1);
Abs_Half_length_Spectrum=abs(Half_length_Spectrum);
Index_Pointer_5=find(Abs_Half_length_Spectrum==max(Abs_Half_length_Spectrum(:)));
Hjorth_Complexity= round(Frequency_Vector(Index_Pointer_5));
