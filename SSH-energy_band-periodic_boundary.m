%%
%已知动量空间的哈密顿量H表达式（实空间哈密顿量经过傅里叶变换得到）
%此时H是动量k的函数，同时含有参数w和v
%计算E(k)关系，能量E为本征值，波函数ψ为本征向量
%参考：https://wenku.csdn.net/answer/9a421dc075114eb3964155fc8abcedc1
%事实上，能带曲线表达式为：E(k)=sqrt(v^2+w^2+2*v*w*cos(k));
clc;
v=1;
w=0.5;
n=300;%分成n份
E=zeros(n+1,2);
for m=1:1:(n+1)
    k=-3*pi+6*pi/(n)*(m-1);%k从-pi变到pi,分成n份
    e=eig(Hamilton(v,w,k));
    E(m , :)=e
end
m=1:1:(n+1);
plot(m,E(m,:));
ylim([-3,3]);

function H=Hamilton(v,w,k)

   H=[     0   ,   v+w*exp(-1i*k);
      v+w*exp(1i*k),     0    ];
  
end
%？？？为什么这个时候求出来本征值居然是实数？？？？？

