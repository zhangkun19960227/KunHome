% Lab 2
% Physics 434
% Kun Zhang

% Problem 1
% Background of cosmic-rays follow distribution 
% In 1 day the average cosmic-rays emitted by the hypothetical
% Source 4

% A) Cosmic-rays
% Find Background pdf
x0 = linspace(0, 20, 21)

p0 = poisspdf(x0, 3); 
plot(x0, p0);

num_of_days = 3;
p = p0;
for i = 1:num_of_days -1
    p = conv(p, p0)
end

x = linspace(0, 20*num_of_days, 20*num_of_days + 1)

plot(x, p)


% B) For more days
x0 = linspace(0, 20, 21)

p0 = poisspdf(x0, 3); 
plot(x0, p0);

num_of_days = 5;
p = p0;
for i = 1:num_of_days -1
    p = conv(p, p0)
end

x = linspace(0, 20*num_of_days, 20*num_of_days + 1)

plot(x, p)


% C)
 x1 = linspace(0,100,101);
 % Average 5 days
 p5Days = poisspdf(x1, 5);

 % Average 10 days
 p10Days = poisspdf(x1, 10);

 % Average 20 days
 p30Days = poisspdf(x1, 20);

 % Average 30 days
 p50Days = poisspdf(x1,30);

 % Plotting distributions
 plot(x1,p5Days)
 plot(x1,p10Days)
 plot(x1,p20Days)
 plot(x1,p30Days)

 legend('5 days','10 days','20 days','30 days')
 % It becomes to normal distribution as the average days increases, 
 % According to central limit theorem, if there is more trials
 % then a distribution will converge to Gaussian distribution. So, as
 % we average more days, the distribution becomes normal distribution.

 %%% D) Number of days: N = 5
 % Gamma rays from the source: Y*N = 4 * 5 = 20
 poissCosRays = makedist("Poisson",'lambda',background1);
 pGammaRays = 1 - cdf(poissCosRays, 20)
 sigmaGammaRays = icdf('Normal',1-pGammaRays,0,1)
 
 
 % Problem 2

 x2 = linspace(0,100,101);
 % As average more intervals from 1 to 30 
 r1 = raylpdf(x2,1);
 r10 = raylpdf(x2,10);
 r20 = raylpdf(x2,20);
 r30 = raylpdf(x2,30);

 % Plotting Distribution
 plot(x2,r1)
 hold on
 plot(x2,r10)
 plot(x2,r20)
 plot(x2,r30)

 legend('1','10','20','30')
 hold off
 
 % It approaches a Gaussian distribution as average more intervals
 % After 10 intervals
 
 
 % Problem 3
 % Version 1
 
 % A)
 % Width: x = 10
 % Signal of strength: Y = 50
 % Mean = 0
 % Standard deviation = 20
 % What is the probability of finding a signal of strength 50 from the
 % background Gaussian distribution with the width of 10?
 x3 = linspace(-50,50,100);
 normCCD = makedist("Normal","mu",0,"sigma",20);
 plot(x3,pdf(normCCD,x3))
 sigmaCCD= icdf('Normal',cdf(normCCD,50),0,1)
 % the probability of finding a signal of strength 50 from the background 
 % Gaussian distribution with the width of 10 is 2 so is hard to tell the 
 % Discovery
 
 
 % Version 2
 % B)
 
 % I'm not sure about this one but I think the probability distribution of 
 % The background will still be a Gaussian distribution
 
 
 % C)
 pixel = 10000;
 normCCD2 = pdf(normCCD1,x3)*pixel;
 plot(normCCD2)
 nCCD2 = makedist("Normal","mu",50,"sigma",20);
 x4 = linspace(0,100,100);
 plot(x4,pdf(nCCD2,x4))
 sigmaCCD2= icdf('Normal',cdf(nCCD2,50),0,1)
 
 
 % Problem 4

 % A) 
 % What is the strength of a signal that produces 5 sigma?
 % sigmaV1 = norminv([0.0000003,0.9999997])
 sigmaCCDV1 = icdf('Normal',cdf(normCCD1,100),0,1)
 % The strength of 100 signal is required to get 5 sigma.

 % B)
 sigmaCCD2V1= icdf('Normal',cdf(nCCD2,200),0,1)
 % A strength of 200 signal is required to get 5 sigma.

 % C) 
 % The signal must be +100 brighter to get if we have a trials factor of 10k
 
 % D)
 % The effect on my 5-sigma sensitivity threshold will be 100 times larger
 % Than before
 
 
 % Extra Credit)
 % Because it is not a gaussian distribution anymore so it is not symmetric
 % with the mean so the sensitivity penalty of many trials will decrease
 % than the gaussian distribution

