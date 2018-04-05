clear all
close all

M = imread('futurama.png');
AI = im2double(M);
R = AI(:,:,1);
[U_R,S_R,V_R]  = svd(R);
rank(R)
B = AI(:,:,2);
[U_B,S_B,V_B]  = svd(B);
rank(B)
G = AI(:,:,3);
[U_G,S_G,V_G]  = svd(G);
rank(G)
count = 0;
for i = 1:20:210
    count = count +1;
    new_R = U_R(:,1:i)*S_R(1:i,1:i)*V_R(:,1:i)';
    new_B = U_B(:,1:i)*S_B(1:i,1:i)*V_B(:,1:i)';
    new_G = U_G(:,1:i)*S_G(1:i,1:i)*V_G(:,1:i)';
    total = cat(3,new_R,new_B,new_G);
    %image
    subplot(3,4,count)
    imshow(total)
    
    
    
end

%[Img, Rank_App] = SVD_IP_Function(A,R);