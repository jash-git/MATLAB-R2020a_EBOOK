clear all 
clc
x1=[29.8 27.6 28.3 27.9 30.1 28.7 29.9 28.0 27.9 28.7];
x2=[28.4 27.2 29.5 28.5 28.0 30.0 29.1 29.8 29.6 26.9];
x=[x1 x2]';
[p,pci]=mle('norm',x,0.05)
