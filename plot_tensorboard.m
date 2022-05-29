clear
clc
close
real = importdata("reward.csv");
% real = load('reward.csv');
real = real.data;
last = 0.097;
weight = 0.02;
all_len = length(real(:,1));
tmp = [];
for i = 1:all_len
   smoothed_val = last * weight + (1 - weight) * real(i,3);
   last = smoothed_val;
   tmp = [tmp,smoothed_val];
end
plot(1:length(real),tmp);
% axis([0 21200,-0.02,0.1])
xlabel('\it\fontname{Times New Roman}steps','FontSize',9) 
ylabel('\it\fontname{Times New Roman}reward','FontSize',9) 
set(gca,'LooseInset',get(gca,'TightInset'))
