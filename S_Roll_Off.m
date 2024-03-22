function Spectral_Roll_Off = S_Roll_Off(Input_Signal, Sampling_Frequency)

Input_Signal=double(Input_Signal);
Input_Signal = Input_Signal(:);
Num_Samples=length(Input_Signal);
Log_2_Num_Samples=log2(Num_Samples);
Ceil_Log_2_Num_Samples=ceil(Log_2_Num_Samples);
Expected_Num_Samples=2^Ceil_Log_2_Num_Samples;
Num_Zeros_to_be_Padded=Expected_Num_Samples-Num_Samples;
Zero_Padded_Signal=padarray(Input_Signal,[0 Num_Zeros_to_be_Padded],0,'post');
Num_Samples_Zero_Padded_Signal=length(Zero_Padded_Signal);
Hamming_Window_Array=hamming(Num_Samples_Zero_Padded_Signal);
Wndowed_Signal=Zero_Padded_Signal.*Hamming_Window_Array;
Spectral_Coefficients_Array=fft(Wndowed_Signal);
Frequency_Vector=0:Sampling_Frequency/Num_Samples_Zero_Padded_Signal:Sampling_Frequency/2;
Half_length_Spectrum=Spectral_Coefficients_Array(1:(Num_Samples_Zero_Padded_Signal/2)+1);
PSD_Array=abs(Half_length_Spectrum).^2/(Sampling_Frequency*Num_Samples_Zero_Padded_Signal);
PSD_Array(2:end-1)=PSD_Array(2:end-1)*2;
cumulativesum=cumsum(PSD_Array);
Normalized_Cum_Sum=cumulativesum/max(cumulativesum);
Index_Pointer_1=find(Normalized_Cum_Sum>=0.95); 
Index_Pointer_2=min(Index_Pointer_1);
Spectral_Roll_Off=round(Frequency_Vector(Index_Pointer_2));