function corDim = Corr_Dim(Input_Signal)

Input_Signal_Double=double(Input_Signal);
corDim = correlationDimension(Input_Signal_Double);