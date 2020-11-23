function I=pole(pol)
% clc;
% clear variables;
% close all force;

max=100;
min=0;

I = imread('C:\Users\vladv\Desktop\Программирование Проекты\Матлаб\Karta.png','png');
% I = imread('C:\Users\vladv\Desktop\Для видео\устав.png','png');

% figure(1);
% imshow(I);

rC = I(:, :, 1);
gC = I(:, :, 2);
bC = I(:, :, 3);

%%%

N=[size(pol,1),size(pol,2)];

Da=size(rC,1)/N(1);
Db=size(rC,2)/N(2);

whitebroen=[101,67,33];
blackbroen=[205,133,63];

klet{6}=ones(Da,Db,3)*200;
klet{1}=ones(Da,Db,3)*50;
Ka=round(size(klet{1},1)/2); %%% Координаты первого центра клетки
Kb=round(size(klet{1},2)/2); %%% Координаты первого центра клетки
LL=[Ka,Kb];


r1=round(Da/2-5);
r2=round(Db/3+5);

for i=1:1:3
    klet{1}(LL(1)-r1:1:LL(1)+r1,LL(2)-r1:1:LL(2)+r1,i)=whitebroen(i);
    klet{6}(LL(1)-r1:1:LL(1)+r1,LL(2)-r1:1:LL(2)+r1,i)=blackbroen(i);
end

klet{2}=klet{1};
klet{3}=klet{1};
klet{4}=klet{1};
klet{5}=klet{1};

for i=1:1:size(klet{2},1)
    for j=1:1:size(klet{2},2)
        if fix((i-Da/2)^2+(j-Db/2)^2)<=r2^2
            klet{2}(i,j,:)=50;
            klet{3}(i,j,:)=0;
            klet{4}(i,j,:)=200;
            klet{5}(i,j,:)=256;
        end
        if fix((i-Da/2)^2+(j-Db/2)^2)<=(r2/2)^2
            klet{3}(i,j,1)=256;
            klet{5}(i,j,1)=256;
        end
    end
end

k=0;
for i=1:1:N(1)
    for j=1:1:N(2)
        k=k+1;
        if mod(k,2)==0
            switch pol(i,j)
                case 1
                    I((i-1)*Da+1:1:i*Da,(j-1)*Db+1:1:j*Db,:)=klet{1}(:,:,:);
                case 2
                    I((i-1)*Da+1:1:i*Da,(j-1)*Db+1:1:j*Db,:)=klet{2}(:,:,:);
                case 3
                    I((i-1)*Da+1:1:i*Da,(j-1)*Db+1:1:j*Db,:)=klet{3}(:,:,:);
                case 4
                    I((i-1)*Da+1:1:i*Da,(j-1)*Db+1:1:j*Db,:)=klet{4}(:,:,:);
                case 5
                    I((i-1)*Da+1:1:i*Da,(j-1)*Db+1:1:j*Db,:)=klet{5}(:,:,:);
            end
        end
        if mod(k+1,2)==0
            I((i-1)*Da+1:1:i*Da,(j-1)*Db+1:1:j*Db,:)=klet{6}(:,:,:);
        end
    end
    k=k+1;
end





% figure(2);
% imshow(I);
% imwrite(I, 'image2.tif');


end





