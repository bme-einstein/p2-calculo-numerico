clear all
close all
clc

columns_names = {'Sunshine hours',	'Cost bottle of water',	...
                 'Obesity Levels',	'Life expectancy(years)', ...
                 'Pollution(Index score)',	'Annual avg. hours worked',...
                 'Happiness levels(Country)',	'Outdoor activities',...
                 'No. of take out places',	'Monthly gym membership'}

data = csvread('healthy_lifestyle_city_2021_cleaned.csv');

# removendo a linha com strings dos títulos
data(1, :) = [];
# removendo a coluna com strings das cidades
data(:, 1) = [];

# início dos gráficos de dispersão dois a dois para verificação das relações
# esses gráficos são para vocês terem algum código inicial, não é obrigatório utiliza-los.
num_columns = length(columns_names)-2;

class_happy = data(data(:, 7) == 0, 1:end);
class_not_so_happy = data(data(:, 7) == 1, 1:end);

for ii = 1:num_columns-1
    figure;
    scatter(class_happy(:, ii), class_happy(:, ii+1), 'b', 'x'); % Blue crosses for status 1
    hold on;
    scatter(class_not_so_happy(:, ii), class_not_so_happy(:, ii+1), 'r', 'o'); % Red circles for status 0
    xlabel(columns_names{ii});
    ylabel(columns_names{ii+1});
    title(['Scatter plot of ', columns_names{ii}, ' vs ', columns_names{ii+1}]);
    legend('Normal', 'Anormal');
    grid on
    hold off;
end

### início do código da prova (fique à vontade para comentar o código de plots dos scatters)

