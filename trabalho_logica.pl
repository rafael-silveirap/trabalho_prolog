resolve(Sol) :-
    Sol = academia(_,_,_,_,_),
    % A pessoa que está treinando Peito está exatamente à esquerda de quem tem 68 quilos.
    exatamente_a_esquerda(A,B,Sol),
    treinando(A, peito),
    peso(B, 68),
    % Quem está treinando Tríceps está em algum lugar entre quem tem 32 anos e quem está treinando Bíceps, exatamente nessa ordem.
	algum_lugar_entre(C,D,E,Sol),
    treinando(C, triceps),
    idade(D, 32),
    treinando(E, biceps),
    % Quem está treinando Perna está em uma das pontas.
    uma_das_pontas(F, Sol),
    treinando(F, perna),
    % A pessoa que tem 61 quilos está ao lado de quem está treinando Peito.
    ao_lado(G,H, Sol),
    peso(G, 61),
    treinando(H, peito),
    % Quem está treinando Tríceps está exatamente à direita da pessoa com a camiseta Amarela.
    exatamente_a_direita(I,J, Sol),
    treinando(I, triceps),
    camiseta(J, amarela),
    %O segundo aparelho está sendo usado pela pessoa de 72 quilos.
    segundo(K, Sol),
    peso(K, 72),
    %A pessoa de 79 quilos está no aparelho de uma das pontas.
    uma_das_pontas(L, Sol),
    peso(L, 79),
    %O Economista pesa 68 quilos.
    membro(M, Sol),
    profissao(M, economista),
    peso(M, 68),
    % A pessoa da camiseta Azul está em algum lugar à esquerda do que tem 27 anos.
    algum_lugar_a_esquerda(N, O, Sol),
    camiseta(N, azul),
    idade(O, 27),
    % Quem está treinando Ombro está ao lado de quem tem 26 anos.
    ao_lado(P, Q, Sol),
    treinando(P, ombro),
    idade(Q, 26),
    % O Engenheiro está ao lado de quem tem 32 anos.
    ao_lado(R, S, Sol),
    profissao(R, engenheiro),
    idade(S, 32),
    % O terceiro aparelho está sendo usado pela pessoa de 26 anos.
    terceiro(T, Sol),
    idade(T, 26),
    % O mais jovem está em uma das pontas.
    uma_das_pontas(U, Sol),
    idade(U, 22),
    % O Advogado está de camiseta Branca.
    membro(V, Sol),
    profissao(V, advogado),
    camiseta(V, branca),
    % O Estudante está treinando Peito.
    membro(W, Sol),
    profissao(W, estudante),
    treinando(W, peito),
    % Sato tem 85 quilos.
    membro(Z, Sol),
    nome(Z, sato),
    peso(Z, 85),
    % Vinicius está em uma das pontas.
    uma_das_pontas(Z1, Sol),
    nome(Z1, vinicius),
    % Josué está usando uma camiseta Amarela.
    membro(Z2, Sol),
    nome(Z2, josue),
    camiseta(Z2, amarela),
    % Quem está usando a camiseta Amarela está em algum lugar entre a pessoa de 79 quilos e o Fausto, exatamente nessa ordem.
    algum_lugar_entre(Z3, Z4, Z5, Sol),
    camiseta(Z3, amarela),
    peso(Z4, 79),
    nome(Z5, fausto),
    % Sato está ao lado do Vinicius.
    ao_lado(Z6, Z7, Sol),
    nome(Z6, sato),
    nome(Z7, vinicius),
    % Tiago está em uma das pontas.
    uma_das_pontas(Z8, Sol),
    nome(Z8, tiago),
    % A pessoa de camiseta Amarela está treinando em algum lugar entre o Tiago e o Advogado, exatamente nessa ordem.
    algum_lugar_entre(Z9, Z10, Z11, Sol),
    camiseta(Z9, amarela),
    nome(Z10, tiago),
    profissao(Z11, advogado),
    % A pessoa de camiseta Amarela está treinando em algum lugar entre quem está usando a camiseta Verde e o Vinicius, exatamente nessa ordem.
	algum_lugar_entre(Z12, Z13, Z14, Sol),
    camiseta(Z12, amarela),
    camiseta(Z13, verde),
    nome(Z14, vinicius),
    % fechamento
    membro(Z15, Sol),
    camiseta(Z15, vermelha),
    membro(Z16, Sol),
    profissao(Z16,programador),
    membro(Z17, Sol),
    idade(Z17, 24).


membro(X,academia(X,_,_,_,_)).
membro(X,academia(_,X,_,_,_)).
membro(X,academia(_,_,X,_,_)).
membro(X,academia(_,_,_,X,_)).
membro(X,academia(_,_,_,_,X)).

segundo(X, academia(_,X,_,_,_)).
terceiro(X, academia(_,_,X,_,_)).

camiseta(pessoa(X,_,_,_,_,_),X).
nome(pessoa(_,X,_,_,_,_),X).
profissao(pessoa(_,_,X,_,_,_),X).
idade(pessoa(_,_,_,X,_,_),X).
peso(pessoa(_,_,_,_,X,_),X).
treinando(pessoa(_,_,_,_,_,X),X).

ao_lado(X,Y,academia(X,Y,_,_,_)).
ao_lado(X,Y,academia(Y,X,_,_,_)).
ao_lado(X,Y,academia(_,X,Y,_,_)).
ao_lado(X,Y,academia(_,Y,X,_,_)).
ao_lado(X,Y,academia(_,_,X,Y,_)).
ao_lado(X,Y,academia(_,_,Y,X,_)).
ao_lado(X,Y,academia(_,_,_,X,Y)).
ao_lado(X,Y,academia(_,_,_,Y,X)).

uma_das_pontas(X,academia(X,_,_,_,_)).
uma_das_pontas(X,academia(_,_,_,_,X)).

algum_lugar_a_direita(X,Y,academia(Y,X,_,_,_)).
algum_lugar_a_direita(X,Y,academia(Y,_,X,_,_)).
algum_lugar_a_direita(X,Y,academia(Y,_,_,X,_)).
algum_lugar_a_direita(X,Y,academia(Y,_,_,_,X)).
algum_lugar_a_direita(X,Y,academia(_,Y,X,_,_)).
algum_lugar_a_direita(X,Y,academia(_,Y,_,X,_)).
algum_lugar_a_direita(X,Y,academia(_,Y,_,_,X)).
algum_lugar_a_direita(X,Y,academia(_,_,Y,X,_)).
algum_lugar_a_direita(X,Y,academia(_,_,Y,_,X)).
algum_lugar_a_direita(X,Y,academia(_,_,_,Y,X)).

algum_lugar_a_esquerda(X,Y,Academia) :-
    algum_lugar_a_direita(Y,X,Academia).
    
exatamente_a_esquerda(X,Y,academia(X,Y,_,_,_)).
exatamente_a_esquerda(X,Y,academia(_,X,Y,_,_)).
exatamente_a_esquerda(X,Y,academia(_,_,X,Y,_)).
exatamente_a_esquerda(X,Y,academia(_,_,_,X,Y)).

exatamente_a_direita(X,Y,Academia) :-
   exatamente_a_esquerda(Y,X,Academia).

algum_lugar_entre(X,Y,Z,academia(Y,X,Z,_,_)).
algum_lugar_entre(X,Y,Z,academia(Y,X,_,Z,_)).
algum_lugar_entre(X,Y,Z,academia(Y,X,_,_,Z)).
algum_lugar_entre(X,Y,Z,academia(Y,_,X,Z,_)).
algum_lugar_entre(X,Y,Z,academia(Y,_,X,_,Z)).
algum_lugar_entre(X,Y,Z,academia(Y,_,_,X,Z)).
algum_lugar_entre(X,Y,Z,academia(_,Y,X,Z,_)).
algum_lugar_entre(X,Y,Z,academia(_,Y,X,_,Z)).
algum_lugar_entre(X,Y,Z,academia(_,Y,_,X,Z)).
algum_lugar_entre(X,Y,Z,academia(_,_,Y,X,Z)).


