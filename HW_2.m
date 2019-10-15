%1
% The probability of getting snake eyes is (1/6)*(1/6) = 1/36 and the
% probability of getting sum seven is (1/6)*(1/6)*6 = 1/6. So getting snake
% eyes are more probable. And the ratio of probability is (1/36)/(1/6) =
% 1/6.


%2
%The probability of getting sum equals to 1 is 0%. The probability of 
%getting sum equals to 2 is (1/6)*(1/6) = 1/36. The probability of 
%getting sum equals to 3 is (1/6)*(1/6)*2 = 1/18. The probability of 
%getting sum equals to 4 is (1/6)*(1/6)*3 = 1/12. The probability of 
%getting sum equals to 5 is (1/6)*(1/6)*4 = 1/9. The probability of getting
%sum equals to 6 is (1/6)*(1/6)*5 = 5/36. The probability of getting sum 
%equals to 7 is (1/6)*(1/6)*6 = 1/6. The probability of getting sum equals
%to 8 is (1/6)*(1/6)*5 = 5/36. The probability of getting sum equals to 9 
%is (1/6)*(1/6)*4 = 1/9. The probability of getting sum equals to 10 is 
%(1/6)*(1/6)*3 = 1/12. The probability of getting sum equals to 11 is (1/6)*
%(1/6)*2 = 1/18. The probability of getting sum equals to 12 is (1/6)*(1/6)
%= 1/36. The probability of getting sum equals to 13 is 0. 

%So the graph is a normal gaussian distribution and the mean is 7.
%The x-axis on histogram is the number of the sum of two dices.

x = linspace(0,13,100);
gaus = makedist("Normal",'mu',7,'sigma',2); 
subplot(1,2,2)
plot(x,pdf(gaus,x),"LineWidth",4);
set(gca,'YScale','log')


%3
%The mean is 7 and the variance of it is [0,13]. 


%4
%The graph of average of 10 dices is a non-symmetric graph and it is
%definitly not a gaussian distribution. The probability of getting small
%number (average) is way larger than the probability of getting big number
%(average) and the distribution of getting different number does not fit a
%gaussian graph because it is not symmetric. 


%5
%It is pretty simple to explain that the sum of an initial gaussian
%distribution is also a gaussian distribution. We add two gaussian
%distributions up and get another graph. The numbers of y-axis may change
%but it is still a gaussian distribution graph and the mean will not change
%also. Same with the average one. 