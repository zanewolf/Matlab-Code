function [t_stat import ] = t_test( data1, data2 )
mean1=mean(data1); %get the means
mean2=mean(data2);
diff1=[]; %initialize variables...
diff2=[];
% compute the difference between the 
% data points and the data mean, square result
for j=1:length(data1)
    diff1=[diff1 (data1(j)-mean1).^2]; 
    diff2=[diff2 (data2(j)-mean2).^2];
end
%get the standard deviation by computing the sum of the diffs and dividing
%by the number of elements minus 1. 

stddev=sum(diff1)./(length(diff1)-1) ;
stddev2=sum(diff2)./(length(diff2)-1);

%calculate the standard error via the given equation
SEM=sqrt(((stddev)./length(data1))+((stddev2)./length(data2)));
%calculate the t-statistic via the given equation
t_stat=abs(mean1-mean2)./SEM;
%determine the degree of freedom for table reference
degF=length(data1)-1;
%open the table
[num text raw]=xlsread('t_table.xls');
%find the row needed
[r c]=size(num);
row=0;
for k=1:r
    if degF==num(k,1)
        row=k;
    end
end
%compare the probabilities...
if t_stat>=num(row, 4)
    import='The difference in the means is very highly significant.';
elseif t_stat>=num(row,3)& t_stat<=num(row, 4)
    import='The difference in the means is highly significant.';
elseif t_stat>=num(row, 2) & t_stat<num(row, 3)
    import='The difference in the means is significant.';
elseif t_stat>num(row, 2)
    import='The difference in the means is not significant.';
end
 
% t_test function to perform a t_test between two data vectors. 
% A t_test determines whether there is any major difference between
% the two data sets. This function will perform the t_test and output
% the t-statistic, found via this formula: 

% t = abs(x1_bar - x2_bar)/SEM
%
%   where x1_bar is the mean of the first sample, x2_bar is the mean of the
%   second sample. 

% The SEM used is found via this formula: 
% SEM = sqrt(var1/n1 + var2/n2)
%
%   Here n1 and n2 are the number of data points in the first and second
%   samples, respectively. Similarly, var1 and var2 represent the variance
%   (or standard deviation squared) of both samples.

% Usage: [t_stat import ] = t_test( data1, data2  formula for the t-statistic is as follows:
  

end
