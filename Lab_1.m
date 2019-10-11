%1 

d = random('Normal', 0, 1, [1,100000]);
histogram(d,50,'DisplayStyle',"stairs",'LineWidth',3)
xlim([-5,5])

histogram(d,50,'DisplayStyle',"stairs",'LineWidth',3,"Normalization","pdf")
hold on 
x = linspace(5.95,6.05,1000);
pd = makedist("Normal","mu",6.,"sigma",0.01);
plot(x,pdf(pd,x),"LineWidth",2);
set(gca,'YScale','log')
hold off

%1(B)

erfc(0.69)
normcdf(0.69)
norminv(0.69)
erfcinv(0.69)

%2

%Create a lognormal distribution pdf 
x = linspace(0,10,1000);
logN = makedist("Lognormal",'mu',1.7, 'sigma',0.5);

hold on
%plot the pdf
subplot(2,2,2)
plot(x,pdf(logN,x),"LineWidth",4);
set(gca,'YScale','log')

subplot(2,2,1)
plot(x,pdf(logN,x),"LineWidth",4);

subplot(2,2,3)
plot(x,pdf(logN,x),"LineWidth",4);
set(gca,'XScale','log')
hold off

%3
%If the mean lifetime for human being is 70 years and 1 sigma is 20 years
%What is the probability for living 200 years?
%(200-70)/20 = 7.5sigma
%It is a normal distribution and 1 sigma is 68% and 2 sigma is 95& and 3
%sigma is 99.8%. So 7.5 sigma means that it is impossible to live 200
%years.

x3 = linspace(-70,200,10000);
gaus = makedist("Normal",'mu',70,'sigma',20); 
plot(x3,pdf(gaus,x3),"LineWidth",3);
set(gca,'YScale','log')


%4
%If the mean salary in Seattle per year is 70,000 and 1 sigma is 20,000.
%What is the probability to make 30,000 per year?
%(30,000-70,000)/20,000 = 2sigma
%It is a normal distribution and 1 sigma is 20,000. So the probability of
%making 30,000 per year is 95%

x4 = linspace(0,140000,1000000);
gaus = makedist("Normal",'mu',70000,'sigma',20000); 
plot(x4,pdf(gaus,x4),"LineWidth",3);
set(gca,'YScale','log')

%all the pattern of my hypothesis measurements are normal distribution.
%They are pretty much symmertic of the mean and the probability depends on
%sigma. The pattern of each measurement is not exactly the same but they
%are all bell shape.

%5 Non-continuous distributions
%Binomial

x5 = 0:40;
bin = makedist("Binomial",'N',30, 'p',0.06); 
subplot(1,2,2)
stairs(x5,pdf(bin,x5),"LineWidth",3);
set(gca,'YScale','log')

subplot(1,2,1)
stairs(x5,pdf(bin,x5),"LineWidth",3);

%If the probability of getting x = 0 is 0.3 and getting x = 1 is 0.7. What
%is the probability of getting x = 0.84? 
%The plot be in x = 1 is much higher than x = 0, so it is not a symmetric
%pattern so it is discrete.


             
                


