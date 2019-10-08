%Simple Statistics 
clear; close all; clc;

%% Getting started: 
d = random('Normal', 5., 0.01, [1,100000]);
histogram(d,50,'DisplayStyle',"stairs",'LineWidth',3)
xlim([4.95,5.05])


histogram(d,50,'DisplayStyle',"stairs",'LineWidth',3,"Normalization","pdf")
hold on 
x = linspace(4.95,5.05,1000);
pd = makedist("Normal","mu",5.,"sigma",0.01);
plot(x,pdf(pd,x),"LineWidth",2);
set(gca,'YScale','log')