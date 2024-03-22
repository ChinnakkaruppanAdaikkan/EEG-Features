function gamma_dominant_frequency = Gamma_Dom(Input_Signal, Sampling_Frequency)

sampling_frequency = Sampling_Frequency;
signal = double(Input_Signal);
signal_fft = fft(signal);
signal_power = abs(signal_fft).^2;
signal_power = signal_power(1:length(signal_power)/2);
frequency_vector = (1 / sampling_frequency) : sampling_frequency/(length(signal)) : (sampling_frequency / 2);
lower_cutoff_frequency = 31;
upper_cutoff_frequency = 48;
index_pointer_1 = min(find(frequency_vector > lower_cutoff_frequency));
index_pointer_2 = max(find(frequency_vector < upper_cutoff_frequency));
spectral_coefficients_in_desired_band = signal_power;
spectral_coefficients_in_desired_band(1:index_pointer_1) = 0;
spectral_coefficients_in_desired_band(index_pointer_2:end) = 0;
max_power_in_desired_band = max(spectral_coefficients_in_desired_band);
dominant_frequency = frequency_vector(find(spectral_coefficients_in_desired_band == max_power_in_desired_band));

gamma_dominant_frequency = dominant_frequency;
end