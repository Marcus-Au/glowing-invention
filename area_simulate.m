clc
clear all
close all
clc
A=load('C:\Users\Marvin\Desktop\M\data.txt');
B=A'
x=B(1,:);
y1=B(2,:);
y2=B(3,:);
s1=area_d(x,y1,y2);
subplot(2,2,1)
plot(x,y1,x,y2)
legend('原始曲线','拟合曲线1')
grid on
subplot(2,2,2)
plot(x,s1)
title('面积差')
grid on
%% 

y2=B(4,:);
s2=area_d(x,y1,y2);
subplot(2,2,3)
plot(x,y1,x,y2)
legend('原始曲线','拟合曲线2')
grid on
subplot(2,2,4)
plot(x,s2)
title('面积差')
grid on
figure(2)
plot(x,s1,x,s2)
grid on
C=[x',s1,s2]
filename = 'c:\users\marvin\desktop\M\testdata.xlsx';
xlswrite(filename,C)
disp('caculation has done')
