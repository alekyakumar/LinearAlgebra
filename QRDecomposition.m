%%Reference Class notes


clear all
close all
A = [1 2 3; 4 5 6; 7 8 7;4 2 3;4 2 2;];
cond(A)
 [x,r] = Classical_GrammSchmidt(A); 
 [y,r] = Modified_GrammSchmidt(A); 
 [z,r] = Householder_Orthogonalisation(A);

 %%%%%%%%Comment on your results%%%%%%
   %The A matrix is returned for each of the factorisation methods used. The Modified and Claasical
   %Gramm Schmidt gave similar values , but Householder gives a different value. The house 
   %holder gives values that match with QR decompostion
   