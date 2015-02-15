%
% This data was taken from the matlab plotting example
% Read about the <http://www.mathworks.com/help/matlab/ref/plot.html |plot|> function in the MATLAB documentation.
% Copyright 2012-2014 The MathWorks, Inc.

%load the data from the Excel sheet to Matlab
[num,text] = xlsread('stocks.xls');

%Get first column as time
time = num(:,1);

%get other columns as our Data
values = num(:,2:7);

plot(dates, values)

% Use dateticks for the x axis
datetick('x')

% Add title and axis labels
xlabel('Date')
ylabel('Index Value')
title('Relative Daily Index Closings')

% Add a legend in the top, left corner
legend(text, 'Location', 'NorthWest')