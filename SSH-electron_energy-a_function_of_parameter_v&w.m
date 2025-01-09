%%
%已知H(k)，计算不同w、k时的本征值
%求特征值即可
clc;
v_num=300;
v_max=2;
v_min=0;
n=21;
E=zeros(v_num,n);
w=1;
H=zeros(n,n);
for v_i=1:1:v_num
    v=v_min+v_i*(v_max-v_min)/v_num;
    H=Hamilton(v,w,n);
    %以上：为矩阵H赋值。
    e=eig(H);
    E(v_i,:)=e.';
    %以上：计算v，w=1时的能量E。
    find(abs(e)<0.001)%可以发现第10个和第11个（n/2个）本征值为0，能量为0，但是应该是0能态
end

X=linspace(v_min,v_max,v_num);
v_space=1:1:v_num;

plot(X,E(v_space,:));
title('possible energy states of electrons in SSH model , 21 lattice cells');
hold on;
xlabel('v/w');
ylabel('eigenvalues of the Hamiltonian matrix');
hold off;

%哈密顿量赋值函数
function result=Hamilton(v,w,n)
    H=zeros(n,n);
    for k=1:1:(n-1)
        if mod(k,2)==1
            H(k,k+1)=v;
            H(k+1,k)=v;
        else
            H(k,k+1)=w;
            H(k+1,k)=w;
        end
    end
    result=H; 
end
