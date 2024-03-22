function Spectral_Kurtosis = S_Kurtosis(Input_Signal, Sampling_Frequency)

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
Abs_Half_length_Spectrum=abs(Half_length_Spectrum);
Spectral_Centroid=sum(Frequency_Vector.*Abs_Half_length_Spectrum)./sum(Abs_Half_length_Spectrum); % SC is the sum of freq values weighted by relative spectral mag of each freq cmpnnt to the tot spctrl magn%
spectral_Spread=sqrt(sum(((Frequency_Vector-Spectral_Centroid).^2).*Abs_Half_length_Spectrum)./sum(Abs_Half_length_Spectrum)); 
Spectral_Kurtosis=sum(((Frequency_Vector-Spectral_Centroid).^4).*Abs_Half_length_Spectrum)./((spectral_Spread^4)*sum(Abs_Half_length_Spectrum)); 

