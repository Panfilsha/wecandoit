Ca=[1/5 1/5 1/5 1/5 1/5]; 
Ma=length(Ca);

Cb=[1/8 1/4 1/8 0 -1/8 -1/4 -1/8]; 
Mb=length(Cb);

figure

subplot(4,2,1) 
stem(Ca); 
title('Фильтр a'); 

subplot(4,2,2)
stem(Cb);
title('Фильтр b');


Fd=250;
T=1/Fd;
f=0:Fd/2; 

Ha=abs(1/5+2/5*cos(2*pi*f*T)+2/5*cos(4*pi*f*T)); 
subplot(4,2,3) 
plot(f,Ha) % График АЧХ (a)
title('График АЧХ (a)');

Hb=abs(1/4*cos(2*pi*f*T)+1/2*cos(4*pi*f*T)+1/4*cos(6*pi*f*T)); 
subplot(4,2,4) 
plot(f,Hb) % График АЧХ (b)
title('График АЧХ (b)');


N=20; 
for n=1:N; 
X(n)=0; 
end
X(10)=1; 
Y=zeros(1,N); 

for n=Ma:N 
Y(n)=1/5*X(n)+1/5*X(n-1)+1/5*X(n-2)+1/5*X(n-3)+1/5*X(n-4);
end
subplot(4,2,5) 
stem(X,'.') % График входной последовательности
hold on
stem(Y,'r') % График выходной последовательности
title('Импульсные характеристики фильтра a');


for n=Mb:N 
Y(n)=1/8*X(n)+1/4*X(n-1)+1/8*X(n-2)+0-1/8*X(n-4)-1/4*X(n-5)-1/8*X(n-6);
end
subplot(4,2,6) 
stem(X,'.') % График входной последовательности
hold on
stem(Y,'r') % График выходной последовательности
title('Импульсные характеристики фильтра b');









