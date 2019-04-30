function demo03
% 画出多条曲线
h0=figure('toolbar','none','position',[200 150 450 350],'name','实例03');
x=-pi:0.05:pi;
y1=sin(x);
y2=cos(x);
plot(x,y1,'-*r',x,y2,'--og');
grid on
xlabel('自变量X');
ylabel('函数值Y');
title('三角函数');

saveas(h0,'03_多个plot.png')