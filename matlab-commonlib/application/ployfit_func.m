% 多项式拟合polyfit
t = (4.22:0.01:4.26);
t2 = (4.28:0.01:4.3);
t = [t,t2];
y=[5787 6092 6299 6438 6528 6676 6731 6790];
P=polyfit(t,y,10);
xi=4.22:0.1:4.3;
yi=polyval(P,xi);
plot(xi,yi,t,y,'r');
% 预测4.31日的总量
predict=polyval(P,4.31);
disp(predict)