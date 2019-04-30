function tj_invoicetitle
% 折线图和直方图一起显示
h0=figure('toolbar','none','position',[200 150 450 350],'name','企业抬头每日走势');
% total=[57871212 60920029 62995207 64382457 65285056 66763643];
% delat=[3148817 3048817 2075178 1387250 902599 1478587];
% 为了美观，以万为单位
total=[5787 6092 6299 6438 6528 6676 6731 6790];
delat=[314 304 207 138 90 147 55 59];
% t=0422:0427;
t = (4.22:0.01:4.26)';
t2 = (4.28:0.01:4.30)';
t = [t;t2];
% bar绘制直方图
h4=bar(t,total,'c');
% P=polyfit(t,total,10);
% xi=4.22:0.01:4.29;
% yi=polyval(P,xi);
% plot(xi,yi,t,total,'r*');
xlabel('日期');
ylabel('抬头总量（单位：万）');
% gca返回当前axes对象的句柄值
h1=gca;
h2=axes('position',get(h1,'position'));
plot(t,delat,'b','linewidth',2)
% 设置句柄为h2的图形对象指定属性
set(h2,'yaxislocation','right','color','none','xticklabel',[]) 
title('每日企业抬头情况');
legend(h2,'每日增量趋势');
% grid on
% saveas(h0,'企业抬头数据日K.png')