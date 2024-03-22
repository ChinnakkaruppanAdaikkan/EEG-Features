function State_space_Correlation_Entropy = SSCE(Input_Signal)

Input_Signal = Input_Signal(:);
Input_Signal_Double=double(Input_Signal);
Embedding_Dimension=5;
State_space_Correlation_Entropy=ssce(Input_Signal_Double,5);