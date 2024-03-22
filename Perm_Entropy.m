function Permutation_Entropy = Perm_Entropy(Input_Signal)

Input_Signal_Double=double(Input_Signal);
Permutation_Entropy=petropy(Input_Signal_Double,3,1,'order');