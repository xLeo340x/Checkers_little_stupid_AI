function [ZAPAS,flagloseIG,Pol]=IGRALKA(Pol,a,b,c,d,e,f,OneTwo,ZAPAS,FIG)
NAPRAV=0;

flaglucshe=false;

flagOdKlet=false;
KonSoh=[0,0];
NePr=false;
PRAVILA=true;
DopEda=false;
flagloseIG=true;
[SchetSIMPLE, SIMPLE, SchetBETTER, BETTER]=ChoiseMove(Pol,a,b,c,d,e,f,OneTwo,flaglucshe); %%% Получим все варианты хода


if SchetBETTER==0
    flagOdKlet=true;
end
if SchetBETTER~=0||SchetSIMPLE~=0
    
    while PRAVILA
        flagPokaz=true;
        
        NAPRAV2=NAPRAV;
        while NAPRAV==NAPRAV2
            if NePr
                fprintf('Некорректный ход, переходите, пожалуйста.')
            end
            NePr=true;
            [Pol,Nach,Kon]=KudaPoRusski(ZAPAS,FIG,Pol);
            
            if Kon(1)-Nach(1)>0
                if Kon(2)-Nach(2)>0
                    NAPRAV2=2;
                else
                    NAPRAV2=3;
                end
            else
                if Kon(2)-Nach(2)<0
                    NAPRAV2=5;
                else
                    NAPRAV2=4;
                end
            end
            
        end
        
        
        dam=1;
        
        flaglucshe=true;
        [Pol2,PRAVILA]=HodIgroka(Pol,a,b,c,d,e,f,Nach,Kon,OneTwo,dam,flaglucshe);
        
        if Pol2(Nach(1),Nach(2))==f || Pol2(Kon(1),Kon(2))==f
            PRAVILA=true;
        end
        
        
        if ~PRAVILA %%% Работает только, когда ход сделан по правилам
            
            if DopEda
                if Nach(1)~=KonSoh(1)||Nach(2)~=KonSoh(2) %%% Если надо продолжить есть, то проверяем, та ли шашка, что и ранее
                    flagPokaz=false;
                    fprintf('Некорректный ход asa, переходите, пожалуйста.')
                end
            end
            if flagPokaz %%% Связано с правилом съедения подряд
                Pol=Pol2;
                KonSoh=Kon;%%% Запоминаем последнюю шашку, если вдруг надо будет ещё есть
                figure(1);
                imagesc(Pol);
                colormap hot
                if abs(Nach(1)-Kon(1))==1
                    flagOdKlet=true;
                end
                
            end
            
            SchetBETTER=0;
            BETTER=zeros(6*size(Pol2,1),4);
            
            
            PolR=[zeros(size(Pol2,1),size(Pol2,2)),Pol2,zeros(size(Pol2,1),size(Pol2,2))];
            PolR=[zeros(3*size(Pol2,1),size(Pol2,2)),PolR',zeros(3*size(Pol2,1),size(Pol2,2))];
            PolR=PolR';
            
            flagprovB=true;
            
            
            
            [BETTER,SchetBETTER]=better(Kon(1)+size(Pol2,1),Kon(2)+size(Pol2,1),SchetBETTER,BETTER,PolR,a,b,c,d,e,f,flaglucshe,flagprovB,NAPRAV2); %%% Связано с правилом съедения подряд
            
            if SchetBETTER~=0 %%% Если можно есть подряд, то это
                NePr=false; %%% Не будет некорректным
                %%%
                PRAVILA=true; %%% Нужно начать цикл заново
                DopEda=true; %%% Теперь будет работать проверка на ЭТУ шашку, которой мы начали ходить
                %%%%%%%%%%%%%%%%%%%%%%%%%
                if Kon(1)-Nach(1)>0
                    if Kon(2)-Nach(2)>0
                        NAPRAV=5;
                    else
                        NAPRAV=4;
                    end
                else
                    if Kon(2)-Nach(2)<0
                        NAPRAV=2;
                    else
                        NAPRAV=3;
                    end
                end
                %%%%%%%%%%%%%%%%%%%%%%%%%
            end
            
            if flagOdKlet
                PRAVILA=false;
                
            end
        end
        
        
    end
else
    flagloseIG=false; %%% Проиграл игрок
    fprintf('Вы проиграли')
end

figure(1);
imagesc(Pol);
colormap hot

end

function [Pol,PRAVILA]=HodIgroka(Pol,a,b,c,d,e,f,Nach,Kon,OneTwo,dam,flaglucshe)

Prav=true;


PravSedenia=true;
flaglucshe=true;
[SchetSIMPLE, SIMPLE, SchetBETTER, BETTER]=ChoiseMove(Pol,a,b,c,d,e,f,OneTwo,flaglucshe); %%% Получим все варианты хода

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
            
            Prav=false; %%% Соблюдено. Выпускаем из цикла
            Pol(Nach(1),Nach(2))=a;
            Pol(Kon(1),Kon(2))=d;
            if Kon(1)==dam
                Pol(Kon(1),Kon(2))=e;
            end
            
            
        end
        if abs(Kon(1)-Nach(1))==2 %%% Проверка, если игрок съел чужую фигуру
            
            if Pol( (Kon(1)+Nach(1))/2,(Kon(2)+Nach(2))/2 )==b || Pol( (Kon(1)+Nach(1))/2,(Kon(2)+Nach(2))/2 )==c %%% Проверка, что перешагнул через чужую шашку или дамку
                
                Prav=false; %%% Соблюдено. Выпускаем из цикла
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
            Prav=false; %%% Соблюдено. Своих не перепрыгнули, чужих съели не более 1 штуки. Выпускаем из цикла
            if SchetEdi>0
                Pol(EATed(1),EATed(2))=a; %%% Съедено
            end
            Pol(Nach(1),Nach(2))=a;
            Pol(Kon(1),Kon(2))=e;
        end
        
    end
else
    
    Prav=true;
    
end

NachAndKon=[Nach, Kon];
if SchetBETTER~=0
    for i=1:1:SchetBETTER
        if NachAndKon==BETTER(i,:)
            PravSedenia=false; %%% Соблюдено, значит съели по правилам
        end
    end
else
    PravSedenia=false;
end



PRAVILA=Prav||PravSedenia;


end

function [SchetSIMPLE, SIMPLE, SchetBETTER, BETTER]=ChoiseMove(Pol,a,b,c,d,e,f,OneTwo,flaglucshe)

PolR=[zeros(size(Pol,1),size(Pol,2)),Pol,zeros(size(Pol,1),size(Pol,2))];
PolR=[zeros(3*size(Pol,2),size(Pol,1)),PolR',zeros(3*size(Pol,2),size(Pol,1))];
PolR=PolR';

SIMPLE=zeros(48,4);
SchetSIMPLE=0;

BETTER=zeros(48,4);
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

for i=size(Pol,1)+1:1:2*size(Pol,1)
    for j=size(Pol,2)+1:1:2*size(Pol,2)
        
        
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
            [BETTER,SchetBETTER]=better(i,j,SchetBETTER,BETTER,PolR,a,b,c,d,e,f,flaglucshe,flagprovB,NAPRAV);
            
        end
    end
end

BETTER=BETTER-size(Pol,1);

SIMPLE=SIMPLE-size(Pol,1);

end

function [BETTER,SchetBETTER]=better(i,j,SchetBETTER,BETTER,PolR,a,b,c,d,e,f,flaglucshe,flagprovB,NAPRAV)
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
SchetBETTER2=0;
SchetBETTER3=0;
SchetBETTER4=0;
SchetBETTER5=0;
PolR2=PolR;
if PolR(i,j)==e
    if NAPRAV~=5
        ChetDamkaEst=0;
        DamkaEst=true;
        SchetBETTER1P=0;
        SchetBETTER1=0;
        %     BETTER2=zeros(size(PolR,1)*6,4);
        %     SchetBETTER2=0;
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
                        
                        [BETTER1,SchetBETTER1]=better(i-k,j-k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,flaglucshe,false,2);
                        
                        
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
        %     BETTER3=zeros(size(PolR,1)*6,4);
        %     SchetBETTER3=0;
        
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
                        [BETTER1,SchetBETTER1]=better(i+k,j-k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,flaglucshe,false,3);
                        
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
        %     BETTER4=zeros(size(PolR,1)*6,4);
        %     SchetBETTER4=0;
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
                        [BETTER1,SchetBETTER1]=better(i-k,j+k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,flaglucshe,false,4);
                        
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
        %     BETTER5=zeros(size(PolR,1)*6,4);
        %     SchetBETTER5=0;
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
                        [BETTER1,SchetBETTER1]=better(i+k,j+k,SchetBETTER1,BETTER1,PolR2,a,b,c,d,e,f,flaglucshe,false,5);
                        
                        
                        
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

function [Pol,Nach,Kon]=KudaPoRusski(ZAPAS,FIG,Pol)
Hod=input('\n Ваш ход в виде А1-В2 на латинице: \n');

Nach(1)=Hod(1);
Nach(2)=Hod(2);
Kon(1)=Hod(3);
Kon(2)=Hod(4);
if Hod(1)=='R'
    Pol(:,:)=ZAPAS(FIG-1,:,:);
    figure(1);
    imagesc(Pol);
    colormap hot
    [Pol,Nach,Kon]=KudaPoRusski(ZAPAS,FIG-1,Pol);
else
    switch(Hod(1))
        case 'A'
            Nach=[size(Pol,1)+1-subs(Hod(2)),1];
        case 'B'
            Nach=[size(Pol,1)+1-subs(Hod(2)),2];
        case 'C'
            Nach=[size(Pol,1)+1-subs(Hod(2)),3];
        case 'D'
            Nach=[size(Pol,1)+1-subs(Hod(2)),4];
        case 'E'
            Nach=[size(Pol,1)+1-subs(Hod(2)),5];
        case 'F'
            Nach=[size(Pol,1)+1-subs(Hod(2)),6];
        case 'G'
            Nach=[size(Pol,1)+1-subs(Hod(2)),7];
        case 'H'
            Nach=[size(Pol,1)+1-subs(Hod(2)),8];
    end
    switch(Hod(4))
        case 'A'
            Kon=[size(Pol,1)+1-subs(Hod(5)),1];
        case 'B'
            Kon=[size(Pol,1)+1-subs(Hod(5)),2];
        case 'C'
            Kon=[size(Pol,1)+1-subs(Hod(5)),3];
        case 'D'
            Kon=[size(Pol,1)+1-subs(Hod(5)),4];
        case 'E'
            Kon=[size(Pol,1)+1-subs(Hod(5)),5];
        case 'F'
            Kon=[size(Pol,1)+1-subs(Hod(5)),6];
        case 'G'
            Kon=[size(Pol,1)+1-subs(Hod(5)),7];
        case 'H'
            Kon=[size(Pol,1)+1-subs(Hod(5)),8];
    end
end
end