close all
clear all
clc
A=load('data.txt');
P=[A(:,1),A(:,2)];
[m,n]=size(A)
C=zeros(n-2,1);
for i=3:1:n
   Q=[A(:,1),A(:,i)];
   C(i-2,1)=DiscreteFrechetDist(P,Q)    
end
fid=fopen('C:\Users\Marvin\Desktop\freche.txt','w');
fprintf(fid,'%f\n',C);
fclose(fid);
[x,y]=find(C==min(min(C)))
plot(A(:,1),A(:,2),A(:,1),A(:,x+2));
xlabel('time');
ylabel('temperature')
legend('原始曲线','拟合曲线')
disp('最小距离=');
disp(C(x,y))