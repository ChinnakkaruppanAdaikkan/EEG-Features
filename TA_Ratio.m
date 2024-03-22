function Theta_Alpha_Ratio = TA_Ratio(Input_Signal,Sampling_Frequency)
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
Lower_Freq_Alpha=8;
Upper_Freq_Alpha=13;
Lower_Freq_Theta=4;
Upper_Freq_Theta=8;
TemporaryArray_1=abs(Frequency_Vector-Lower_Freq_Alpha);
TemporaryArray_2=abs(Frequency_Vector-Upper_Freq_Alpha);
Index_Pointer_1=find(TemporaryArray_1==min(TemporaryArray_1));
Index_Pointer_2=find(TemporaryArray_2==min(TemporaryArray_2));
Spectral_Coeffcients_in_Desired_Band=Half_length_Spectrum(Index_Pointer_1:Index_Pointer_2);
Alpha_Power=sum((abs(Spectral_Coeffcients_in_Desired_Band)).^2);
TemporaryArray_1=abs(Frequency_Vector-Lower_Freq_Theta);
TemporaryArray_2=abs(Frequency_Vector-Upper_Freq_Theta);
Index_Pointer_1=find(TemporaryArray_1==min(TemporaryArray_1));
Index_Pointer_2=find(TemporaryArray_2==min(TemporaryArray_2));
Spectral_Coeffcients_in_Desired_Band=Half_length_Spectrum(Index_Pointer_1:Index_Pointer_2);
Theta_Power=sum((abs(Spectral_Coeffcients_in_Desired_Band)).^2);
Theta_Alpha_Ratio=Theta_Power/Alpha_Power;