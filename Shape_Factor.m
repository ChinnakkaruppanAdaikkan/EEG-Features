function SF = Shape_Factor(Input_signal)

signal = double(Input_signal);
SF=rms(signal)/mean(abs(signal));