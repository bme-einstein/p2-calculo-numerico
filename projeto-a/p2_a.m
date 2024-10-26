clear all
close all
clc

columns_names = {'MDVP:Fo(Hz)', 'MDVP:Fhi(Hz)', 'MDVP:Flo(Hz)', ...
                 'MDVP:Jitter(%)', 'MDVP:Jitter(Abs)', 'MDVP:RAP', ...
                 'MDVP:PPQ', 'MDVP:Shimmer', 'MDVP:Shimmer(dB)', ...
                 'MDVP:APQ'};
data = csvread('parkinson_mdvp.csv');

# removendo a linha com strings dos títulos
data(1, :) = []

# início dos gráficos de dispersão dois a dois para verificação das relações
# esses gráficos são para vocês terem algum código inicial, não é obrigatório utiliza-los.
num_columns = length(columns_names);

status_0 = data(data(:, end) == 0, 1:end-1);
status_1 = data(data(:, end) == 1, 1:end-1);

for ii = 1:num_columns-1
    figure;
    scatter(status_1(:, ii), status_1(:, ii+1), 'b', 'x'); % Blue crosses for status 1
    hold on;
    scatter(status_0(:, ii), status_0(:, ii+1), 'r', 'o'); % Red circles for status 0
    xlabel(columns_names{ii});
    ylabel(columns_names{ii+1});
    title(['Scatter plot of ', columns_names{ii}, ' vs ', columns_names{ii+1}]);
    legend('Status 0 - Sem Parkinson', 'Status 1 - Com Parkinson');
    grid on
    hold off;
end

### início do código da prova (fique à vontade para comentar o código de plots dos scatters)


