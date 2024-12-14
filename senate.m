%%% MEE428 FINAL PROJECT %%%

clear variables


% network
A=readmatrix("S118 VI.csv");
sz=size(A)

% spectrum of the digraph
% look at the left dominant eigenvector to see where the opinion will go...
[V,D,W]=eig(A);


T=20;
x=zeros(102,T);


% evolution of opinions
%% Purely Partisan
% x(:,1)=[1 -1 1 -1 1 1 -1 -1 -1 1 -1 1 1 -1 1 1 1 -1 -1 1 -1 1 -1 -1 -1 -1 -1 1 1 -1 1 -1 1 -1 -1 -1 1 -1 1 1 1 1 -1 -1 -1 1 1 -1 0 1 -1 -1 1 -1 1 1 -1 -1 1 1 1 -1 -1 -1 1 1 1 1 -1 1 1 -1 -1 -1 1 -1 -1 0 1 -1 1 -1 -1 1 0 1 1 -1 1 -1 -1 -1 1 -1 1 1 1 1 1 -1 1 -1];

%% Transgender
x(:,1)=[1	0	0	-1	1	1	0	-1	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	1	-1	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	1	1	0	0	1	0]

for k=1:T
    x(:,k+1)=A*x(:,k);
end


figure(1); gcf; clf;
plot(x');
%title('Purely Partisan Bill');
title('Bill about Transgender Rights');
