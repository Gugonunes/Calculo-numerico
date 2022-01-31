% Use sua implementação do método da eliminação gaussiana para resolver
%o sistema linear Ax = b, sendo Aij =1 / (i + j − 1) e bi = 1 / i, para 
% i, j = 1, · · · , n com
% (a) n = 5
% (b) n = 10 
% (c) n = 20
% (d) n = 50

clc
clear

% Trabalhando com a matriz 5X5

mat = [];
b5 = [];

for i = 1 : 5 %insere os termos na matriz
    for j = 1 : 5
        mat(i, j) = 1 / (i + j - 1);
    end
end

for i = 1 : 5
    b(i) = 1 / i;
end

a = mat;

n=length(b);
for k=1:n-1
  for i=k+1:n
    m(i,k)=a(i,k)/a(k,k);%armazena o valor do alfa
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

disp(a);
disp(x);

% Trabalhando com a matriz 10X10

for i = 1 : 10
    for j = 1 : 10
        mat(i, j) = 1 / (i + j - 1);
    end
end

for i = 1 : 10
    b(i) = 1 / i;
end

a = mat;

n=length(b);
for k=1:n-1
  for i=k+1:n
    m(i,k)=a(i,k)/a(k,k);
    a(i,k)=0;
    for j=k+1:n
    a(i,j)=a(i,j)-m(i,k)*a(k,j);
    end % loop j
  b(i)=b(i)-m(i,k)*b(k);
  end % loop i
end % loop k

for i=n:-1:1
  soma=b(i);
  for k=i+1:n
    soma=soma-a(i,k)*x(k);
  end
  x(i)=soma/a(i,i);
end

disp(a);
disp(x);

% Trabalhando com a matriz 20X20

for i = 1 : 20
    for j = 1 : 20
        mat(i, j) = 1 / (i + j - 1);
    end
end

for i = 1 : 20
    b(i) = 1 / i;
end

a = mat;

n=length(b);
for k=1:n-1
  for i=k+1:n
    m(i,k)=a(i,k)/a(k,k);
    a(i,k)=0;
    for j=k+1:n
    a(i,j)=a(i,j)-m(i,k)*a(k,j);
    end % loop j
  b(i)=b(i)-m(i,k)*b(k);
  end % loop i
end % loop k

for i=n:-1:1
  soma=b(i);
  for k=i+1:n
    soma=soma-a(i,k)*x(k);
  end
  x(i)=soma/a(i,i);
end

disp(a);
disp(x);

% Trabalhando com a matriz 50X50

for i = 1 : 50
    for j = 1 : 50
        mat(i, j) = 1 / (i + j - 1);
    end
end

for i = 1 : 50
    b(i) = 1 / i;
end

a = mat;

n=length(b);
for k=1:n-1
  for i=k+1:n
    m(i,k)=a(i,k)/a(k,k);
    a(i,k)=0;
    for j=k+1:n
    a(i,j)=a(i,j)-m(i,k)*a(k,j);
    end % loop j
  b(i)=b(i)-m(i,k)*b(k);
  end % loop i
end % loop k

for i=n:-1:1
  soma=b(i);
  for k=i+1:n
    soma=soma-a(i,k)*x(k);
  end
  x(i)=soma/a(i,i);
end

disp(a);
disp(x);
