function tj_invoicetitle
% ����ͼ��ֱ��ͼһ����ʾ
h0=figure('toolbar','none','position',[200 150 450 350],'name','��ҵ̧ͷÿ������');
% total=[57871212 60920029 62995207 64382457 65285056 66763643];
% delat=[3148817 3048817 2075178 1387250 902599 1478587];
% Ϊ�����ۣ�����Ϊ��λ
total=[5787 6092 6299 6438 6528 6676 6731 6790];
delat=[314 304 207 138 90 147 55 59];
% t=0422:0427;
t = (4.22:0.01:4.26)';
t2 = (4.28:0.01:4.30)';
t = [t;t2];
% bar����ֱ��ͼ
h4=bar(t,total,'c');
% P=polyfit(t,total,10);
% xi=4.22:0.01:4.29;
% yi=polyval(P,xi);
% plot(xi,yi,t,total,'r*');
xlabel('����');
ylabel('̧ͷ��������λ����');
% gca���ص�ǰaxes����ľ��ֵ
h1=gca;
h2=axes('position',get(h1,'position'));
plot(t,delat,'b','linewidth',2)
% ���þ��Ϊh2��ͼ�ζ���ָ������
set(h2,'yaxislocation','right','color','none','xticklabel',[]) 
title('ÿ����ҵ̧ͷ���');
legend(h2,'ÿ����������');
% grid on
% saveas(h0,'��ҵ̧ͷ������K.png')