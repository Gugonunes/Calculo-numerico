% Escreva um programa que use o m´etodo da eliminaçãoo gaussiana 
% (triangularização esubstituição regressiva) para resolver o sistema de 
% equações lineares
% 7x1 + 2x2 − 5x3 = −18
% x1 + 5x2 − 3x3 = −40
% 2x1 − x2 − 9x3 = −26


% Primeira parte: triângulando a matriz
clc;

Original = [7, 2, -5;
            1, 5, -3;
            2, -1, -9];
a = Original;
b = [-18; -40; -26];
n = length(b);

n=length(b);
for k = 1 :n - 1
  for i = k + 1 : n
    m(i,k) = a(i,k)/a(k,k);%armazena o valor do alfa
    a(i,k)=0; %zera a linha
    for j=k+1:n
    a(i,j)=a(i,j)-m(i,k)*a(k,j);%atualiza o resto dos valores
    end % loop j
  b(i)=b(i)-m(i,k)*b(k);%atualiza o vetor das respostas
  end % loop i
end % loop k

for i=n:-1:1
  soma=b(i);
  for k=i+1:n
    soma=soma-a(i,k)*x(k);%vai fazendo a "volta" e resolvendo os valores
  end
  x(i)=soma/a(i,i);%insere a resposta
end

disp(Original);
disp(a);
disp(x);