function Spectral_Flux = S_Flux(Input_Signal, Sampling_Frequency)

Input_Signal=double(Input_Signal);
Input_Signal = Input_Signal(:);
Temporary_Array=zeros((Sampling_Frequency/2)+1, 1);
Counter_Index=0;
for Index_Pointer_6=1:Sampling_Frequency:length(Input_Signal) - Sampling_Frequency
   Counter_Index=Counter_Index+1;
    Signal_Segment=Input_Signal(Index_Pointer_6:(Index_Pointer_6+Sampling_Frequency-1));
    Spectral_Coefficients_Array_1=fft(Signal_Segment);
Half_length_Abs_Spectrum=abs(Spectral_Coefficients_Array_1(1:(length(Signal_Segment)/2)+1));
Spectral_Flux_Local_Array(Counter_Index)=sum((abs(Half_length_Abs_Spectrum-Temporary_Array)).^2)^(1/2);
Temporary_Array=Half_length_Abs_Spectrum;
end
Spectral_Flux=mean(Spectral_Flux_Local_Array);