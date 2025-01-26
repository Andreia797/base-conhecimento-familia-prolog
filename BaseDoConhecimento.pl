%Autor
% Data: 19/01/2022
:- dynamic(familia/2).

familia(andreia,[mulato,alice,mario,orlando,nanda,tuja,dade,graca,jaime,
                  joao,juliana,juizino,felomena,nelson,ze,ilizio,berta,
                  mario,ana,yalmer,luce,lene,wilson,sonia,
                  orlando,isaura,pedro,camilo,sofia,
                  alfredo,isaura,nivaldoh,nayla,nayra,
                  dino,tuja,samy,marcio,samuel,
                  dade,merce,salamite,
                  dade,raquel,dovane,
                  tino,graca,marcos,sara,marito,
                  jaime,berta,nicacio,alex,nidiane,andreia,
                  jaime,indira,jilson,
                  ze,isabel,zedina,liliana,marcia,djanina,armandine,romario,
                  nelson,lisita,elga,nick,
                  bermiro,felomena,bruno,nuno,
                  lene,lucia,livia,lucas,
                  lene,nuria,danielson,
                  wilson,paloma,sofia,marlene,marlice,melany,
                  davide,nayra,patricia,jovane,lucas,
                  pauloh,nayra,flavia,davy,
                  samy,tairine,ticiane,
                  marcos,salamite,sarah,matias,
                  marito,ivone,tiago,taica,
                  alex,suzilene,nicole,
                  nicacio,leona,laura]).

familia(dany,[daniel,zerlina,dany,daniela,fabienne,alberto,junior,tadeu,
              cesahr,bety,joao,adriana,
              aderito,josefa1,josy,
              bebeto,maria1,daniel,cesahr,josefa,
              carlos,luisa,zerlina]).

familia(mayra,[augusto,joia,zeca,vitor,emilia,chila,
               joel,domingas,maria,palinha,idalinha,jose,fatima,
               zeca,fatima,carminha,carla,adnilson,andre,adiana,aldir,josienne,
               adnilson,gilmaira,
               aldir,fabiana,yariny,
               andre,aicha,
               jorgeh,carla,mayra,
               pauloh,carla,gabriela,
               carlos,carminha,diego,darcio,kyana,kyara,
               nivaldo,adiana,edivaldo,bianca,
               joel,candinha,vinda,
               zeca,cesaltina,tatiana,safira,odair,
               zeca,filo,yara,flaviana,eridanny,
               zeca,lili,zequinha,liliane,
               zeca,maisa,
               josePires,agusta,anaRosa,anisita,mariaJose,mariaFernanda,
               vitor,goia,jaque,lilhane,adilson,rafael,
               vitor,jailson,guimex,
               jorgeh,jocelina,joceana]).


familia(odda,[maria,carminha,
           joseSemedo,maria,dilce,sila,geisa,andre,victor,texa,odda,
           carminha,kamile,
           dilce,zezinhokedilson,kelton,nicolas,
           sila,cileidy,enzo,
           geisa,admar,jeyson]).


%Eliminar uma pessoa da familia
eliminar :- write('Nome: '),read(Nome),
            retract(familia(Nome,_)), !.
eliminar :- write('N�o existe essa pessoa \n').

%Apagar todas as familias
apagar :- abolish(familia/2),
          write('Foram apagado todas as familias \n').


%Menu menu de login inicial

menu:-write('*** Gestor de  familias *** \n'),
               write('1. Adicionar uma familia'),nl,
               write('2. Eliminar uma familia'),nl,
               write('3. apagar todas as familias'),nl,
               write('4. Lista de todas as familias'),nl,
               write('Selecione uma op��o( 0 para sair) : '), read(Opcao),
               esecutar(Opcao).


esecutar(Opcao) :- Opcao == 1, adicionar,  menu;
                   Opcao == 2, eliminar,   menu;
                   Opcao == 3, apagar,     menu;
                   Opcao == 4,nl,listar,nl,menu;
                   Opcao == 0, true.


%Listar todas as familias
listar :- setof(C, (P,H)^(familia(P, H), member(C,H)) ,L),write(L),nl.

%Adicionar uma pessoa a familia
adicionar :- write('Nome: '),read(Nome),
             write('Quantidade de famila: '),
             read(Cant), crearFamiliares(Cant,F),
             Fam = familia(Nome,F),
             asserta(Fam).

crearFamiliares(0,[])       :- !, true.
crearFamiliares(C,[Hijo|L]) :- read(Hijo), Ctemp is C -1, crearFamiliares(Ctemp,L).



% sexo masculino
sexo(mulato,masculino).
sexo(joaoh,masculino).
sexo(orlando,masculino).
sexo(alfredo,masculino).
sexo(dino,masculino).
sexo(dade,masculino).
sexo(tino,masculino).
sexo(jaime,masculino).
sexo(ze,masculino).
sexo(nelson,masculino).
sexo(belmiro,masculino).
sexo(lene,masculino).
sexo(wilson,masculino).
sexo(davide,masculino).
sexo(paulo,masculino).
sexo(samy,masculino).
sexo(marcos,masculino).
sexo(marito,masculino).
sexo(alex,masculino).
sexo(nicacio,masculino).
sexo(juizino,masculino).
sexo(ilizio,masculino).
sexo(pedro,masculino).
sexo(camilo,masculino).
sexo(nivaldoh,masculino).
sexo(marcio,masculino).
sexo(samuel,masculino).
sexo(dovane,masculino).
sexo(jilson,masculino).
sexo(armandine,masculino).
sexo(romario,masculino).
sexo(nick,masculino).
sexo(bruno,masculino).
sexo(nuno,masculino).
sexo(lucas,masculino).
sexo(danielson,masculino).
sexo(davi,masculino).
sexo(thiago,masculino).
sexo(daniel,masculino).
sexo(aderito,masculino).
sexo(bebeto,masculino).
sexo(carlos,masculino).
sexo(dany,masculino).
sexo(alberto,masculino).
sexo(junior,masculino).
sexo(tadeu,masculino).
sexo(joao,masculino).
sexo(cezarh,masculino).
sexo(augusto,masculino).
sexo(joel,masculino).
sexo(zeca,masculino).
sexo(adnilson,masculino).
sexo(aldir1,masculino).
sexo(andre,masculino).
sexo(jorge,masculino).
sexo(pauloh,masculino).
sexo(carlos,masculino).
sexo(nivaldo,masculino).
sexo(josepires,masculino).
sexo(vitor,masculino).
sexo(augustinho,masculino).
sexo(vava,masculino).
sexo(jose,masculino).
sexo(odair,masculino).
sexo(zequinha,masculino).
sexo(diego,masculino).
sexo(darcio,masculino).
sexo(edivaldo,masculino).
sexo(jorge,masculino).
sexo(adilson,masculino).
sexo(rafael,masculino).
sexo(jailson,masculino).
sexo(joseSemedo,masculino).
sexo(andre,masculino).
sexo(victor,masculino).
sexo(odda,masculino).


%%Sexo Feminino
sexo(nanda,feminino).
sexo(tuja,feminino).
sexo(graca,feminino).
sexo(felomena,feminino).
sexo(berta,feminino).
sexo(lene,feminino).
sexo(sofia,feminino).
sexo(sonia,feminino).
sexo(nayla,feminino).
sexo(nayra,feminino).
sexo(salamite,feminino).
sexo(sara,feminino).
sexo(nidiane,feminino).
sexo(andreia,feminino).
sexo(zedina,feminino).
sexo(liliana,feminino).
sexo(djanina,feminino).
sexo(elga,feminino).
sexo(lucia,feminino).
sexo(livia,feminino).
sexo(marlene,feminino).
sexo(marlice,feminino).
sexo(melany,feminino).
sexo(patricia,feminino).
sexo(flavia,feminino).
sexo(ticiane,feminino).
sexo(sarah,feminino).
sexo(taica,feminino).
sexo(nicole,feminino).
sexo(laura,feminino).
sexo(daniela,feminino).
sexo(fabienne,feminino).
sexo(adriana,feminino).
sexo(josy,feminino).
sexo(josefa,feminino).
sexo(zerlina,feminino).
sexo(joia,feminino).
sexo(fatima,feminino).
sexo(domingas,feminino).
sexo(emilia,feminino).
sexo(chila,feminino).
sexo(josefa,feminino).
sexo(maria,feminino).
sexo(palinha,feminino).
sexo(idalina,feminino).
sexo(vinda,feminino).
sexo(candinha,feminino).
sexo(carminha,feminino).
sexo(carla,feminino).
sexo(adiana,feminino).
sexo(josienne,feminino).
sexo(tatiana,feminino).
sexo(safira,feminino).
sexo(flaviana,feminino).
sexo(mayra,feminino).
sexo(gilmaira,feminino).
sexo(fabiana,feminino).
sexo(gabriela,feminino).
sexo(maisa,feminino).
sexo(liliana,feminino).
sexo(bianca,feminino).
sexo(aicha,feminino).
sexo(yariny,feminino).
sexo(kyana,feminino).
sexo(kyara,feminino).
sexo(lili,feminino).
sexo(lilhane,feminino).
sexo(jaque,feminino).
sexo(augusta,feminino).
sexo(lili,feminino).
sexo(anisita,feminino).
sexo(mariajose,feminino).
sexo(mariafernanda,feminino).
sexo(filo,feminino).
sexo(cesaltina,feminino).
sexo(goia,feminino).
sexo(yara,feminino).
sexo(jocelina,feminino).
sexo(joceana,feminino).

%Arvore de Andreia Semedo
progenitor(mulato,mario). %Mulato � pai de Mario;
progenitor(mulato,orlando). %Mulato � pai de Orlando;
progenitor(mulato,nanda). %Mulato � pai de Nanda;
progenitor(mulato,tuja). %Mulato � pai de Tuja;
progenitor(mulato,dade). %Mulato � pai de Dade;
progenitor(mulato,graca). %Mulato � pai de Gra�a;
progenitor(mulato,jaime). %Mulato � pai de Jaime;
progenitor(joaoh,juizino). %Joao � pai de Juizino;
progenitor(joaoh,felomena). %Joao � pai de Felomena;
progenitor(joaoh,nelson). %Joao � pai de Nelson;
progenitor(joaoh,ze). %Joao � pai de Ze;
progenitor(joaoh,ilizio). %Joao � pai de Ilizio;
progenitor(joaoh,berta). %Joao � pai de Berta;
progenitor(mario,yalmer). %Mario � pai de Yalmer;
progenitor(mario,luce). %Mario � pai de Luce;
progenitor(mario,lene). %Mario � pai de Lene;
progenitor(mario,wilson). %Mario � pai de Wilson;
progenitor(mario,sonia). %Mario � pai de Sonia;
progenitor(orlando,pedro). %Orlando � pai de Pedro;
progenitor(orlando,camilo). %Orlando � pai de Camilo;
progenitor(orlando,sofia). %Orlando � pai de Sofia;
progenitor(alfredo,nivaldo). %Alfredo � pai de Nivaldo;
progenitor(alfredo,nayra). %Alfredo � pai de Nayra;
progenitor(alfredo,nayla). %Alfredo � pai de Nayla;
progenitor(dino,samy). %Dino � pai de Samy;
progenitor(dino,marcio). %Dino � pai de Marcio;
progenitor(dino,samuel). %Dino � pai de Samuel;
progenitor(dade,salamite). %Dade � pai de Salamite;
progenitor(dade,dovane). %Dade � pai de Dovane;
progenitor(tino,marcos). %Tino � pai de Marcos;
progenitor(tino,sara). %Tino � pai de Sara;
progenitor(tino,marito). %Tino � pai de Marito;
progenitor(jaime,jilson). %Jaime � pai de Jilson;
progenitor(jaime,nicacio). %Jaime � pai de Nicacio;
progenitor(jaime,alex). %Jaime � pai de Alex;
progenitor(jaime,andreia). %Jaime � pai de Andreia;
progenitor(jaime,nidiane). %Jaime � pai de Nidiane;
progenitor(ze,zedina). %Ze � pai de Zedina;
progenitor(ze,liliana). %Ze � pai de Liliana;
progenitor(ze,marcia). %Ze � pai de Marcia;
progenitor(ze,djanina). %Ze � pai de Djanina;
progenitor(ze,armandine). %Ze � pai de Armandine;
progenitor(ze,romario). %Ze � pai de Romario;
progenitor(nelson,elga). %Nelson � pai de Elga;
progenitor(nelson,nick). %Nelson � pai de Nick;
progenitor(ilisio,maneiva). %Ilisio � pai de Maneiva;
progenitor(bermiro,bruno). %Bermiro � pai de Bruno;
progenitor(bermiro,nuno). %Bermiro � pai de Nuno;
progenitor(leo,livia). %Leo � pai de Livia;
progenitor(lene,lucas). %Lene � pai de Lucas;
progenitor(lene,danielson). %Lene � pai de Danielson;
progenitor(wilson,sofia). %Wilson � pai de Sofia;
progenitor(wilson,marlice). %Wilson � pai de Marlice;
progenitor(wilson,melany). %Wilson � pai de melany;
progenitor(leninho,marlene). %Leninho � pai de Marlene;
progenitor(marcos,lenira). %Marcos � pai de Lenira;
progenitor(marcos,edu). %Marcos � pai de Edu;
progenitor(nivaldo,dayla). %Nivaldo � pai de Dayla;
progenitor(davide,patricia). %Davide � pai de Patricia;
progenitor(davide,jovane). %Davide � pai de Jovane;
progenitor(davide,lucas). %Davide � pai de Lucas;
progenitor(paulo,flavia). %Paulo � pai de Flavia;
progenitor(paulo,davy). %Paulo � pai de Davy;
progenitor(samy,ticiane). %Samy � pai de Ticiane;
progenitor(marcos,sara). %Marcos � pai de Sara;
progenitor(marcos,matias). %Marcos � pai de Matias;
progenitor(marito,tiago). %Marito � pai de Tiago;
progenitor(marito,taica). %Marito � pai de Tai�a;
progenitor(alex,nicole). %Alex � pai de Nicole;
progenitor(nicacio,laura). %Nicacio � pai de Laura;
%Arvore de Dany Vieira
progenitor(daniel, dany). %Daniel � pai de Dany;
progenitor(daniel, daniela). %Daniel � pai de Daniela;
progenitor(daniel, fabienne). %Daniel � pai de Fabienne;
progenitor(daniel, alberto). %Daniel � pai de Alberto
progenitor(daniel, junior). %Daniel � pai de Junior;
progenitor(daniel, tadeu). %Daniel � pai de Tadeu;
progenitor(cesar, joao). %C�sar � pai de Joao;
progenitor(cesar, adriana). %C�sar � pai de Adriana;
progenitor(aderito, josy). %Aderito � pai de Josy;
progenitor(bebeto, daniel). %Bebeto � pai de Daniel;
progenitor(bebeto, cesar). %Bebeto � pai de C�sar;
progenitor(bebeto, josefa). %Bebeto � pai de Josefa;
progenitor(carlos, zerlina). %Carlos � pai de Zerlina;
%Familia pai Mayra
progenitor(augusto,zeca). %Agusto pai de Zeca
progenitor(augusto,vitor). %Agusto pai de Vitor
progenitor(augusto,emilia). %Agusto pai de Emilia
progenitor(augusto,augustinho). %Agusto pai de Augustinho
progenitor(augusto,chila). %Agusto pai de Chila
progenitor(joel,maria). %Joel pai de Maria
progenitor(joel,palinha). %Joel pai de Palinha
progenitor(joel,idalinha). %Joel pai de Idalina
progenitor(joel,jose). %Joel pai de Jose
progenitor(joel,fatima). %Joel pai de Fatima
progenitor(joel,vinda). %Joel pai de Vinda
progenitor(zeca,carminha). %Zeca pai de Carminha
progenitor(zeca,carla). %Zeca pai de Carla
progenitor(zeca,tatiana). %Zeca pai de Tatiana
progenitor(zeca,odair). %Zeca pai de Odair
progenitor(zeca,adnilson). %Zeca pai de Adnilson
progenitor(zeca,safira). %Zeca pai de Safira
progenitor(zeca,andre). %Zeca pai de Andre
progenitor(zeca,adiana). %Zeca pai de Adiana
progenitor(zeca,yara). %Zeca pai de Yara
progenitor(zeca,aldir). %Zeca pai de Aldir
progenitor(zeca,zequinha). %Zeca pai de Zequinha
progenitor(zeca,flaviana). %Zeca pai de Flaviana
progenitor(zeca,josienne). %Zeca pai de Josienne
progenitor(zeca,eridanny). %Zeca pai de Eridanny
progenitor(zeca,liliana). %Zeca pai de Liliana
progenitor(zeca,ma�sa). %Zeca pai de Ma�sa
progenitor(adnilson,gilmaira). %Adnilson pai de Gilmaira
progenitor(aldir,fabiana). %Aldir pai de Fabiana
progenitor(aldir,yariny). %Aldir pai de Yariny
progenitor(andre,aicha). %Andre pai de Aicha
progenitor(jorgeh,mayra). %Jorge pai de Mayra
progenitor(jorgeh,jocelina). %Jorge pai de Jocelina
progenitor(jorgeh,joceana). %Jorge pai de Joceana
progenitor(pauloh,gabriela). %Paulo pai de Gabriela
progenitor(carlos,diego). %Carlos pai de Diego
progenitor(carlos,darcio). %Carlos pai de Darcio
progenitor(carlos,kyana). %Carlos pai de Kyana
progenitor(carlos,kyara). %Carlos pai de Kyara
progenitor(nivaldo,edivaldo). %Nivaldo pai de Edivaldo
progenitor(nivaldo,bianca). %Nivaldo pai de Bianca
progenitor(josePires,jorgeh). %JosePires pai de Jorge
progenitor(josePires,anaRosa). %JosePires pai de AnaRosa
progenitor(josePires,anisita). %JosePires pai de Anisita
progenitor(josePires,mariaJose).%JosePires pai de MariaJose
progenitor(josePires,mariaFernanda). %JosePires pai de  MariaFernanda
progenitor(vitor,jaque). %Vitor pai de Jaque
progenitor(vitor,lilhane). %Vitor pai de Lilhane
progenitor(vitor,adilson). %Vitor pai de Adilson
progenitor(vitor,rafael). %Vitor pai de Rafael
progenitor(vitor,jailson). %Vitor pai de Jailson
progenitor(vitor,guimex). %Vitor pai de Guimex
% Arvore de familia de Odair Semedo
progenitor(jose,dilce).  % Jose eh pai de Dilce
progenitor(jose,sila).   % Jose eh pai de Sila
progenitor(jose,geisa).   % Jose eh pai de Geisa
progenitor(jose,andre).  % Jose eh pai de Andre
progenitor(jose,victor).  % Jose eh pai de Victor
progenitor(jose,texa).  % Jose eh pai de Texa
progenitor(jose,odda).  % Jose eh pai de Odda%Familia pai Odah
%Arvore de Andreia Semedo
progenitor(alice,mario). %Alice � m�e de Mario;
progenitor(alice,orlando). %Alice � m�e de Orlando;
progenitor(alice,nanda). %Alice � m�e de Nanda;
progenitor(alice,tuja). %Alice � m�e de Tuja;
progenitor(alice,dade). %Alice � m�e de Dade;
progenitor(alice,graca). %Alice � m�e de Gra�a;
progenitor(alice,jaime). %Alice � m�e de Jaime;
progenitor(juliana,juizino). %Juliana � m�e de Juizino;
progenitor(juliana,felomena). %Juliana � m�e de Felomena;
progenitor(juliana,nelson). %Juliana � v de Nelson;
progenitor(juliana,ze). %Juliana � m�e de Ze;
progenitor(juliana,ilizio). %Juliana � m�e de Ilisio;
progenitor(juliana,berta). %Juliana � m�e de Berta;
progenitor(ana,yalmer). %Ana � m�e de Yalmer;
progenitor(ana,luce). %Ana � m�e de Luce;
progenitor(ana,lene). %Ana � m�e de Lene;
progenitor(ana,wilson). %Ana � m�e de Wilson;
progenitor(ana,sonia). %Ana � m�e de Sonia;
progenitor(isaura,pedro). %Isaura � m�e de Pedro;
progenitor(isaura,camilo). %Isaura � m�e de Camilo;
progenitor(isaura,sofia). %Isaura � m�e de Sofia;
progenitor(isaura,nivaldo). %Isaura � m�e de Nivaldo;
progenitor(isaura,nayra). %Isaura � m�e de Nayra;
progenitor(isaura,nayla). %Isaura � m�e de Nayla;
progenitor(tuja,samy). %Tuja � m�e de Samy;
progenitor(tuja,marcio). %Tuja � m�e de Marcio;
progenitor(tuja,samuel). %Tuja � m�e de Samuel;
progenitor(merce,salamite). %Merce � m�e de Salamite;
progenitor(raquel,dovane). %Raquel � m�e de Dovane;
progenitor(graca,marcos). %Gra�a � m�e de Marcos;
progenitor(graca,sara). %Gra�a � m�e de Sara;
progenitor(graca,marito). %Gra�a � m�e de Marito;
progenitor(indira,jilson). %Indira � m�e de Jilson;
progenitor(berta,nicacio). %Berta � m�e de Nicacio;
progenitor(berta,alex). %Berta � m�e de Alex;
progenitor(berta,andreia). %Berta � m�e de Andreia;
progenitor(berta,nidiane). %Berta � m�e de Nidiane;
progenitor(isabel,zedina). %Isabel � m�e de Zedina;
progenitor(isabel,liliana). %Isabel � m�e de Liliana;
progenitor(isabel,marcia). %Isabel � m�e de Marcia;
progenitor(isabel,djanina). %Isabel � m�e de Djanina;
progenitor(isabel,armandine). %Isabel � m�e de Armandine;
progenitor(isabel,romario). %Isabel � m�e de Romario;
progenitor(lisita,elga). %Lisita � m�e de Elga;
progenitor(lisita,nick). %Lisita � m�e de Nick;
progenitor(suzana,maneiva). %Suzana � m�e de Maneiva;
progenitor(felomena,bruno). %Felomena � m�e de Bruno;
progenitor(felomena,nuno). %Felomena � m�e de Nuno;
progenitor(lucia,livia). %Luce � m�e de Livia;
progenitor(lucia,lucas). %Luce � m�e de Lucas;
progenitor(nuria,danielson). %Nuria � m�e de Danielson;
progenitor(paloma,sofia). %Paloma � m�e de Sofia;
progenitor(paloma,marlice). %Paloma � m�e de Marlice;
progenitor(paloma,melany). %Paloma � m�e de Melany;
progenitor(sofia,marlene). %Sofia � m�e de Marlene;
progenitor(marlice,jailson). %Marlice � m�e de Jailson;
progenitor(melany,lenira). %Melany � m�e de Lenira;
progenitor(melany,edu). %Melany � m�e de Edu;
progenitor(diva,dayla). %Diva � m�e de Dayla;
progenitor(nayra,patricia). %Nayra � m�e de Patricia;
progenitor(nayra,jovane). %Nayra � m�e de Jovane;
progenitor(nayra,lucas). %Nayra � m�e de Lucas;
progenitor(nayla,flavia). %Nayla � m�e de Flavia;
progenitor(nayla,davy). %Nayla � m�e de Davy;
progenitor(tairine,ticiane). %Tairine � m�e de Ticiane;
progenitor(salamite,sara). %Salamite � m�e de Sara;
progenitor(salamite,matias). %Salamite � m�e de Matias;
progenitor(ivone,tiago). %Ivone � m�e de Tiago;
progenitor(ivone,taica). %Ivone � m�e de Tai�a;
progenitor(suzilene,nicole). %Suzilene � m�e de Nicole;
progenitor(leona,laura). %Leona � m�e de Laura;
%Arvore de Dany Vieira
progenitor(zerlina, daniela). %Zerlina � m�e de Daniela;
progenitor(zerlina, dany). %Zerlina � m�e de Dany;
progenitor(zerlina, leizily). %Zerlina � m�e de Leizily;
progenitor(bety, adriana). %Bety � m�e de Adriana;
progenitor(bety, joao). %Bety � m�e de Joao;
progenitor(josefa, josy). %Josefa � m�e de Josy;
progenitor(maria, daniel). %Maria � m�e de Daniel;
progenitor(maria, cesar). %Maria � m�e de C�sar;
progenitor(maria, josefa). %Maria � m�e de Josefa;
progenitor(luisa, zerlina). %Luisa � m�e de Zerlina;
%Familia mae Mayra
progenitor(joia,zeca). %Joia mae de Zeca
progenitor(joia,vitor). %Joia mae de Vitor
progenitor(joia,emilia). %Joia mae de Emilia
progenitor(joia,chila). %Joia mae de Chila
progenitor(josefa,agustinho). %Josefa mae de Agustinho
progenitor(domingas,maria). %Domingas mae de Maria
progenitor(domingas,palinha). %Domingas mae de Palinha
progenitor(domingas,idalina). %Domingas mae de Idalina
progenitor(domingas,jose). %Domingas mae de Jose
progenitor(domingas,fatima). %Domingas mae de Fatima
progenitor(candinha,vinda). %Candinha mae de Vinda
progenitor(fatinha,domingas). %Fatinha mae de Domingas
progenitor(fatinha,candinha). %Fatinha mae de Candinha
progenitor(fatima,carminha). %Fatima mae de Carminha
progenitor(fatima,carla). %Fatima mae de Carla
progenitor(fatima,adnilson). %Fatima mae de Adnilson
progenitor(fatima,andre). %Fatima mae de Andre
progenitor(fatima,adiana). %Fatima mae de Adiana
progenitor(fatima,aldir). %Fatima mae de Aldir
progenitor(fatima,josienne). %Fatima mae de Josienne
progenitor(cesaltina,tatiana). %Cesaltina mae de Tatiana
progenitor(cesaltina,odair). %Cesaltina mae de Odair
progenitor(cesaltina,safira). %Cesaltina mae de Safira
progenitor(filo,yara). %Filo mae de Yara
progenitor(filo,flaviana). %Filo mae de Flaviana
progenitor(filo,eridanny). %Filo mae de Eridanny
progenitor(lili,zequinha). %Lili mae de Zequinha
progenitor(lili,liliane). %Lili mae de Liliane
progenitor(carminha,diego). %Carminha  mae de Diego
progenitor(carminha,darcio). %Carminha  mae de Darcio
progenitor(carminha,kyana). %Carminha  mae de Kyana
progenitor(carminha,kyara). %Carminha  mae de Kyara
progenitor(carla,mayra). %Carla mae de Mayra
progenitor(carla,gabriela). %Carla mae de Gabriela
progenitor(adiana,edivaldo).% mae de AnaRosa
progenitor(agusta,anisita). %Agusta mae de Anisita
progenitor(agusta,mariaJose). %Agusta mae de MariaJose
progenitor(agusta,mariaFernanda). %Agusta mae de MariaFernanda
progenitor(goia,jaque). %Goia mae de Jaque
progenitor(goia,lilhane). %Goia mae de Lilhane
progenitor(goia,adilson). %Goia mae de Adilson
progenitor(goia,rafael). %Goia mae de Rafael
%Fmilia mae Odah
progenitor(maria,carmen). % maria eh mae de carmen
progenitor(maria,dilce).  % maria eh mae de Dilce
progenitor(maria,sila).   % maria eh mae de Sila
progenitor(maria,geisa).   % maria eh mae de Geisa
progenitor(maria,andre).  % maria eh mae de Andre
progenitor(maria,victor).  % maria eh mae de Victor
progenitor(maria,texa).  % maria eh mae de Texa
progenitor(maria,odda).  % maria eh mae de Odda
progenitor(carmen,kamile). % carmen eh mae de kamile
progenitor(dilse,zesinho). % dilce eh mae de zesinho
progenitor(dilse,kedilson). % dilce eh mae de kedilson
progenitor(dilse,kelton). % dilce eh mae de kelton
progenitor(dilse,nicolas). % dilce eh mae de nicolas
progenitor(sila,cileidy). % sila eh mae de cileidy
progenitor(sila,enzo). % sila eh mae de enzo
progenitor(geisa,admar). % geisa eh mae de admar
progenitor(geisa,jeyson). % geisa eh mae de jeyson


%Pesquisas:
mae(X,Y):-progenitor(X,Y),sexo(X,feminino).
pai(X,Y):-progenitor(X,Y),sexo(X,masculino).
filho(X,Y):-progenitor(Y,X),sexo(X,masculino).
filha(X,Y):-progenitor(Y,X),sexo(X,feminino).
irmao(X,Y):-progenitor(Z,X),progenitor(Z,Y),X\==Y.
primo(X,Y):-progenitor(Z,X),progenitor(M,Y),irmao(Z,M),sexo(X,masculino),X\==Y.
prima(X,Y):-progenitor(Z,X),progenitor(M,Y),irmao(Z,M),sexo(X,feminino),X\==Y.
tio(X,Y):-irmao(X,Z),progenitor(Z,Y),sexo(X,masculino),X\==Y.
tia(X,Y):-irmao(X,Z),progenitor(Z,Y),sexo(X,feminino),X\==Y.
avo_materno(X,Y):-progenitor(X,Z),progenitor(Z,Y),sexo(X,feminino).
avo_paterno(X,Y):-progenitor(X,Z),progenitor(Z,Y),sexo(X,masculino).
neto(X,Y):-progenitor(Y,Z),progenitor(Z,X),sexo(X,masculino).
neta(X,Y):-progenitor(Y,Z),progenitor(Z,X),sexo(X,feminino).
bisavo_materno(X,Y):-progenitor(X,Z),progenitor(Z,W),progenitor(W,Y),sexo(X,feminino).
bisavo_paterno(X,Y):-progenitor(X,Z),progenitor(Z,W),progenitor(W,Y),sexo(X,masculino).





