%%
%已知实空间H，计算不同w、v时的本征值，即电子能量
%H=[,;,]是一个大矩阵，描述边界电子行为，
%求特征向量，特征向量就是波函数ψ，特征向量的不同分量表示在不同位置的相对概率大小，平方就是概率密度。
%H有多少维，就会有多少个特征向量（允许特征向量相等），每个特征向量表示一种可能的态。
%参考网站：chatgpt-4omini
clear;
n=200;
w=1.3;
H=zeros(n,n);
pusai=zeros(n,1);
v=1.0;
H=Hamilton(v,w,n);
%以上：为矩阵H赋值。

[V,e]=eig(H);%e为本征值向量，V的每一column代表一种可能的本征向量
%以上：计算v，w=1时的能量E。  

X=1:1:n;
plot(X,V(X,100),'color',[0.85,0.33,0.10]);%注：200个点，选201的原因是，第n/2个（200）特征值对应零能态解，也是边界态，电子聚集在边界，第201就不是了。
ylim([-1,1]);
title('the wavefunction of zero-energy state,200 lattice cells');
xlabel('position of lattice cell i');
ylabel('wavefunction ψ(i)');


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
