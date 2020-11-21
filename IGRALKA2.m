clc;
clear variables;
close all force;

% global Napravlenie
%
% Napravlenie=0;

%%%СЛОЖНОСТЬ
SLO=1;
SLO=4;
a=1; % 1 Игровые клетки
b=2; % 2 Чёрные шашки
c=3; % 3 Черные дамки
d=4; % 4 Белые шашки
e=5; % 5 Белые дамки
f=6; % 6 Неигровые клетки

flag=true;
while flag
    OneTwo=input(' Желаете ходить первым? (1/2) \n');
    if subs(OneTwo)==1
        a=1; % 1 Игровые клетки
        b=2; % 2 Чёрные шашки
        c=3; % 3 Черные дамки
        d=4; % 4 Белые шашки
        e=5; % 5 Белые дамки
        f=6; % 6 Неигровые клетки
        
        Pol=[f,b,f,b,f,b,f,b;
            b,f,b,f,b,f,b,f;
            f,b,f,b,f,b,f,b;
            a,f,a,f,a,f,a,f;
            f,a,f,a,f,a,f,a;
            d,f,d,f,d,f,d,f;
            f,d,f,d,f,d,f,d;
            d,f,d,f,d,f,d,f];
        
%         Pol=[f,b,f,b;
%               a,f,a,f;
%               f,a,f,a;
%               d,f,d,f];
        
%        Pol=[f,b,f,b,f,b,f,b,f,b,f,b;
%             b,f,b,f,b,f,b,f,b,f,b,f;
%             f,b,f,b,f,b,f,b,f,b,f,b;
%             b,f,b,f,b,f,b,f,b,f,b,f;
%             f,a,f,a,f,a,f,a,f,a,f,a;
%             a,f,a,f,a,f,a,f,a,f,a,f;
%             f,a,f,a,f,a,f,a,f,a,f,a;
%             a,f,a,f,a,f,a,f,a,f,a,f;
%             f,d,f,d,f,d,f,d,f,d,f,d;
%             d,f,d,f,d,f,d,f,d,f,d,f;
%             f,d,f,d,f,d,f,d,f,d,f,d;
%             d,f,d,f,d,f,d,f,d,f,d,f];
        
%         Pol=[f,a,f,a,f,a,f,a;
%              a,f,b,f,b,f,b,f;
%              f,a,f,a,f,a,f,a;
%              a,f,b,f,b,f,b,f;
%              f,a,f,e,f,a,f,a;
%              a,f,b,f,b,f,b,f;
%              f,a,f,a,f,a,f,a;
%              a,f,a,f,a,f,a,f];
%         Pol=[f,a,f,a,f,a,f,a;
%              a,f,e,f,e,f,a,f;
%              f,a,f,c,f,a,f,a;
%              a,f,d,f,e,f,a,f;
%              f,a,f,a,f,a,f,a;
%              a,f,a,f,a,f,a,f;
%              f,e,f,e,f,e,f,a;
%              a,f,a,f,a,f,a,f];
%          Pol=[f,a,f,a,f,a,f,a;
%               a,f,a,f,a,f,a,f;
%               f,a,f,a,f,a,f,a;
%               a,f,a,f,b,f,a,f;
%               f,a,f,a,f,a,f,a;
%               a,f,a,f,d,f,a,f;
%               f,a,f,a,f,a,f,a;
%               a,f,a,f,a,f,a,f];
%            Pol=[f,b,f,a,f,b,f,b;
%               a,f,a,f,a,f,a,f;
%               f,b,f,a,f,b,f,b;
%               b,f,b,f,a,f,a,f;
%               f,a,f,a,f,a,f,b;
%               d,f,d,f,d,f,d,f;
%               f,a,f,d,f,d,f,a;
%               d,f,a,f,d,f,d,f];
          
%            Pol=[f,b,f,a,f,b,f,a;
%               a,f,a,f,a,f,a,f;
%               f,a,f,d,f,a,f,b;
%               b,f,a,f,b,f,b,f;
%               f,a,f,d,f,d,f,b;
%               d,f,a,f,d,f,a,f;
%               f,a,f,a,f,d,f,a;
%               a,f,a,f,d,f,d,f];
         
        flag=false;
    elseif subs(OneTwo)==2
        a=1; % 1 Игровые клетки
        b=4; % 2 Чёрные шашки
        c=5; % 3 Черные дамки
        d=2; % 4 Белые шашки
        e=3; % 5 Белые дамки
        f=6; % 6 Неигровые клетки
        
        Pol=[f,b,f,b,f,b,f,b;
            b,f,b,f,b,f,b,f;
            f,b,f,b,f,b,f,b;
            a,f,a,f,a,f,a,f;
            f,a,f,a,f,a,f,a;
            d,f,d,f,d,f,d,f;
            f,d,f,d,f,d,f,d;
            d,f,d,f,d,f,d,f];
        
        
        
%         Pol=[f,a,f,a,f,a,f,a;
%             a,f,a,f,b,f,a,f;
%             f,a,f,a,f,a,f,a;
%             a,f,a,f,a,f,a,f;
%             f,a,f,b,f,b,f,b;
%             b,f,d,f,e,f,b,f;
%             f,d,f,d,f,d,f,d;
%             d,f,d,f,d,f,d,f];
        
%         Pol=[f,a,f,a,f,a,f,a;
%              b,f,a,f,a,f,a,f;
%              f,b,f,d,f,a,f,a;
%              a,f,a,f,a,f,a,f;
%              f,d,f,d,f,a,f,a;
%              a,f,a,f,d,f,a,f;
%              f,d,f,a,f,a,f,a;
%              a,f,a,f,a,f,a,f];
% %          
%          Pol=[f,a,f,a,f,a,f,a;
%               a,f,a,f,a,f,a,f;
%               f,a,f,b,f,b,f,a;
%               a,f,a,f,a,f,a,f;
%               f,a,f,a,f,a,f,a;
%               a,f,a,f,a,f,a,f;
%               f,a,f,d,f,d,f,a;
%               a,f,a,f,a,f,a,f];
% 
%  	     Pol=[f,b,f,b;
%               a,f,a,f;
%               f,a,f,a;
%               d,f,d,f];
%%%%%%%%%%%%%% Вот дерьмо
%          Pol=[f,b,f,a,f,b,f,b;
%               a,f,a,f,a,f,a,f;
%               f,b,f,a,f,b,f,b;
%               b,f,b,f,a,f,a,f;
%               f,a,f,a,f,a,f,b;
%               d,f,d,f,d,f,d,f;
%               f,a,f,d,f,d,f,a;
%               d,f,a,f,d,f,d,f];
          %%%%%%%%%%%%%% Вот дерьмо
%          Pol=[f,b,f,a,f,b,f,a;
%               a,f,a,f,a,f,a,f;
%               f,a,f,d,f,a,f,b;
%               b,f,a,f,b,f,b,f;
%               f,a,f,d,f,d,f,b;
%               d,f,a,f,d,f,a,f;
%               f,a,f,a,f,d,f,a;
%               a,f,a,f,d,f,d,f];

% Pol=[f,b,f,a,f,b,f,b;
%               a,f,a,f,a,f,a,f;
%               f,b,f,a,f,b,f,b;
%               b,f,b,f,a,f,a,f;
%               f,a,f,a,f,a,f,b;
%               d,f,d,f,d,f,d,f;
%               f,a,f,d,f,d,f,a;
%               d,f,a,f,d,f,d,f];
%           ??????????????
%          Pol=[f,a,f,a,f,a,f,b;
%               a,f,a,f,a,f,a,f;
%               f,a,f,a,f,a,f,a;
%               b,f,d,f,a,f,a,f;
%               f,a,f,a,f,b,f,a;
%               a,f,a,f,a,f,a,f;
%               f,a,f,d,f,d,f,d;
%               a,f,a,f,a,f,a,f];
%          

%          Pol=[f,f,f,f,f,f,f,b;
%               f,f,f,f,f,f,a,f;
%               f,f,f,f,f,f,f,f;
%               b,f,d,f,a,f,f,f;
%               f,a,f,a,f,b,f,f;
%               a,f,f,f,a,f,a,f;
%               f,f,f,d,f,d,f,d;
%               f,f,f,f,f,f,f,f];


        flag=false;
    end
end
figure(1);
% Pol=[f,a,f,a,f,a,f,a;
%      a,f,a,f,a,f,a,f;
%      f,a,f,a,f,a,f,a;
%      a,f,a,f,a,f,a,f;
%      f,a,f,a,f,a,f,a;
%      a,f,a,f,a,f,a,f;
%      f,a,f,a,f,a,f,a;
%      a,f,a,f,a,f,a,f];
imagesc(Pol);
colormap hot

% Игрок всегда за буквы D и E
% Бот всегда за буквы B и C


flag=true;
flagloseIG=true;
flagloseBOT=true;

if OneTwo==2
    
    [Pol]=HodBota(Pol,a,b,c,d,e,f,OneTwo,SLO);
    
    figure(2);
    imagesc(Pol);
    colormap hot
end

FIG=1;
while flagloseIG&&flagloseBOT
    
    ZAPAS(FIG,:,:)=Pol(:,:);
    [ZAPAS,flagloseIG,Pol]=IGRALKA(Pol,a,b,c,d,e,f,OneTwo,ZAPAS,FIG);
    
    figure(1);
    imagesc(Pol);
    colormap hot
    
    [SchetSIMPLE, SIMPLE, SchetBETTER, BETTER]=ChoiseMove(Pol,a,d,e,b,c,f,OneTwo); %%% Поменяли B C и D E местами. Теперь функция найдет все ходы бота, а не игрока. Удобно.
    if (SchetBETTER~=0||SchetSIMPLE~=0)&&flagloseIG
        [Pol]=HodBota(Pol,a,b,c,d,e,f,OneTwo,SLO);
    else
        flagloseBOT=false;
        fprintf('Вы выиграли, пожалуйста.')
    end
    
    figure(2);
    imagesc(Pol);
    colormap hot
   
    
    FIG=FIG+1;
end

q=0;

if ~flagloseIG
    while q<3
        q=q+1;
    Pol=[1,f,f,f,2,2,2,f;
         1,f,f,f,2,f,2,f;
         1,1,1,f,2,2,2,f;
         f,3,3,3,4,4,4,4;
         3,f,f,f,4,f,f,f;
         f,3,3,f,4,4,4,f;
         f,f,f,3,4,f,f,f;
         3,3,3,f,4,4,4,4];
     figure(2);
    imagesc(Pol);
    colormap hot
    pause(1);
    Pol=[f,5,f,5,f,2,2,2;
         f,5,f,5,f,2,f,2;
         f,f,5,f,f,2,f,2;
         f,5,f,f,f,2,2,2;
         5,f,f,3,f,3,f,f;
         f,f,f,3,f,3,f,f;
         f,f,f,3,f,3,f,f;
         f,f,f,f,3,f,f,f];
     figure(2);
    imagesc(Pol);
    colormap hot
    pause(1);
    end
else
    while q<3
        q=q+1;
    Pol=[16,13,6,3,15,4,2,18;
         5,8,17,1,2,3,4,6;
         3,11,18,2,8,17,2,13;
         20,14,17,3,4,6,12,4;
         3,12,4,16,20,f,f,6;
         15,3,7,16,18,4,8,1;
         10,16,20,3,7,17,2,15;
         3,7,3,15,4,8,4,19];
     figure(2);
    imagesc(Pol);
    colormap hot
    pause(1);
%     Pol=[f,5,f,5,f,2,2,2;
%          f,5,f,5,f,2,f,2;
%          f,f,5,f,f,2,f,2;
%          f,5,f,f,f,2,2,2;
%          5,f,f,3,f,3,f,f;
%          f,f,f,3,f,3,f,f;
%          f,f,f,3,f,3,f,f;
%          f,f,f,f,3,f,f,f];
%      figure(2);
%     imagesc(Pol);
%     colormap hot
%     pause(1);
    end
end

function [Pol]=HodBota(Pol,a,b,c,d,e,f,OneTwo,SLO)

[SchetSIMPLE, SIMPLE, SchetBETTER, BETTER]=ChoiseMove(Pol,a,d,e,b,c,f,OneTwo);

if SchetBETTER~=0
    
 
    
    PolNiec=Pol;
    ITOGmax=-160;
    flagMAX=true;
    OBRAT=0;
    [ITOGmax,Pol,flagMAX]=bolsheChemRanee(Pol,a,b,c,d,e,f,OneTwo,BETTER,SchetBETTER,SchetSIMPLE, SIMPLE,PolNiec,ITOGmax,flagMAX,OBRAT,SLO); 
    
elseif SchetSIMPLE~=0
    
   
    
    PolNiec=Pol;
    ITOGmax=-160;
    flagMAX=true;
    OBRAT=0;
    
    [ITOGmax,Pol,flagMAX]=bolsheChemRanee(Pol,a,b,c,d,e,f,OneTwo,BETTER,SchetBETTER,SchetSIMPLE,SIMPLE,PolNiec,ITOGmax,flagMAX,OBRAT,SLO);
    
end


end

function [ITOGmax,PolNiec,flagMAX]=bolsheChemRanee(Pol,a,b,c,d,e,f,OneTwo,BETTER,SchetBETTER,SchetSIMPLE,SIMPLE,PolNiec,ITOGmax,flagMAX,OBRAT,SLO)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if OneTwo==1
    if d==4
        dam=1;
        odin=1;
    else
        odin=-1;
        dam=size(Pol,1);
    end
else
    if d==4
        odin=-1;
        dam=size(Pol,1);
    else
        odin=1;
        dam=1;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ITOGmax=160;
   if SchetBETTER==0
       
       for R=1:1:SchetSIMPLE
           
           Nach=[SIMPLE(R,1),SIMPLE(R,2)];
           Kon=[SIMPLE(R,3),SIMPLE(R,4)];
           
           Pol2=HodIgroka(Pol,a,d,e,b,c,f,Nach,Kon,OneTwo);
           OBRAT=OBRAT+1;
           if OBRAT<SLO  %%% Только нечет
               flagMAX=true;
               [SchetSIMPLE3, SIMPLE3, SchetBETTER3, BETTER3]=ChoiseMove(Pol2,a,b,c,d,e,f,OneTwo);
               [ITOGmin,Pol3,flagMAX]=bolsheChemRaneeCHEL(Pol2,a,d,e,b,c,f,OneTwo,BETTER3,SchetBETTER3,SchetSIMPLE3,SIMPLE3,PolNiec,ITOGmax,flagMAX,OBRAT,SLO);
               
               if ITOGmin<ITOGmax
                   ITOGmax=ITOGmin;
                   PolNiec=Pol2;
               elseif ITOGmin==ITOGmax
                   Slu=randi([1 2],1,1);
                   PolNiec=Pol2*(Slu-1)+PolNiec*(2-Slu);
               end
               
           else
               
               ITOG=0;
               for k=1:1:size(Pol2,1)
                   for n=1:1:size(Pol2,2)
                       switch Pol2(k,n)
                           case b
                               ITOG=ITOG+2+(k)^2*0.4/7; %%% Чем ближе к противоположной стороне шашка, тем больше её вес. Шашка стоит 2 балла.
                           case c
                               ITOG=ITOG+5.6; %%% За свою дамку + к победе!
                           case d
                               ITOG=ITOG-2-(9-k)^2*0.4/7; %%%% ДОБАВИТЬ РАБОту для ЧЕЛОВЕКА И РОБОТА при разных истояниках вызова
                           case e
                               ITOG=ITOG-5.6; %%% За чужую дамку - к эффективности хода!
                               
                       end
                   end
               end
               
               
               if flagMAX
                   ITOGmax=ITOG;
                   flagMAX=false;
                   PolNiec=Pol2;
                   
               end
               
               if ITOG>=ITOGmax
                   ITOGmax=ITOG;
                   PolNiec=Pol2;
               end
               
           end
           
           OBRAT=OBRAT-1;
           
       end
       
      
       
       
   end
   
   Pol5=Pol;
   
   Rposl=1;
   for R=1:1:SchetBETTER
       
       if Rposl~=R
           Pol=Pol5;
           Rposl=R;
       end
        
        Nach=[BETTER(R,1),BETTER(R,2)];
        Kon=[BETTER(R,3),BETTER(R,4)];
        
        
        flagEHi=true;
        while flagEHi
            
            
            Pol2=HodIgroka(Pol,a,d,e,b,c,f,Nach,Kon,OneTwo); %%%

            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%
            if Kon(1)-Nach(1)>0
                if Kon(2)-Nach(2)>0
                    NAPRAV=5;
                else
                    NAPRAV=3;
                end
            else
                if Kon(2)-Nach(2)<0
                    NAPRAV=2;
                else
                    NAPRAV=4;
                end
            end
            %%%%%%%%%%%%%%%%%%%%%%%%
            size(Pol2);
            PolR=[zeros(size(Pol2,1),size(Pol2,2)),Pol2,zeros(size(Pol2,1),size(Pol2,2))];
            PolR=[zeros(3*size(Pol2,1),size(Pol2,2)),PolR',zeros(3*size(Pol2,1),size(Pol2,2))];
            PolR=PolR';
            
            BETTER1=zeros(6*size(Pol2,1),4);
            SchetBETTER1=0;
            
            
            flagprovB=true;
            [BETTER1,SchetBETTER1]=better(Kon(1)+8,Kon(2)+8,SchetBETTER1,BETTER1,PolR,a,d,e,b,c,f,flagprovB,NAPRAV);
            
           
            BETTER1=BETTER1-size(Pol2,1);
            if SchetBETTER1==0
                flagEHi=false;
                ITOG=0;
                
                OBRAT=OBRAT+1;
                if OBRAT<SLO
                    flagMAX=true;
                    [SchetSIMPLE3, SIMPLE3, SchetBETTER3, BETTER3]=ChoiseMove(Pol2,a,b,c,d,e,f,OneTwo);
                    
                    [ITOGmin,Pol3,flagMAX]=bolsheChemRaneeCHEL(Pol2,a,d,e,b,c,f,OneTwo,BETTER3,SchetBETTER3,SchetSIMPLE3,SIMPLE3,PolNiec,ITOGmax,flagMAX,OBRAT,SLO);
                    
                    if ITOGmin<ITOGmax
                        ITOGmax=ITOGmin;
                        PolNiec=Pol2;
                    elseif ITOGmin==ITOGmax
                        Slu=randi([1 2],1,1);
                        PolNiec=Pol2*(Slu-1)+PolNiec*(2-Slu);
                    end
                else
                    
                    for k=1:1:size(Pol2,1)
                        for n=1:1:size(Pol2,2)
                            switch Pol2(k,n)
                                case b
                                    ITOG=ITOG+2+(k)^2*0.4/7; %%% Чем ближе к противоположной стороне шашка, тем больше её вес. Шашка стоит 2 балла.
                                case c
                                    ITOG=ITOG+5.6; %%% За свою дамку + к победе!
                                case d
                                    ITOG=ITOG-2-(size(Pol2,1)+1-k)^2*0.4/7; %%%% ДОБАВИТЬ РАБОту для ЧЕЛОВЕКА И РОБОТА при разных истояниках вызова
                                case e
                                    ITOG=ITOG-5.6; %%% За чужую дамку - к эффективности хода!
                                    
                            end
                        end
                    end
                   
                    if flagMAX
                        ITOGmax=ITOG;
                        flagMAX=false;
                        PolNiec=Pol2;
                        
                    end
                    
                    if ITOG>=ITOGmax
                        ITOGmax=ITOG;
                        PolNiec=Pol2;
                        
                    end
                end
                OBRAT=OBRAT-1;
            else
               
                [ITOGmax,Pol,flagMAX]=bolsheChemRanee(Pol2,a,b,c,d,e,f,OneTwo,BETTER1,SchetBETTER1,SchetSIMPLE,SIMPLE,PolNiec,ITOGmax,flagMAX,OBRAT,SLO);
                
            end
            
            
            
            
        end
        
    end
    

end
function [ITOGmax,PolNiec,flagMAX]=bolsheChemRaneeCHEL(Pol,a,b,c,d,e,f,OneTwo,BETTER,SchetBETTER,SchetSIMPLE,SIMPLE,PolNiec,ITOGmax,flagMAX,OBRAT,SLO)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if OneTwo==1
    if d==4
        dam=1;
        odin=1;
    else
        odin=-1;
        dam=size(Pol,1);
    end
else
    if d==4
        odin=-1;
        dam=size(Pol,1);
    else
        odin=1;
        dam=1;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 ITOGmax=-160;
   if SchetBETTER==0
       
       for R=1:1:SchetSIMPLE
           Nach=[SIMPLE(R,1),SIMPLE(R,2)];
           Kon=[SIMPLE(R,3),SIMPLE(R,4)];
        
           Pol2=HodIgroka(Pol,a,d,e,b,c,f,Nach,Kon,OneTwo);
           OBRAT=OBRAT+1;
           if OBRAT<SLO
               flagMAX=true;
               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
               [SchetSIMPLE3, SIMPLE3, SchetBETTER3, BETTER3]=ChoiseMove(Pol2,a,b,c,d,e,f,OneTwo);
               [ITOGmin,Pol3,flagMAX]=bolsheChemRanee(Pol2,a,d,e,b,c,f,OneTwo,BETTER3,SchetBETTER3,SchetSIMPLE3,SIMPLE3,PolNiec,ITOGmax,flagMAX,OBRAT,SLO);
              
               if ITOGmin>ITOGmax
                   ITOGmax=ITOGmin;
                   PolNiec=Pol2;
                  
               elseif ITOGmin==ITOGmax
                   Slu=randi([1 2],1,1);
                   PolNiec=Pol2*(Slu-1)+PolNiec*(2-Slu);
                  
               end
           else
               ZZZ=0;
               ITOG=0;
               for k=1:1:size(Pol2,1)
                   for n=1:1:size(Pol2,2)
                       switch Pol2(k,n)
                           case b
                               ITOG=ITOG+2+(odin+1)*(9-k)^2*0.4/14+(odin-1)*(9-k)^2*0.4/(-14); %%% Чем ближе к противоположной стороне шашка, тем больше её вес. Шашка стоит 2 балла.
                           case c
                               ITOG=ITOG+5.6; %%% За свою дамку + к победе!
                           case d
                               ITOG=ITOG-2-(odin+1)*(k)^2*0.4/14-(odin-1)*(k)^2*0.4/(-14); %%%% ДОБАВИТЬ РАБОту для ЧЕЛОВЕКА И РОБОТА при разных истояниках вызова
                               ZZZ=1;
                           case e
                               ITOG=ITOG-5.6; %%% За чужую дамку - к эффективности хода!
                               ZZZ=1;
                       end
                   end
               end
               
               
               if flagMAX
                   ITOGmax=ITOG;
                   flagMAX=false;
                   PolNiec=Pol2;
                   
               end
               
               if ITOG>ITOGmax
                   ITOGmax=ITOG;
                   PolNiec=Pol2;
               elseif ITOG==ITOGmax
                   Slu=randi([1 2],1,1);
                   PolNiec=Pol2*(Slu-1)+PolNiec*(2-Slu);
               end
               
               if ZZZ==0
                   ITOGmax=160;
                   PolNiec=Pol2;
               end
           end
           
           OBRAT=OBRAT-1;
       end
       
      
       
       
   end
   
    Pol5=Pol;
    
    Rposl=1;
    for R=1:1:SchetBETTER
        
        if Rposl~=R
            Pol=Pol5;
            Rposl=R;
        end
        
        Nach=[BETTER(R,1),BETTER(R,2)];
        Kon=[BETTER(R,3),BETTER(R,4)];
        
        
        %%% Умный алгоритм
       
        
        
        
        flagEHi=true;
        while flagEHi
            
           
            Pol2=HodIgroka(Pol,a,d,e,b,c,f,Nach,Kon,OneTwo); %%%
            
            
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%
            if Kon(1)-Nach(1)>0
                if Kon(2)-Nach(2)>0
                    NAPRAV=5;
                else
                    NAPRAV=3;
                end
            else
                if Kon(2)-Nach(2)<0
                    NAPRAV=2;
                else
                    NAPRAV=4;
                end
            end
            %%%%%%%%%%%%%%%%%%%%%%%%
            
            size(Pol2);
            PolR=[zeros(size(Pol2,1),size(Pol2,2)),Pol2,zeros(size(Pol2,1),size(Pol2,2))];
            PolR=[zeros(3*size(Pol2,1),size(Pol2,2)),PolR',zeros(3*size(Pol2,1),size(Pol2,2))];
            PolR=PolR';
            
            BETTER1=zeros(6*size(Pol2,1),4);
            SchetBETTER1=0;
            
            
            flagprovB=true;
            [BETTER1,SchetBETTER1]=better(Kon(1)+8,Kon(2)+8,SchetBETTER1,BETTER1,PolR,a,d,e,b,c,f,flagprovB,NAPRAV);
            
            
            BETTER1=BETTER1-size(Pol2,1);
            if SchetBETTER1==0
                flagEHi=false;
                ITOG=0;
                
                OBRAT=OBRAT+1;
                if OBRAT<SLO
                    flagMAX=true;
                    [SchetSIMPLE3, SIMPLE3, SchetBETTER3, BETTER3]=ChoiseMove(Pol2,a,b,c,d,e,f,OneTwo);
                    [ITOGmin,Pol3,flagMAX]=bolsheChemRanee(Pol2,a,d,e,b,c,f,OneTwo,BETTER3,SchetBETTER3,SchetSIMPLE3,SIMPLE3,PolNiec,ITOGmax,flagMAX,OBRAT,SLO);
                    
                    if ITOGmin>ITOGmax
                        ITOGmax=ITOGmin;
                        PolNiec=Pol2;
                    elseif ITOGmin==ITOGmax
                        Slu=randi([1 2],1,1);
                        PolNiec=Pol2*(Slu-1)+PolNiec*(2-Slu);
                    end
                else
                    ZZZ=0; %%% Мы не проиграем, если сделаем настолько выгодняй ход? Остались у нас наши шашки?
                    for k=1:1:size(Pol2,1)
                        for n=1:1:size(Pol2,2)
                            switch Pol2(k,n)
                                case b
                                    ITOG=ITOG+2+(size(Pol2,1)+1-k)^2*0.4/7; %%% Чем ближе к противоположной стороне шашка, тем больше её вес. Шашка стоит 2 балла.
                                    
                                case c
                                    ITOG=ITOG+5.6; %%% За свою дамку + к победе!
                                    
                                case d
                                    ITOG=ITOG-2-(k)^2*0.4/7; %%%% ДОБАВИТЬ РАБОту для ЧЕЛОВЕКА И РОБОТА при разных истояниках вызова
                                    ZZZ=1;
                                case e
                                    ITOG=ITOG-5.6; %%% За чужую дамку - к эффективности хода!
                                    ZZZ=1;
                            end
                        end
                    end
                    
                    if flagMAX
                        ITOGmax=ITOG;
                        flagMAX=false;
                        PolNiec=Pol2;
                        
                    end
                    
                    if ITOG>ITOGmax
                        ITOGmax=ITOG;
                        PolNiec=Pol2;
                    elseif ITOG==ITOGmax
                        Slu=randi([1 2],1,1);
                        PolNiec=Pol2*(Slu-1)+PolNiec*(2-Slu);
                    end
                    
                    
                    
                    
                    if ZZZ==0
                        ITOGmax=160;
                        PolNiec=Pol2;
                    end
                end
                OBRAT=OBRAT-1;
            else
                
                [ITOGmax,Pol,flagMAX]=bolsheChemRaneeCHEL(Pol2,a,b,c,d,e,f,OneTwo,BETTER1,SchetBETTER1,SchetSIMPLE,SIMPLE,PolNiec,ITOGmax,flagMAX,OBRAT,SLO);
            end
            
            
        end
    end
end

function [Pol]=HodIgroka(Pol,a,b,c,d,e,f,Nach,Kon,OneTwo)


if OneTwo==1
    if d==4
        dam=1;
        odin=1;
    else
        odin=-1;
        dam=size(Pol,1);
    end
else
    if d==4
        odin=-1;
        dam=size(Pol,1);
    else
        odin=1;
        dam=1;
    end
end

%%% Правила игры для шашек:
if Pol(Nach(1),Nach(2))==d && Pol(Kon(1),Kon(2))==a %%% Проверка, что конечная клетка пуста, а текущая принадлежит игроку и является шашкой
    if ( abs(Kon(1)-Nach(1))==abs(Kon(2)-Nach(2)) )
        %%% Проверка, что ход по диагонали
        if (Kon(1)-Nach(1))==-odin %%% Проверка, что ход на одну клетку и не в обратном направлении
            
            Pol(Nach(1),Nach(2))=a;
            Pol(Kon(1),Kon(2))=d;
            if Kon(1)==dam
                Pol(Kon(1),Kon(2))=e;
            end
            
            
        end
        if abs(Kon(1)-Nach(1))==2 %%% Проверка, если игрок съел чужую фигуру
            
            if Pol( (Kon(1)+Nach(1))/2,(Kon(2)+Nach(2))/2 )==b || Pol( (Kon(1)+Nach(1))/2,(Kon(2)+Nach(2))/2 )==c %%% Проверка, что перешагнул через чужую шашку или дамку
                
                Pol( (Kon(1)+Nach(1))/2 , (Kon(2)+Nach(2))/2 )=a; %%% Съедено
                Pol(Nach(1),Nach(2))=a;
                Pol(Kon(1),Kon(2))=d;
                if Kon(1)==dam
                    Pol(Kon(1),Kon(2))=e;
                end
            end
        end
    end %%% Далее для дамок
elseif Pol(Nach(1),Nach(2))==e && Pol(Kon(1),Kon(2))==a %%% Проверка, что конечная клетка пуста, а текущая принадлежит игроку и является дамкой
    if ( abs(Kon(1)-Nach(1))==abs(Kon(2)-Nach(2)) ) %%% Проверка, что ход по диагонали
        flagEdi=true;
        SchetEdi=0;
        for i=1:1:abs(Kon(1)-Nach(1))
            P=Pol(Nach(1)+i*(Kon(1)-Nach(1))/abs(Kon(1)-Nach(1)) , Nach(2)+i*(Kon(2)-Nach(2))/abs(Kon(2)-Nach(2)) ); %%% Просматриваем клетки, через которые пробежала дамка
            if P==d || P==e
                flagEdi=false; %%% Если перепрыгнула через свои, то ход неверный
            elseif P==b || P==c
                SchetEdi=SchetEdi+1; %%% Если перепрыгнула через чужие, то максимум один раз, поэтому счетчик
                EATed=[Nach(1)+i*(Kon(1)-Nach(1))/abs(Kon(1)-Nach(1)) , Nach(2)+i*(Kon(2)-Nach(2))/abs(Kon(2)-Nach(2))]; %%% Координаты еды. Если счетчик выше, чем 1, то ход неверный => не важно, что данные не сохранятся
            end
        end
        if SchetEdi>1
            flagEdi=false;
        end
        
        if flagEdi
            if SchetEdi>0
                Pol(EATed(1),EATed(2))=a; %%% Съедено
            end
            Pol(Nach(1),Nach(2))=a;
            Pol(Kon(1),Kon(2))=e;
        end
    end
end



end
function [SchetSIMPLE, SIMPLE, SchetBETTER, BETTER]=ChoiseMove(Pol,a,b,c,d,e,f,OneTwo)

PolR=[zeros(size(Pol,1),size(Pol,2)),Pol,zeros(size(Pol,1),size(Pol,2))];
PolR=[zeros(3*size(Pol,2),size(Pol,1)),PolR',zeros(3*size(Pol,2),size(Pol,1))];
PolR=PolR';
            

SIMPLE=zeros(6*size(Pol,1),4);
SchetSIMPLE=0;

BETTER=zeros(6*size(Pol,1),4);
SchetBETTER=0;

%%%%%%%%%%%%%%%%%%% За белых или за чёрных играет игрок
if OneTwo==1
    if d==4
        odin=1;
    else
        odin=-1;
    end
else
    if d==4
        odin=-1;
    else
        odin=1;
    end
end
%%%%%%%%%%%%%%%%%%% Из-за того, что цвета изменяются, система
%%%%%%%%%%%%%%%%%%% становится сложнее

for i=size(Pol,1)+1:1:size(Pol,1)*2
    for j=size(Pol,1)+1:1:size(Pol,1)*2
        
        
        if PolR(i,j)==d||PolR(i,j)==e
            if PolR(i-odin,j+1)==a
                SchetSIMPLE=SchetSIMPLE+1;
                SIMPLE(SchetSIMPLE,:)=[i,j,i-odin,j+1];
            end
            if PolR(i-odin,j-1)==a
                
                SchetSIMPLE=SchetSIMPLE+1;
                SIMPLE(SchetSIMPLE,:)=[i,j,i-odin,j-1];
            end
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Обычные ходы для
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% дамок
            if PolR(i,j)==e
                ChetDamkaEst=0;
                DamkaEst=true;
                for k=1:1:size(Pol,1)
                    if DamkaEst
                        if PolR(i-k,j-k)==b||PolR(i-k,j-k)==c
                            ChetDamkaEst=ChetDamkaEst+1;
                        end
                        if PolR(i-k,j-k)==d||PolR(i-k,j-k)==e
                            DamkaEst=false;
                        end
                        if ChetDamkaEst==0 && DamkaEst && PolR(i-k,j-k)==a
                            SchetSIMPLE=SchetSIMPLE+1;
                            SIMPLE(SchetSIMPLE,:)=[i,j,i-k,j-k];
                        end
                    end
                end
                
                ChetDamkaEst=0;
                DamkaEst=true;
                for k=1:1:size(Pol,1)
                    if DamkaEst
                        if PolR(i+k,j-k)==b||PolR(i+k,j-k)==c
                            ChetDamkaEst=ChetDamkaEst+1;
                        end
                        if PolR(i+k,j-k)==d||PolR(i+k,j-k)==e
                            DamkaEst=false;
                        end
                        if ChetDamkaEst==0 && DamkaEst && PolR(i+k,j-k)==a
                            SchetSIMPLE=SchetSIMPLE+1;
                            SIMPLE(SchetSIMPLE,:)=[i,j,i+k,j-k];
                        end
                    end
                end
                
                ChetDamkaEst=0;
                DamkaEst=true;
                for k=1:1:size(Pol,1)
                    if DamkaEst
                        if PolR(i+k,j+k)==b||PolR(i+k,j+k)==c
                            ChetDamkaEst=ChetDamkaEst+1;
                        end
                        if PolR(i+k,j+k)==d||PolR(i+k,j+k)==e
                            DamkaEst=false;
                        end
                        if ChetDamkaEst==0 && DamkaEst && PolR(i+k,j+k)==a
                            SchetSIMPLE=SchetSIMPLE+1;
                            SIMPLE(SchetSIMPLE,:)=[i,j,i+k,j+k];
                        end
                    end
                end
                
                ChetDamkaEst=0;
                DamkaEst=true;
                for k=1:1:size(Pol,1)
                    if DamkaEst
                        if PolR(i-k,j+k)==b||PolR(i-k,j+k)==c
                            ChetDamkaEst=ChetDamkaEst+1;
                        end
                        if PolR(i-k,j+k)==d||PolR(i-k,j+k)==e
                            DamkaEst=false;
                        end
                        if ChetDamkaEst==0 && DamkaEst && PolR(i-k,j+k)==a
                            SchetSIMPLE=SchetSIMPLE+1;
                            SIMPLE(SchetSIMPLE,:)=[i,j,i-k,j+k];
                        end
                    end
                end
            end
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            
            flagprovB=true;
            NAPRAV=0;
            [BETTER,SchetBETTER]=better(i,j,SchetBETTER,BETTER,PolR,a,b,c,d,e,f,flagprovB,NAPRAV);
            
        end
    end
end

BETTER=BETTER-size(Pol,1);

SIMPLE=SIMPLE-size(Pol,1);

end
function [BETTER,SchetBETTER]=better(i,j,SchetBETTER,BETTER,PolR,a,b,c,d,e,f,flagprovB,NAPRAV)
if PolR(i,j)==d
    if PolR(i+1,j+1)==b||PolR(i+1,j+1)==c
        if PolR(i+2,j+2)==a
            SchetBETTER=SchetBETTER+1;
            BETTER(SchetBETTER,:)=[i,j,i+2,j+2];
        end
    end
    if PolR(i+1,j-1)==b||PolR(i+1,j-1)==c
        if PolR(i+2,j-2)==a
            SchetBETTER=SchetBETTER+1;
            BETTER(SchetBETTER,:)=[i,j,i+2,j-2];
        end
    end
    if PolR(i-1,j+1)==b||PolR(i-1,j+1)==c
        if PolR(i-2,j+2)==a
            SchetBETTER=SchetBETTER+1;
            BETTER(SchetBETTER,:)=[i,j,i-2,j+2];
        end
    end
    if PolR(i-1,j-1)==b||PolR(i-1,j-1)==c
        if PolR(i-2,j-2)==a
            SchetBETTER=SchetBETTER+1;
            BETTER(SchetBETTER,:)=[i,j,i-2,j-2];
        end
    end

end

flagBp=zeros(size(PolR));
%%% Дамки

BETTER2=zeros(size(PolR,1)*6,4);
BETTER3=zeros(size(PolR,1)*6,4);
BETTER4=zeros(size(PolR,1)*6,4);
BETTER5=zeros(size(PolR,1)*6,4);

if PolR(i,j)==e
    if NAPRAV~=5
        ChetDamkaEst=0;
        DamkaEst=true;
        SchetBETTER1P=0;
        SchetBETTER1=0;
        BETTER2=zeros(size(PolR,1)*6,4);
        SchetBETTER2=0;
        for k=1:1:size(PolR,1)/3
            PolR2=PolR;
            if DamkaEst
                if PolR(i-k,j-k)==b||PolR(i-k,j-k)==c
                    ChetDamkaEst=ChetDamkaEst+1;
                    PolR2(i-k,j-k)=a;
                end
                if PolR(i-k,j-k)==d||PolR(i-k,j-k)==e
                    DamkaEst=false;
                end
                if ChetDamkaEst==1 && DamkaEst && PolR(i-k,j-k)==a
                    
                    SchetBETTER2=SchetBETTER2+1;
                    BETTER2(SchetBETTER2,:)=[i,j,i-k,j-k];
                    if flagprovB
                        BETTER1=zeros(size(PolR,1)*6,4);
                        if SchetBETTER1P<SchetBETTER1
                            SchetBETTER1P=1;
                        end
                        SchetBETTER1=0;
                        PolR2(i,j)=a;
                        PolR2(i-k,j-k)=e;
                        
                        [BETTER1,SchetBETTER1]=better(i-k,j-k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,false,2);
                        
                        
                        flagBp(i-k,j-k)=1;
                        if SchetBETTER1P>SchetBETTER1
                            flagBp(i-k,j-k)=0;
                            for Bp=SchetBETTER2:-1:1
                                
                                if flagBp(BETTER2(Bp,3),BETTER2(Bp,4))==0
                                    BETTER2(Bp,:)=[];
                                    SchetBETTER2=SchetBETTER2-1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if NAPRAV~=4
        flagBp=zeros(size(PolR));
        ChetDamkaEst=0;
        DamkaEst=true;
        SchetBETTER1P=0;
        SchetBETTER1=0;
        BETTER3=zeros(size(PolR,1)*6,4);
        SchetBETTER3=0;
        
        for k=1:1:size(PolR,1)/3
            PolR2=PolR;
            if DamkaEst
                if PolR(i+k,j-k)==b||PolR(i+k,j-k)==c
                    ChetDamkaEst=ChetDamkaEst+1;
                    PolR2(i+k,j-k)=a;
                end
                if PolR(i+k,j-k)==d||PolR(i+k,j-k)==e
                    DamkaEst=false;
                end
                if ChetDamkaEst==1 && DamkaEst && PolR(i+k,j-k)==a
                    
                    SchetBETTER3=SchetBETTER3+1;
                    BETTER3(SchetBETTER3,:)=[i,j,i+k,j-k];
                    if flagprovB
                        BETTER1=zeros(size(PolR,1)*6,4);
                        if SchetBETTER1P<SchetBETTER1
                            SchetBETTER1P=1;
                        end
                        SchetBETTER1=0;
                        
                        PolR2(i,j)=a;
                        PolR2(i+k,j-k)=e;
                        [BETTER1,SchetBETTER1]=better(i+k,j-k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,false,3);
                        
                        
                        flagBp(i+k,j-k)=1;
                        if SchetBETTER1P>SchetBETTER1
                            flagBp(i+k,j-k)=0;
                            for Bp=SchetBETTER3:-1:1
                                if flagBp(BETTER3(Bp,3),BETTER3(Bp,4))==0
                                    BETTER3(Bp,:)=[];
                                    SchetBETTER3=SchetBETTER3-1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if NAPRAV~=3
        flagBp=zeros(size(PolR));
        ChetDamkaEst=0;
        DamkaEst=true;
        SchetBETTER1P=0;
        SchetBETTER1=0;
        BETTER4=zeros(size(PolR,1)*6,4);
        SchetBETTER4=0;
        for k=1:1:size(PolR,1)/3
            PolR2=PolR;
            if DamkaEst
                if PolR(i-k,j+k)==b||PolR(i-k,j+k)==c
                    ChetDamkaEst=ChetDamkaEst+1;
                    PolR2(i-k,j+k)=a;
                end
                if PolR(i-k,j+k)==d||PolR(i-k,j+k)==e
                    DamkaEst=false;
                end
                if ChetDamkaEst==1 && DamkaEst && PolR(i-k,j+k)==a
                    
                    SchetBETTER4=SchetBETTER4+1;
                    BETTER4(SchetBETTER4,:)=[i,j,i-k,j+k];
                    if flagprovB
                        BETTER1=zeros(size(PolR,1)*6,4);
                        if SchetBETTER1P<SchetBETTER1
                            SchetBETTER1P=1;
                        end
                        SchetBETTER1=0;
                        PolR2(i,j)=a;
                        PolR2(i-k,j+k)=e;
                        [BETTER1,SchetBETTER1]=better(i-k,j+k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,false,4);
                        
                        flagBp(i-k,j+k)=1;
                        if SchetBETTER1P>SchetBETTER1
                            flagBp(i-k,j+k)=0;
                            for Bp=SchetBETTER4:-1:1
                                if flagBp(BETTER4(Bp,3),BETTER4(Bp,4))==0
                                    BETTER4(Bp,:)=[];
                                    SchetBETTER4=SchetBETTER4-1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if NAPRAV~=2
        flagBp=zeros(size(PolR));
        ChetDamkaEst=0;
        DamkaEst=true;
        SchetBETTER1P=0;
        SchetBETTER1=0;
        BETTER5=zeros(size(PolR,1)*6,4);
        SchetBETTER5=0;
        for k=1:1:size(PolR,1)/3
            PolR2=PolR;
            if DamkaEst
                if PolR(i+k,j+k)==b||PolR(i+k,j+k)==c
                    ChetDamkaEst=ChetDamkaEst+1;
                    PolR2(i+k,j+k)=a;
                end
                if PolR(i+k,j+k)==d||PolR(i+k,j+k)==e
                    DamkaEst=false;
                end
                if ChetDamkaEst==1 && DamkaEst && PolR(i+k,j+k)==a
                    
                    SchetBETTER5=SchetBETTER5+1;
                    BETTER5(SchetBETTER5,:)=[i,j,i+k,j+k];
                    if flagprovB
                        BETTER1=zeros(size(PolR,1)*6,4);
                        if SchetBETTER1P<SchetBETTER1
                            SchetBETTER1P=1;
                        end
                        SchetBETTER1=0;
                        PolR2(i,j)=a;
                        PolR2(i+k,j+k)=e;
                        [BETTER1,SchetBETTER1]=better(i+k,j+k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,false,5);
                        
                        
                        
                        flagBp(i+k,j+k)=1;
                        if SchetBETTER1P>SchetBETTER1
                            flagBp(i+k,j+k)=0;
                            for Bp=SchetBETTER5:-1:1
                                if flagBp(BETTER5(Bp,3),BETTER5(Bp,4))==0
                                    BETTER5(Bp,:)=[];
                                    SchetBETTER5=SchetBETTER5-1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
end

BETTER=[BETTER;BETTER2;BETTER3;BETTER4;BETTER5];
for i=size(BETTER,1):-1:1
    if BETTER(i,1)==0
BETTER(i,:)=[];
    end
end
SchetBETTER=size(BETTER,1);

end







